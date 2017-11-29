.class public Lcom/android/launcher3/allapps/controller/AppsReorderController;
.super Ljava/lang/Object;
.source "AppsReorderController.java"

# interfaces
.implements Lcom/android/launcher3/allapps/AppsReorderListener;


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field public static final REMOVE_ANIMATION_DURATION:I = 0x96

.field public static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_DEFAULT_DELAY_AMOUNT:I = 0x1e

.field public static final REORDER_LEFT_DIRECTION:I = 0x1

.field private static final REORDER_RIGHT_DIRECTION:I = -0x1

.field public static final REORDER_TIMEOUT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "AppsReorderController"


# instance fields
.field private final mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mCountX:I

.field private mCountY:I

.field private mDeleteAnimators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/AnimatorSet;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOverLastItemMoved:Z

.field private mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

.field private mOverLastItemFirstPage:I

.field private mOverLastItemLastPage:I

.field mTmpOccupied:[[Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/allapps/DragAppIcon;III)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsReorderController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    return-object v0
.end method

.method private cancelDeleteAnimator()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto :goto_0

    :cond_0
    const-string v2, "AppsReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel deleteAnimation : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V
    .locals 8

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    move-object v0, p0

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    int-to-long v6, p4

    cmp-long v0, v0, v6

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-le v0, p2, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ge v0, p3, :cond_1

    iget v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    :cond_1
    return-void
.end method

.method private getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    move v0, p1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    if-ge v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v3, -0x1

    goto :goto_1
.end method

.method private getOverLastItemFirstPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    return v0
.end method

.method private getOverLastItemLastPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    return v0
.end method

.method private overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-gt p3, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, p3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->createAppsPage()Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    :cond_1
    return-void

    :cond_2
    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_0
.end method

.method private startDeleteAnimation(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)Landroid/animation/AnimatorSet;
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    instance-of v1, p2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v1, :cond_0

    instance-of v1, p2, Lcom/android/launcher3/common/view/Removable;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v1, v4}, Lcom/android/launcher3/common/view/Removable;->markToRemove(Z)V

    :cond_0
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    sget-object v2, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    sget-object v2, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v2}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [F

    aput v6, v3, v5

    invoke-static {p2, v2, v3}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v3}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v3

    new-array v4, v4, [F

    aput v6, v4, v5

    invoke-static {p2, v3, v4}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;

    invoke-direct {v1, p0, p1, p2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0
.end method

.method private undoOverLastItemNextScreen(IFI)V
    .locals 6

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    if-ge p3, v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "AppsReorderController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "undoOverLastItemNextScreen : movePage = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " v = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v5, p3, -0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExistOverLastItemMoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    return v0
.end method

.method public getNumScreenNeededChange(I)I
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v3

    move v0, p1

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    if-ge v1, v2, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public makeEmptyCellAndReorder(II)V
    .locals 11

    if-ltz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    if-lt p2, v0, :cond_2

    :cond_0
    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "rank position = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " is wrong"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    if-gt v3, p2, :cond_3

    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "startPos = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " rank = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", startPos <= rank"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move v4, p2

    move v6, p1

    const/4 v5, -0x1

    const/4 v1, 0x0

    const/high16 v2, 0x41f00000    # 30.0f

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChangeForMakeEmptyCellAndReorder(I)I

    move-result v8

    move v7, v8

    :goto_1
    if-lt v7, p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v9

    if-ne v0, v9, :cond_4

    invoke-direct {p0, v1, v2, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreenForMakeEmptyCellAndReorder(IFI)V

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    if-ne p1, v7, :cond_5

    move v4, p2

    :goto_2
    move v6, v7

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public overLastItemNextScreen(IFI)V
    .locals 6

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge p3, v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, p3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    add-int/lit8 v2, p3, 0x1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v3

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    add-int/lit8 v5, p3, 0x1

    invoke-virtual {v3, v1, v2, v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addViewForRankScreen(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;II)V

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    const-string v2, "AppsReorderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "overLastItemNextScreen to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p3, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public realTimeReorder(IFIIII)V
    .locals 15

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v3

    if-gtz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->cancelDeleteAnimator()V

    const-string v3, "AppsReorderController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / endPos : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / direction : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " / movePage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v11

    sub-int v3, p4, p3

    if-lez v3, :cond_2

    if-gtz p5, :cond_3

    :cond_2
    sub-int v3, p4, p3

    if-gez v3, :cond_6

    if-gez p5, :cond_6

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    move/from16 v12, p3

    :goto_1
    move/from16 v0, p4

    if-eq v12, v0, :cond_0

    const/4 v14, -0x1

    add-int v13, v12, p5

    rem-int v3, v13, v10

    div-int v4, v13, v10

    invoke-virtual {v1, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v14, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    sub-int v4, v14, p5

    iput v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_4
    div-int v3, v12, v10

    if-ge v3, v11, :cond_5

    rem-int v3, v12, v10

    div-int v4, v12, v10

    const/16 v5, 0x96

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    move/from16 v6, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v0, p1

    int-to-float v3, v0

    add-float v3, v3, p2

    float-to-int v0, v3

    move/from16 p1, v0

    const v3, 0x3f666666    # 0.9f

    mul-float p2, p2, v3

    :cond_5
    add-int v12, v12, p5

    goto :goto_1

    :cond_6
    const-string v3, "AppsReorderController"

    const-string v4, "direction is not valid"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 15

    const/4 v2, 0x0

    const/high16 v3, 0x41f00000    # 30.0f

    invoke-virtual/range {p2 .. p2}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v11

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v9

    move-object/from16 v0, p1

    iget v12, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, -0x64

    move v7, v9

    if-ne v9, v11, :cond_2

    move v4, v12

    move v5, v13

    if-le v13, v12, :cond_1

    const/4 v6, 0x1

    :goto_0
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    :cond_0
    return-void

    :cond_1
    if-ge v13, v12, :cond_0

    const/4 v6, -0x1

    goto :goto_0

    :cond_2
    move v4, v12

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v5

    move v7, v9

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getNumScreenNeededChange(I)I

    move-result v10

    iput v10, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemLastPage:I

    iput v11, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mOverLastItemFirstPage:I

    move v8, v10

    :goto_1
    if-lt v8, v11, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v1

    iget-object v14, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v14

    if-lt v1, v14, :cond_3

    invoke-virtual {p0, v2, v3, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->overLastItemNextScreen(IFI)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    if-ne v11, v8, :cond_5

    move v5, v13

    :goto_2
    move v7, v8

    const/4 v6, 0x1

    if-le v4, v5, :cond_4

    const/4 v6, -0x1

    :cond_4
    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 10

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v5, 0x1

    iget v8, p1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v6

    move v3, v8

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v7

    if-nez v7, :cond_0

    const-string v0, "AppsReorderController"

    const-string v1, "This was removed!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    rem-int v0, v3, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v1

    div-int v1, v3, v1

    invoke-virtual {v7, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_1

    const-string v0, "AppsReorderController"

    const-string v1, "This cell is not empty cell!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    goto :goto_0
.end method

.method public removeEmptyCellAtPage(IIIZ)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    if-nez v14, :cond_0

    const-string v3, "AppsReorderController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "page is not exist : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->clearOccupiedCells()V

    const/4 v5, 0x0

    const/4 v15, 0x0

    const/high16 v12, 0x41f00000    # 30.0f

    move/from16 v13, p1

    :goto_1
    move/from16 v0, p2

    if-gt v13, v0, :cond_6

    rem-int v3, v13, v2

    div-int v6, v13, v2

    invoke-virtual {v14, v3, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/android/launcher3/common/view/Removable;

    if-eqz v3, :cond_3

    move-object/from16 v3, v17

    check-cast v3, Lcom/android/launcher3/common/view/Removable;

    invoke-interface {v3}, Lcom/android/launcher3/common/view/Removable;->isMarkToRemove()Z

    move-result v16

    :goto_2
    if-eqz v17, :cond_2

    if-nez v16, :cond_2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eq v13, v5, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p3

    int-to-long v6, v0

    if-eqz p4, :cond_4

    int-to-float v8, v15

    add-float/2addr v8, v12

    float-to-int v15, v8

    int-to-long v8, v15

    :goto_3
    if-eqz p4, :cond_5

    const/4 v10, -0x1

    :goto_4
    const/4 v11, 0x0

    check-cast v11, [[Z

    invoke-virtual/range {v3 .. v11}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateItemToNewPosition(Lcom/android/launcher3/common/base/item/ItemInfo;IJJI[[Z)V

    const v3, 0x3f666666    # 0.9f

    mul-float/2addr v12, v3

    int-to-float v3, v15

    add-float/2addr v3, v12

    float-to-int v15, v3

    const/4 v3, 0x1

    iput-boolean v3, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :cond_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_3
    const/16 v16, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v8, 0x0

    goto :goto_3

    :cond_5
    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForAllChild()V

    goto :goto_0
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            ">;",
            "Lcom/android/launcher3/allapps/DragAppIcon;",
            "Z)V"
        }
    .end annotation

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;)V

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v10

    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_0
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/allapps/DragAppIcon;

    iget v7, v11, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {v11}, Lcom/android/launcher3/allapps/DragAppIcon;->getScreenId()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_2

    const-string v2, "AppsReorderController"

    const-string v3, "This was removed!!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-gez v7, :cond_3

    const-string v2, "AppsReorderController"

    const-string v3, "startPos is invalid!!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v8

    rem-int v2, v7, v10

    div-int v3, v7, v10

    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_6

    if-nez p3, :cond_4

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :goto_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->doRealTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;III)V

    goto :goto_0

    :cond_4
    instance-of v2, v5, Lcom/android/launcher3/folder/view/FolderIconView;

    if-nez v2, :cond_5

    instance-of v2, v5, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_5

    move-object v2, v5

    check-cast v2, Lcom/android/launcher3/common/view/IconView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/IconView;->markToRemove(Z)V

    :cond_5
    const/4 v2, 0x3

    new-array v2, v2, [Landroid/animation/Animator;

    const/4 v3, 0x0

    sget-object v6, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x1

    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    const/4 v3, 0x2

    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    invoke-virtual {v6}, Landroid/util/Property;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v14, 0x1

    new-array v14, v14, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v5, v6, v14}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->ofFloat(Landroid/view/View;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v2, 0x96

    invoke-virtual {v12, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v2, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;

    move-object/from16 v3, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;III)V

    invoke-virtual {v12, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2

    :cond_6
    const-string v2, "AppsReorderController"

    const-string v3, "This cell is already removed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    if-eqz p3, :cond_1

    invoke-virtual {v12}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1
.end method

.method public removeEmptyCellsAndViews(Ljava/util/ArrayList;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-interface {v13, v14, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v8, :cond_4

    if-eqz p2, :cond_3

    if-nez v4, :cond_1

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->startDeleteAnimation(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_0

    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    invoke-virtual {v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_1

    :cond_4
    const-string v13, "AppsReorderController"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "celllayout is not exist : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-wide v0, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_7

    const-string v12, "AppsReorderController"

    const-string v13, "start deleteAnimators"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mDeleteAnimators:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    invoke-interface {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->isAlphabeticalMode()Z

    move-result v12

    if-nez v12, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_8

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v12}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountY()I

    move-result v14

    mul-int/2addr v12, v14

    add-int/lit8 v6, v12, -0x1

    const/4 v12, 0x0

    long-to-int v14, v10

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v12, v6, v14, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellAtPage(IIIZ)V

    goto :goto_3

    :cond_8
    return-void
.end method

.method public setExistOverLastItemMoved(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mIsOverLastItemMoved:Z

    return-void
.end method

.method public setListener(Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mListener:Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    return-void
.end method

.method public setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mTmpOccupied:[[Z

    :cond_0
    return-void
.end method

.method public undoOverLastItems()V
    .locals 11

    const/16 v1, 0x1e

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemFirstPage()I

    move-result v7

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getOverLastItemLastPage()I

    move-result v8

    move v6, v7

    :goto_0
    if-gt v6, v8, :cond_2

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    const/4 v5, 0x1

    const-string v0, "AppsReorderController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "movePage : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "endPos : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v6, v7, :cond_0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    :cond_0
    if-eq v6, v8, :cond_1

    add-int/lit8 v0, v6, 0x1

    invoke-direct {p0, v1, v2, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItemNextScreen(IFI)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    return-void
.end method
