.class public Lcom/android/launcher3/allapps/view/AppsPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "AppsPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Insettable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;
    }
.end annotation


# static fields
.field static final EXTRA_EMPTY_SCREEN:Ljava/lang/String; = "extra_empty_screen"

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_DELAY_DURATION:I = 0x1e

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field static final TAG:Ljava/lang/String; = "Launcher.AppsPagedView"


# instance fields
.field private mApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mBindPages:Ljava/lang/Runnable;

.field private mCellLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/view/AppsViewCellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mNumAppsPages:I

.field private mOldPageCount:I

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mSaveInstanceStateItemIndex:I

.field private removedScreen:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/launcher3/allapps/view/AppsPagedView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mBindPages:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-boolean v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFadeInAdjacentScreens:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getImportantForAccessibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    :cond_0
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMinScale(F)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v0

    mul-int/lit8 v2, v0, 0x2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsPagedView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f040019

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method private deletablePage(I)Z
    .locals 6

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    move v3, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v4

    instance-of v5, v4, Lcom/android/launcher3/common/view/Removable;

    if-eqz v5, :cond_0

    check-cast v4, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v4}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v5

    if-eqz v5, :cond_0

    add-int/lit8 v3, v3, -0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-gtz v3, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v4, "alpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v4, "backgroundAlpha"

    new-array v5, v7, [F

    aput v8, v5, v6

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$3;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$3;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v6

    aput-object v1, v4, v7

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/android/launcher3/allapps/view/AppsPagedView$4;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView$4;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getAllCellLayoutChildren()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayoutChildren;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getMiddleComponentIndexOnCurrentPage()I
    .locals 7

    const/4 v2, -0x1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    if-lez v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v1

    iget v5, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    if-ge v1, v5, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v6

    mul-int v4, v5, v6

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    mul-int v5, v1, v4

    div-int/lit8 v6, v0, 0x2

    add-int v2, v5, v6

    :cond_0
    return v2
.end method

.method private setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V
    .locals 3

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid position"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-wide p3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    return-void
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v1

    if-ne v1, v2, :cond_1

    :cond_0
    if-eqz p2, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void

    :cond_1
    const/4 v0, 0x4

    goto :goto_0
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_2

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private updatePageAlphaValues(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateDragPageAlphaValues(III)V

    :cond_0
    return-void
.end method

.method private updatePageCounts()V
    .locals 4

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v0, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v3

    mul-int v1, v2, v3

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNumAppsPages:I

    return-void
.end method


# virtual methods
.method public addExtraEmptyScreenOnDrag()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "extra_empty_screen"

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    goto :goto_0
.end method

.method public addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 11

    const/4 v5, 0x1

    const-string v0, "Launcher.AppsPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addItem = title : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , rank : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , screen : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v10, v0, v9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v10, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    div-int v0, v10, v0

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    if-eqz v7, :cond_0

    instance-of v0, v7, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-nez v0, :cond_2

    :cond_0
    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v1, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-direct {v4, v0, v1, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    :goto_0
    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v8

    :goto_1
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    if-gt v8, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_2
    move-object v4, v7

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    goto :goto_0

    :cond_3
    :try_start_0
    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    const/4 v5, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v6

    const-string v0, "Launcher.AppsPagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception in Adding item : mAppsPagedView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", item.screenId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public addItemToLastPosition(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 6

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->findFirstEmptyCell(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    const/4 v2, 0x0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    const-wide/16 v4, -0x66

    iput-wide v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    const/4 v5, 0x0

    invoke-interface {v4, p1, v1, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {p0, v3, p1, v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v4, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_1
    return-void
.end method

.method public addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V
    .locals 9

    const/4 v5, 0x1

    move v8, p3

    move v7, p4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v6

    iput v8, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    int-to-long v0, v7

    iput-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    rem-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    div-int v0, v8, v6

    iput v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput-boolean v5, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    rem-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    div-int v0, v8, v6

    iput v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/Launcher;->getViewIdForItem(Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v3

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    return-void
.end method

.method protected canOverScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clearRemovedScreen()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public commitExtraEmptyScreen()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeMarkerForView(I)V

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_0
.end method

.method public createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage(Ljava/lang/String;)Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    move-result-object v0

    return-object v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/launcher3/util/DvfsUtil;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher3/util/DvfsUtil;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/DvfsUtil;->boostCpuForSupportedModel(I)V

    :cond_0
    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x40200000    # 2.5f

    mul-float/2addr p2, v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v0

    return v0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    return v0
.end method

.method public findAllOccupiedCells(I)[Z
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v7

    new-array v4, v7, [Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v0, :cond_1

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int v7, v6, v0

    add-int/2addr v7, v5

    aget-object v8, v3, v5

    aget-boolean v8, v8, v6

    aput-boolean v8, v4, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-object v4
.end method

.method public findFirstEmptyCell(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findAllOccupiedCells(I)[Z

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget-boolean v2, v1, v0

    if-nez v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getCellCountX()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v0

    return v0
.end method

.method public getCellCountY()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v0

    return v0
.end method

.method public getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public getComingPageForLiveIcon()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    return v0
.end method

.method public getCustomPageCount()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDesiredWidth()I
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getDesiredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingRight()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method public getExtraEmptyScreen()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getExtraEmptyScreenIndex()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemCountPageAt(I)I
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    :cond_0
    return v2
.end method

.method public getMaxItemsPerScreen()I
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v0, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v2

    mul-int/2addr v1, v2

    return v1
.end method

.method public getPageDescription()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    add-int/lit8 v0, v2, 0x1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090031

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method protected getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v1

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v2}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRankForNewItem(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :cond_0
    return v0
.end method

.method public getRemovedScreen()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSaveInstanceStateIndex()I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMiddleComponentIndexOnCurrentPage()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    :cond_0
    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    return v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public hasEmptyCellAtPages()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->isFullyOccupied()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    add-int/lit8 v2, v1, -0x1

    if-lt v0, v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public hasExtraEmptyScreen()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "extra_empty_screen"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected init()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->init()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCenterPagesVertically:Z

    return-void
.end method

.method public isGridState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTidyState()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTouchActive()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisibleAppsGridPanel()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isVisibleGridPanel()Z

    move-result v0

    return v0
.end method

.method public loggingPageCount()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    if-eq v1, v0, :cond_0

    if-lez v0, :cond_0

    iput v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APPS"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method

.method public mapOverItems(ZLcom/android/launcher3/common/base/item/ItemOperator;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getAllCellLayoutChildren()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    const/4 v8, 0x0

    :goto_0
    if-ge v8, v7, :cond_0

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v10, 0x0

    invoke-interface {p2, v5, v6, v10}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-eqz p1, :cond_4

    instance-of v10, v5, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v10, :cond_4

    instance-of v10, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v10, :cond_4

    move-object v3, v6

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/folder/view/FolderView;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-interface {p2, v5, v0, v3}, Lcom/android/launcher3/common/base/item/ItemOperator;->evaluate(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Landroid/view/View;)Z

    move-result v11

    if-eqz v11, :cond_3

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method public mapPointFromSelfToChild(Landroid/view/View;[F)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    aget v0, p2, v2

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v2

    aget v0, p2, v3

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    aput v0, p2, v3

    return-void
.end method

.method protected notifyPageChange(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    :cond_0
    return-void
.end method

.method public onChangeScreenGrid(II)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setGridSize(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayout(Z)V

    return-void
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onConfigurationChangedIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPagePadding()I

    move-result v0

    const v2, 0x7f0a00a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    const v2, 0x7f0a00a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

    mul-int/lit8 v2, v0, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayoutByConfigurationChanged(ZI)V

    return-void
.end method

.method protected onDataReady(II)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageCounts()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postBindPages()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMeasuredDimension(II)V

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->onDataReady(II)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onMeasure(II)V

    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mNextPage:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_0
    return-void
.end method

.method protected onPageEndMoving()V
    .locals 3

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    :cond_0
    invoke-static {}, Lcom/samsung/android/feature/SemGateConfig;->isGateEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GATE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<GATE-M>SCREEN_LOADED_APP_MENU_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</GATE-M>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->initBounceAnimation()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected pageBeginMoving()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageBeginMoving()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateClockLiveIcon()V

    return-void
.end method

.method public postBindPages()V
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->deferToBind()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->requestDeferredRunnables()Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public rearrangeAllViews(Z)V
    .locals 20

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildren()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v15, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/view/View;

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v6

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v17

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz p1, :cond_1

    iget v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    int-to-long v8, v2

    const/16 v10, 0x96

    const/4 v11, 0x0

    check-cast v11, [[Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    goto :goto_1

    :cond_1
    iget v5, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    check-cast v11, [[Z

    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    goto :goto_1

    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_3
    const-string v3, "Launcher.AppsPagedView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rearrangeChildren took : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v12

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeAllPages()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeAllViews()V

    return-void
.end method

.method public removeEmptyScreen()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->deletablePage(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_2
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    :cond_3
    return v0
.end method

.method public removeExtraEmptyScreen()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 5

    const/16 v4, 0x190

    const/16 v3, 0x96

    const/4 v2, 0x0

    if-lez p2, :cond_1

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsPagedView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView$2;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;Ljava/lang/Runnable;)V

    int-to-long v2, p2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    invoke-direct {p0, v4, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    :goto_1
    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateCurrentPageScroll()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(II)V

    invoke-direct {p0, v2, v3, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method public removePageAt(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeScreenToRightSideEndPage(I)V
    .locals 5

    const-string v2, "Launcher.AppsPagedView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeScreenToRightSideEndPage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-lt v1, p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removePageAt(I)V

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isSwithchingInternalState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method restorePageForIndex(I)V
    .locals 0

    if-gez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    goto :goto_0
.end method

.method protected screenScrolled(III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updatePageAlphaValues(III)V

    return-void
.end method

.method public scrollTo(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method protected setFirstLayout(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFirstLayout:Z

    return-void
.end method

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8

    const v4, 0x7f09015c

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901ac

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901aa

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090111

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901a9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method public supportWhiteBg()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateAccessibilityFlags(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-direct {p0, v2, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    return-void

    :cond_2
    const/4 v2, 0x4

    goto :goto_1
.end method

.method public updateBackgroundAndPaddings()V
    .locals 0

    return-void
.end method

.method public updateCheckBox(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_4

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v7, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v7

    if-nez v7, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/folder/view/FolderIconView;->updateCheckBox(Z)V

    move-object v7, v6

    check-cast v7, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshCountBadge(I)V

    :cond_1
    check-cast v6, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshBadge()V

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    instance-of v7, v6, Lcom/android/launcher3/common/view/IconView;

    if-eqz v7, :cond_2

    check-cast v6, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(Z)V

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public updateChildrenLayersEnabled(IZ)I
    .locals 2

    if-ltz p1, :cond_1

    move v0, p1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    :cond_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v0

    goto :goto_0
.end method

.method public updateClockLiveIcon()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getComingPageForLiveIcon()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    instance-of v12, v11, Lcom/android/launcher3/common/view/IconView;

    if-eqz v12, :cond_3

    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v12, :cond_2

    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_2

    check-cast v11, Lcom/android/launcher3/common/view/IconView;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v11, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v12, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    invoke-static {v9}, Lcom/android/launcher3/Utilities;->checkClockPackageName(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method public updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V
    .locals 9

    long-to-int v2, p3

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setItemLocation(Lcom/android/launcher3/common/base/item/ItemInfo;IJ)V

    if-gez p7, :cond_0

    const/16 p7, 0x96

    :cond_0
    iget v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int/2addr v2, v3

    iget v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int/2addr v3, v4

    long-to-int v5, p5

    const/4 v6, 0x1

    const/4 v7, 0x0

    move/from16 v4, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    return-void
.end method

.method public updateLayout(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setCellDimensions()V

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->updateIconViews(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateLayoutByConfigurationChanged(ZI)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateLayout(Z)V

    iput p2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setFirstLayout(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateLiveIcon()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCurrentPage()I

    move-result v10

    const/4 v12, -0x1

    if-ne v10, v12, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v12, v6, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v12, :cond_3

    iget-object v12, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2

    instance-of v12, v11, Lcom/android/launcher3/common/view/IconView;

    if-eqz v12, :cond_2

    move-object v12, v11

    check-cast v12, Lcom/android/launcher3/common/view/IconView;

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12, v6}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    invoke-virtual {v11}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    instance-of v12, v6, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v12, :cond_2

    const/4 v8, 0x0

    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v12

    instance-of v12, v12, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v12, :cond_2

    invoke-virtual {v1, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v7, 0x0

    :goto_2
    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v7, v12, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v5, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    if-eqz v12, :cond_5

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v12

    iget-object v12, v12, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v12, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    iget v12, v5, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    const/16 v13, 0x9

    if-ge v12, v13, :cond_5

    invoke-static {v9}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_2

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->refreshFolderIcon()V

    goto :goto_1

    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_2
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
