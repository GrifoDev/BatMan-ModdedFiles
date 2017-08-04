.class public Lcom/android/launcher3/allapps/view/AppsPagedView;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "AppsPagedView.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/Insettable;


# static fields
.field static final EXTRA_EMPTY_SCREEN:Ljava/lang/String; = "extra_empty_screen"

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

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

.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

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
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mSaveInstanceStateItemIndex:I

    iput v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mOldPageCount:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->removedScreen:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsPagedView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsPagedView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mBindPages:Ljava/lang/Runnable;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mApps:Ljava/util/ArrayList;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mFadeInAdjacentScreens:Z

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getImportantForAccessibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setImportantForAccessibility(I)V

    :cond_0
    const v1, 0x7f0900a6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mPageSpacing:I

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->setMinScale(F)V

    const v1, 0x7f0900df

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageWidth:I

    const v1, 0x7f0900de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageLeftZone:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mHintPageRightZone:I

    const v1, 0x7f0900b4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mTranslatePagesOffset:F

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

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f030018

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setTag(Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBgImage(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->isChangeGridState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->setBackgroundAlpha(F)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mCellLayouts:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addView(Landroid/view/View;)V

    return-object v0
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

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isChangeGridState()Z

    move-result v4

    if-eqz v4, :cond_1

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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->ALPHABETIC_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v0, v1, :cond_1

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

.method public bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 0

    check-cast p1, Lcom/android/launcher3/allapps/controller/AppsController;

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-void
.end method

.method protected canOverScroll()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

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

.method public getDragController()Lcom/android/launcher3/allapps/controller/AppsDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    return-object v0
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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    :cond_0
    return-void
.end method

.method public onChangeScreenGrid(II)V
    .locals 3

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
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updpateLayout()V

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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

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
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

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
    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->needDefferToBind()Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void

    :catch_0
    move-exception v1

    goto :goto_0
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

    invoke-virtual {p0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    if-nez v2, :cond_0

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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isRunningStateChangeAnimation()Z

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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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

.method public final setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updateBackgroundAndPaddings()V

    return-void
.end method

.method public setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsDragController:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setup(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/allapps/controller/AppsController;)V

    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8

    const v4, 0x7f080141

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

    const v3, 0x7f08018f

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
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08018d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0800f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f08018c

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
    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

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

.method public updateLayoutByConfigurationChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->updpateLayout()V

    return-void
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

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsPagedView;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method public updpateLayout()V
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

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->updateIconViews()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
