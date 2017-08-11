.class public Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;
.super Lcom/samsung/android/settings/SecSettingsPreferenceFragment;
.source "AdditionalInformationSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;,
        Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;
    }
.end annotation


# instance fields
.field private frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private imgView:Landroid/widget/ImageView;

.field private mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

.field private mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

.field private mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mListView:Landroid/widget/ListView;

.field private mMenu:Landroid/view/Menu;

.field private mReorderMode:Z


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    return v0
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$1;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    new-instance v0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings$2;-><init>(Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addFaceList(Ljava/lang/String;)V
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3, p1, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, p1, v0}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getInfo(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v0, :cond_0

    :goto_0
    invoke-virtual {v2, v3, v0, p1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->addItem(Ljava/lang/String;ZLjava/lang/String;)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private configureDragAndDrop(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    if-nez v0, :cond_0

    const v0, 0x7f110399

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;-><init>(Landroid/content/Context;Landroid/widget/ListView;)V

    iput-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndController:Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragAndDropController(Lcom/samsung/android/animation/SemAbsDragAndDropAnimator$DragAndDropController;)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x7f020398

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandleDrawable(I)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    const v1, 0x800005

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePositionGravity(I)V

    return-void
.end method

.method private setReorderMode(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->setReorderMode(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateViewConfiguration()V

    return-void
.end method

.method private updateViewConfiguration()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0501

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    mul-int/2addr v0, v2

    invoke-virtual {v1, v4, v4, v0, v4}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDragGrabHandlePadding(IIII)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mDndAnimator:Lcom/samsung/android/animation/SemDragAndDropListAnimator;

    iget-object v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {v1}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;->getDragEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/animation/SemDragAndDropListAnimator;->setDraggable(Z)V

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    return-void

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private updateVisibilityOfRemoveMenu()V
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    invoke-interface {v3, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v3, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v3, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    return-void
.end method


# virtual methods
.method protected getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setHasOptionsMenu(Z)V

    new-instance v4, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mAdapter:Lcom/samsung/android/settings/lockscreen/FaceWidgetDragAndDropAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string/jumbo v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    const-string/jumbo v6, "servicebox_music;servicebox_calendar;servicebox_alarm"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "face_widget_order"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v4, ";"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    aget-object v4, v0, v2

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->addFaceList(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v4, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x1

    const v2, 0x7f0b09d4

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    invoke-super {p0, p1, p2}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mMenu:Landroid/view/Menu;

    invoke-direct {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->updateVisibilityOfRemoveMenu()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    const/4 v6, 0x0

    iput-object v6, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/view/ViewGroup;

    const v5, 0x7f0400fb

    invoke-virtual {p1, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->configureDragAndDrop(Landroid/view/View;)V

    const-string/jumbo v4, "layout_inflater"

    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v4, 0x7f040025

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v4, 0x7f110125

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    const v5, 0x7f020519

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->imgView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget-object v4, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mListView:Landroid/widget/ListView;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    return-object v3
.end method

.method public onDestroyView()V
    .locals 1

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->frameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :sswitch_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    :cond_1
    return v1

    :sswitch_1
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return v1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x102002c -> :sswitch_1
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onPause()V

    const-string/jumbo v0, "AdditionalInformationSettings"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "FaceWidgets"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->finishFragment()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "FaceWidgets"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string/jumbo v0, "reorderMode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/samsung/android/settings/SecSettingsPreferenceFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    const-string/jumbo v0, "reorderMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->mReorderMode:Z

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/lockscreen/AdditionalInformationSettings;->setReorderMode(Z)V

    return-void
.end method
