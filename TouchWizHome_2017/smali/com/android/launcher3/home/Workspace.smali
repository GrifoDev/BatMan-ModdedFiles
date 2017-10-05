.class public Lcom/android/launcher3/home/Workspace;
.super Lcom/android/launcher3/common/base/view/PagedView;
.source "Workspace.java"

# interfaces
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;
.implements Lcom/android/launcher3/common/base/view/Insettable;
.implements Lcom/android/launcher3/Stats$LaunchSourceProvider;

# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/Workspace$SwipeListener;
    }
.end annotation

# static fields
.field private static final BIND_NONCURRENT_PAGES:I = 0x1

.field private static final BIND_NOTHING:I = 0x0

.field public static final EXTRA_FESTIVALPAGE_SCREEN_ID:J = -0x1f5L

.field public static final EXTRA_PLUS_SCREEN_ID:J = -0x191L

.field private static final EXTRA_TOUCH_SLOP_SCALE_RATIO_OVERVIEW_STATE:F = 1.6f

.field public static final EXTRA_ZEROPAGE_SCREEN_ID:J = -0x12dL

.field protected static final FADE_EMPTY_SCREEN_DURATION:I = 0x96

.field private static final FADE_HOME_ICON_DURATION:I = 0x12c

.field private static final PAGE_REMOVE_POPUP_DELAY:I = 0x12c

.field protected static final PINCH_DISTANCE_DELTA:I = 0x32

.field protected static final SNAP_OFF_EMPTY_SCREEN_DURATION:I = 0x190

.field private static final TAG:Ljava/lang/String; = "Launcher.Workspace"


# instance fields
.field private mAdditionalCount:I

.field private final mBindPages:Ljava/lang/Runnable;

.field private mBindWidgetsRunnable:Ljava/lang/Runnable;

.field private mBindWidgetsState:I

.field mChildrenLayersEnabled:Z

.field private mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

.field private mDefaultHomeIcon:Landroid/view/View;

.field private mDefaultHomeScreenId:J

.field private mDefaultPage:I

.field private mDelayedResizeRunnable:Ljava/lang/Runnable;

.field private mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

.field private mDetector:Landroid/view/GestureDetector;

.field private mDisplaySize:Landroid/graphics/Point;

.field private mDownRawX:F

.field private mDownRawY:F

.field private mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

.field private mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mIsDefaultZeroPage:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutTransition:Landroid/animation/LayoutTransition;

.field private mOverviewShrinkFactor:F

.field private mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

.field private mRemoveScreenDialog:Landroid/app/AlertDialog;

.field private mRestartZeroPage:Z

.field private final mRestoredPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSavedStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenOrder:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mTempCell:[I

.field private mTempVisiblePagesRange:[I

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private final mWidgetsToBind:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/home/LauncherAppWidgetInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowToken:Landroid/os/IBinder;

.field private mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

.field private mXDown:F

.field private mYDown:F

.field private mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

.field swipeAction:[I

# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v2, Lcom/android/launcher3/util/LongArrayMap;

    invoke-direct {v2}, Lcom/android/launcher3/util/LongArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    iput-boolean v4, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    new-array v2, v5, [I

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    iput-object v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    iput v3, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    iput-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    iput-boolean v3, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    new-instance v2, Lcom/android/launcher3/home/Workspace$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$1;-><init>(Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    iput v3, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    new-instance v2, Lcom/android/launcher3/home/Workspace$2;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$2;-><init>(Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsRunnable:Ljava/lang/Runnable;

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/Launcher;

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-boolean v3, p0, Lcom/android/launcher3/home/Workspace;->mFadeInAdjacentScreens:Z

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/launcher3/home/ZeroPageController;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher3/home/ZeroPageController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    :cond_0
    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->Workspace:[I

    invoke-virtual {p1, p2, v2, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-direct {p0, v2, v4}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    :cond_1
    const v2, 0x7f0a00b1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mPageSpacing:I

    invoke-virtual {p0, p0}, Lcom/android/launcher3/home/Workspace;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->setHapticFeedbackEnabled(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->initWorkspace()V

    new-instance v2, Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v2, v3, p0}, Lcom/android/launcher3/home/WorkspaceDragController;-><init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setMotionEventSplittingEnabled(Z)V

    const v2, 0x7f0a00ad

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageWidth:I

    const v2, 0x7f0a00ac

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mHintPageRightZone:I

    const v2, 0x7f0a00ae

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/home/Workspace;->mTranslatePagesOffset:F

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->initGestures(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->bindWidgetsAfterConfigChange()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/Workspace;IILjava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/Workspace;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->showRemoveScreenPopup()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/Workspace;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$1502(Lcom/android/launcher3/home/Workspace;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/Workspace;->mFirstLayout:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/Workspace;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeBindController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/android/launcher3/home/Workspace;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/util/LongArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/Workspace;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/Workspace;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/Workspace;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/Workspace;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/Workspace;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    return v0
.end method

.method private addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 9

    const/16 v8, 0x8

    const/4 v7, 0x0

    new-instance v3, Lcom/android/launcher3/home/Workspace$10;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/Workspace$10;-><init>(Lcom/android/launcher3/home/Workspace;)V

    new-instance v0, Lcom/android/launcher3/home/Workspace$11;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$11;-><init>(Lcom/android/launcher3/home/Workspace;)V

    new-instance v4, Lcom/android/launcher3/home/Workspace$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/Workspace$12;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutTop(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addAlignLayoutBottom(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addPageDeleteBtn(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v5

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    return-void
.end method

.method private backgroundAlphaThreshold(F)F
    .locals 4

    const/4 v0, 0x0

    const v1, 0x3e99999a    # 0.3f

    cmpg-float v2, p1, v0

    if-gez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    sub-float v2, p1, v0

    sub-float v3, v1, v0

    div-float/2addr v2, v3

    goto :goto_0
.end method

.method private bindWidgetsAfterConfigChange()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeBindController;->finishBindingItems()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private canDeleteScreen()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x3

    if-le v2, v3, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v3, 0x2

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    if-gt v2, v0, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private changePlusPageColorFilterForBg(Z)V
    .locals 4

    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    return-void
.end method

.method private checkAlignButtonEnabled(I)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, v5, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v1

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZI)Z

    move-result v0

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setEnabledOnAlignButton(ZZ)V

    :cond_0
    return-void
.end method

.method private checkVisibilityOfPageDeleteBtn()V
    .locals 4

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    :cond_0
    return-void

    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method private clearChildrenCache()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040065

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    invoke-virtual {v0, v1, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setSoundEffectsEnabled(Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->addCustomLayout(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, p3, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    :cond_0
    return-object v0
.end method

.method private disableLayoutTransitions()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private enableChildrenCache(II)V
    .locals 6

    const/4 v5, 0x1

    if-le p1, p2, :cond_0

    move v3, p1

    move p1, p2

    move p2, v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {p1, v4}, Ljava/lang/Math;->max(II)I

    move-result p1

    add-int/lit8 v4, v2, -0x1

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result p2

    move v0, p1

    :goto_0
    if-gt v0, p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawnWithCacheEnabled(Z)V

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setChildrenDrawingCacheEnabled(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private enableHwLayersOnVisiblePages()V
    .locals 14

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-boolean v10, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v10, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v5, v10, v9

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v6, v10, v8

    if-ne v5, v6, :cond_0

    add-int/lit8 v10, v7, -0x1

    if-ge v6, v10, :cond_1

    add-int/lit8 v6, v6, 0x1

    :cond_0
    :goto_0
    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x12d

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v12, -0x1f5

    invoke-virtual {v10, v12, v13}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v7, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v4, v0, :cond_2

    if-eq v4, v2, :cond_2

    if-gt v5, v3, :cond_2

    if-gt v3, v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->shouldDrawChild(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_2

    move v1, v8

    :goto_2
    invoke-virtual {v4, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-lez v5, :cond_0

    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    move v1, v9

    goto :goto_2

    :cond_3
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, "alpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    const-string v4, "backgroundAlpha"

    new-array v5, v9, [F

    aput v6, v5, v8

    invoke-static {v4, v5}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v6, -0xc9

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    new-instance v4, Lcom/android/launcher3/home/Workspace$5;

    invoke-direct {v4, p0, v2}, Lcom/android/launcher3/home/Workspace$5;-><init>(Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/common/base/view/CellLayout;)V

    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, v4, v8

    aput-object v1, v4, v9

    invoke-static {v2, v4}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    new-instance v4, Lcom/android/launcher3/home/Workspace$6;

    invoke-direct {v4, p0, p3}, Lcom/android/launcher3/home/Workspace$6;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v3}, Landroid/animation/ObjectAnimator;->start()V

    return-void
.end method

.method private getPageDescription(IZ)Ljava/lang/String;
    .locals 12

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-string v3, ""

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v6

    sub-int v9, v6, v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_1

    move v6, v7

    :goto_0
    sub-int v2, v9, v6

    add-int/lit8 v6, p1, 0x1

    sub-int v0, v6, v1

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v6

    const v9, 0x7f0900bd

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v10, -0x191

    cmp-long v6, v4, v10

    if-nez v6, :cond_2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09000d

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f09000e

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_1
    return-object v6

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    const-wide/16 v10, -0x12d

    cmp-long v6, v4, v10

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->getAppName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/ZeroPageController;->getAppName()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    if-lez v2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v9, " "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f090031

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v6, v6, 0x1

    sub-int/2addr v6, v1

    if-ne v0, v6, :cond_5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090030

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_4
    :goto_2
    move-object v6, v3

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f090059

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getPageIndexToStart()I
    .locals 2

    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasCustomContentPage(J)Z
    .locals 11

    const-wide/16 v8, -0x12d

    const-wide/16 v6, -0x191

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    cmp-long v1, p1, v8

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    cmp-long v1, p1, v6

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    move v0, v2

    :goto_1
    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_1
.end method

.method private initGestures(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x3e7

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    const-string v2, "swipe_up"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    const-string v2, "swipe_down"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v5

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    const-string v2, "doubletap"

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    aput v2, v1, v6

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    aget v1, v1, v4

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    aget v1, v1, v5

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->swipeAction:[I

    aget v1, v1, v6

    if-eq v1, v3, :cond_1

    :cond_0
    new-instance v1, Landroid/view/GestureDetector;

    new-instance v2, Lcom/android/launcher3/home/Workspace$SwipeListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/Workspace$SwipeListener;-><init>(Lcom/android/launcher3/home/Workspace;Lcom/android/launcher3/home/Workspace$SwipeListener;)V

    invoke-direct {v1, p1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDetector:Landroid/view/GestureDetector;

    :cond_1
    return-void
.end method

.method private initWorkspace()V
    .locals 3

    const/4 v2, 0x0

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipChildren(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setClipToPadding(Z)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setChildrenDrawnWithCacheEnabled(Z)V

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->setupLayoutTransition()V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDisplaySize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    return-void
.end method

.method private insertPage(II)J
    .locals 6

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v2, v3, p2}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    :cond_0
    if-le v0, p1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, p2, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    return-wide v2
.end method

.method private isCurrentTransitionEffectDefault()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->getCurrentTransitionEffect()Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isLastScreen(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private removeItemsOnScreen(J)V
    .locals 11

    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v8, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v8

    if-nez v8, :cond_0

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eqz v8, :cond_2

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v9, 0x2

    if-eq v8, v9, :cond_2

    :cond_0
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8, v7, v6}, Lcom/android/launcher3/home/HomeController;->removeItemsOnScreen(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private removeScreenWithItem(ZZ)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/launcher3/home/Workspace;->removeScreenWithItem(IZZ)V

    return-void
.end method

.method private setCustomFlagOnChild(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->requestLayout()V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setupLayoutTransition()V
    .locals 5

    const/4 v4, 0x1

    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {v0, v4}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v4, v2, v3}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLayoutTransition:Landroid/animation/LayoutTransition;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private showRemoveScreenPopup()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0900a9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0900aa

    new-instance v2, Lcom/android/launcher3/home/Workspace$19;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$19;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/android/launcher3/home/Workspace$18;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/Workspace$18;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/home/Workspace$17;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$17;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    return-void
.end method

.method private snapToScreenId(JLjava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-virtual {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->snapToPage(ILjava/lang/Runnable;)V

    return-void
.end method

.method private startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 4

    const-string v1, "backgroundAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x4

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    invoke-direct {p0, p2, v2}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    if-eq v1, v4, :cond_2

    const/4 v3, 0x6

    if-ne v1, v3, :cond_3

    :cond_2
    if-eqz p3, :cond_3

    move v0, v2

    :cond_3
    const/4 v2, 0x2

    invoke-virtual {p1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->setImportantForAccessibility(I)V

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    goto :goto_0
.end method

.method private updateChildrenLayersEnabled(ZZ)V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_2

    if-eqz p2, :cond_2

    move v4, v5

    :goto_0
    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    if-nez p1, :cond_0

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_0
    move v1, v5

    :goto_1
    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eq v1, v5, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    iget-boolean v5, p0, Lcom/android/launcher3/home/Workspace;->mChildrenLayersEnabled:Z

    if-eqz v5, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableHwLayersOnVisiblePages()V

    :cond_1
    return-void

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v1, v6

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    if-ge v2, v5, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->enableHardwareLayer(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method private updateDefaultHome()V
    .locals 8

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v2, v3, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v4

    const-wide/16 v6, -0x191

    cmp-long v2, v4, v6

    if-nez v2, :cond_2

    const/4 v2, 0x1

    :goto_1
    sub-int v0, v3, v2

    invoke-virtual {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome(II)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private updateDefaultHomeIcon(I)V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v3, v2}, Landroid/view/View;->setSelected(Z)V

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0900af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->setHoverPopupContentDescription(Landroid/view/View;Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09007b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private updateDragExtraPageAlphaValue(II)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_0
    return-void
.end method

.method private updateDragPageAlphaValues(III)V
    .locals 6

    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v4

    if-ne v2, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v0

    instance-of v4, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v4, :cond_2

    move-object v4, v1

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->isPageFullVIStarted()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateHomeDefaultZeroPageKey(IZ)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p1

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_0
    if-nez p2, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    if-eq v0, v1, :cond_2

    :cond_1
    iput-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mIsDefaultZeroPage:Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "zeropage_default_home"

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method private updateNormalPageAlphaValues(III)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    return-void

    :cond_1
    move v2, p2

    :goto_0
    if-gt v2, p3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/Workspace;->backgroundAlphaThreshold(F)F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    goto :goto_1
.end method

.method private updatePageAlphaValues(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateNormalPageAlphaValues(III)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/home/Workspace;->updateDragExtraPageAlphaValue(II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updateDragPageAlphaValues(III)V

    goto :goto_0
.end method


# virtual methods
.method abortBindWidgetsAfterConfigChange()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mBindWidgetsState:I

    return-void
.end method

.method addExtraEmptyScreen()Z
    .locals 4

    const-wide/16 v2, -0xc9

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method addExtraEmptyScreenOnDrag()V
    .locals 4

    const-wide/16 v2, -0xc9

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveEmptyScreenRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(J)J

    :cond_0
    return-void
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/folder/view/FolderView;->addFocusables(Ljava/util/ArrayList;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method addNewWorkspaceScreen()J
    .locals 10

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Launcher.Workspace"

    const-string v6, "    - workspace loading, skip"

    invoke-static {v5, v6, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v6, -0x191

    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    invoke-direct {p0, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/Workspace;->startAlphaAnimation(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v5

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v6

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/common/view/PageIndicator;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    invoke-virtual {p0, v4, v4}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZ)V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v6, 0x7f090077

    invoke-virtual {v5, v6}, Lcom/android/launcher3/util/Talk;->say(I)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0900f4

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v8

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x2

    :cond_3
    sub-int v4, v8, v4

    int-to-long v8, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_0
.end method

.method addWidgetsToBind(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWidgetsToBind:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public announceForAccessibility(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public autoAlignItems(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkNeedDisplayAutoalignDialog()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/home/AutoAlignConfirmDialog;->createAndShow(Landroid/app/FragmentManager;Lcom/android/launcher3/home/HomeController;Z)V

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0901b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0900f6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_1
    int-to-long v4, v0

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/launcher3/home/HomeController;->autoAlignItems(ZZ)Z

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0900f5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method bindController(Lcom/android/launcher3/common/base/controller/ControllerBase;)V
    .locals 1

    check-cast p1, Lcom/android/launcher3/home/HomeController;

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    return-void
.end method

.method public buildPageHardwareLayers()V
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->buildHardwareLayer()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    return-void
.end method

.method public callRefreshLiveIcon()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1}, Lcom/android/launcher3/util/LongArrayMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->callRefreshLiveIcon()V

    goto :goto_0
.end method

.method protected canOverScroll()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method changeColorForBg(Z)V
    .locals 10

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v9, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-static {v8, v9, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_1

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v8, v7, Lcom/android/launcher3/common/view/IconView;

    if-eqz v8, :cond_0

    check-cast v7, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v7, p1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v8

    if-ne v3, v8, :cond_2

    const/4 v8, 0x1

    :goto_2
    invoke-virtual {v1, v9, v8, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    invoke-virtual {v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->changeColorForBg(Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_2

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/view/PageIndicator;->changeColorForBg(Z)V

    :cond_4
    return-void
.end method

.method checkAlignButtonEnabled()V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    return-void
.end method

.method public checkNeedDisplayAutoalignDialog()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.showdialog.prefs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method checkVisibilityOfCustomLayout(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1, v2, v1, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    invoke-virtual {p0, v2, v2, v1, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    :cond_0
    return-void
.end method

.method commitExtraEmptyScreen()J
    .locals 8

    const-wide/16 v6, -0xc9

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Launcher.Workspace"

    const-string v5, "    - workspace loading, skip"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    const-wide/16 v2, -0x1

    :goto_0
    return-wide v2

    :cond_0
    invoke-virtual {p0, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v6, v7}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewScreenId()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v4, v2, v3, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->isGrouping()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v5, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v4

    add-int/2addr v4, v1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->updateMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    goto :goto_1
.end method

.method createAndBindWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeBindController;->bindAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    return-void
.end method

.method createCustomPlusPage()V
    .locals 14

    const-wide/16 v12, -0x191

    const/4 v11, 0x1

    const/4 v10, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f040065

    invoke-virtual {v7, v8, p0, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v7, 0x4

    invoke-virtual {v3, v7, v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0200da

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v7, 0x42c80000    # 100.0f

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0d0002

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    int-to-float v8, v8

    div-float v4, v7, v8

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v5, v7

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v4

    float-to-int v6, v7

    invoke-static {v1, v5, v6, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v0, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    const/16 v7, 0x11

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setForegroundGravity(I)V

    new-instance v7, Lcom/android/launcher3/home/Workspace$9;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/Workspace$9;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v3, v7}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v7, v12, v13, v3}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    invoke-virtual {p0, v3, v7}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    invoke-virtual {v3, v11}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-direct {p0, v11}, Lcom/android/launcher3/home/Workspace;->changePlusPageColorFilterForBg(Z)V

    :cond_1
    return-void
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v8}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    sub-float v2, v8, v9

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    sub-float/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/4 v8, 0x0

    invoke-static {v0, v8}, Ljava/lang/Float;->compare(FF)I

    move-result v8

    if-eqz v8, :cond_0

    div-float v4, v1, v0

    float-to-double v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->atan(D)D

    move-result-wide v8

    double-to-float v5, v8

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v7

    if-eqz v7, :cond_4

    const v6, 0x3fcccccd    # 1.6f

    :goto_1
    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mTouchSlop:I

    int-to-float v7, v7

    mul-float v3, v7, v6

    cmpl-float v7, v0, v3

    if-gtz v7, :cond_2

    cmpl-float v7, v1, v3

    if-lez v7, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_0

    :cond_4
    const/high16 v6, 0x3f800000    # 1.0f

    goto :goto_1
.end method

.method protected determineScrollingStart(Landroid/view/MotionEvent;F)Z
    .locals 2

    move v0, p2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x40200000    # 2.5f

    mul-float v0, p2, v1

    :cond_0
    :goto_0
    invoke-super {p0, p1, v0}, Lcom/android/launcher3/common/base/view/PagedView;->determineScrollingStart(Landroid/view/MotionEvent;F)Z

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x3fcccccd    # 1.6f

    mul-float v0, p2, v1

    goto :goto_0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/ZeroPageController;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/launcher3/home/WorkspaceDragController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;
    .locals 6

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    return-object v5
.end method

.method public estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I
    .locals 9

    const v3, 0x7fffffff

    const/4 v8, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v7, v0, [I

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    iget v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    aput v0, v7, v2

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    aput v0, v7, v8

    :goto_0
    return-object v7

    :cond_0
    aput v3, v7, v2

    aput v3, v7, v8

    goto :goto_0
.end method

.method public fillInLaunchSourceData(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "container"

    const-string v1, "homescreen"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "container_page"

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public findWidgetView(Landroid/content/ComponentName;)Lcom/android/launcher3/home/LauncherAppWidgetHostView;
    .locals 12

    const/4 v9, 0x0

    if-nez p1, :cond_0

    move-object v8, v9

    :goto_0
    return-object v8

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v7

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_3

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v6, 0x0

    :goto_2
    if-ge v6, v0, :cond_2

    invoke-virtual {v2, v6}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v10, v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v10, :cond_1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    check-cast v8, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    goto :goto_0

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object v8, v9

    goto :goto_0
.end method

.method getAdditionPageCount()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    return v0
.end method

.method public getAlignLayoutList()Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/LinearLayout;",
            ">;"
        }
    .end annotation

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getCurrentPageDescription()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isStartedSwipeAffordanceAnim()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method getCurrentPageOffsetFromCustomContent()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getCustomPageCount()I
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v4, -0x12d

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const-wide/16 v4, -0x191

    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    add-int/2addr v0, v3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public getDefaultPage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return v0
.end method

.method public getDownRawXY()Landroid/graphics/Point;
    .locals 2

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    float-to-int v1, v1

    iput v1, v0, Landroid/graphics/Point;->y:I

    return-object v0
.end method

.method public getDragController()Lcom/android/launcher3/home/WorkspaceDragController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    return-object v0
.end method

.method getIconView(Landroid/content/ComponentName;Landroid/os/UserHandle;)Landroid/view/View;
    .locals 12

    const/4 v8, 0x0

    if-nez p1, :cond_1

    move-object v7, v8

    :cond_0
    :goto_0
    return-object v7

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v6

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v6, :cond_7

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_2

    const-string v9, "Launcher.Workspace"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getIconView(), getChildAt( "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ") return null object"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-virtual {v1, v5}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    instance-of v9, v9, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v9, :cond_3

    invoke-virtual {v7}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v9, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {p1, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual {p2, v10}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_7
    const-string v9, "Launcher.Workspace"

    const-string v10, "getIconView(), Could\'t find app icon"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v7, v8

    goto/16 :goto_0
.end method

.method getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/LongArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/LongArrayMap;->keyAt(I)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method protected getNearestHoverOverPageIndex()I
    .locals 4

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->getNearestHoverOverPageIndex()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x12d

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x1f5

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, -0x1

    :cond_1
    return v0
.end method

.method public getPageDeleteBtn()Landroid/view/View;
    .locals 3

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getPageDeleteBtn(I)Landroid/view/View;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method getPageIndexForScreenId(J)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method protected getPageIndicatorDescription()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageDescription(IZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const-wide/16 v4, -0x191

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    if-le v0, v6, :cond_5

    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    :goto_0
    return-object v1

    :cond_1
    const-wide/16 v4, -0x1f5

    cmp-long v1, v2, v4

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    if-le v0, v6, :cond_5

    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    :cond_2
    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    if-lez v0, :cond_5

    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    :cond_3
    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    if-ne p1, v1, :cond_5

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v4

    sub-int v0, v1, v4

    if-lez v0, :cond_5

    new-instance v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    sget-object v4, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-direct {v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;-><init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V

    goto :goto_0

    :cond_5
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    goto :goto_0
.end method

.method public getRestorePage()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    return v0
.end method

.method getScreenIdForPageIndex(I)J
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method getScreenOrder()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    return-object v0
.end method

.method getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method public getSupportCustomPageCount()I
    .locals 1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/android/launcher3/util/LongArrayMap",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    return-object v0
.end method

.method getZeroPageController()Lcom/android/launcher3/home/ZeroPageController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    return-object v0
.end method

.method public getZeroPageSwitchLayout()Landroid/widget/LinearLayout;
    .locals 3

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method hasExtraEmptyScreen()Z
    .locals 6

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v2

    sub-int/2addr v0, v2

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    const-wide/16 v4, -0xc9

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v2

    if-eqz v2, :cond_0

    if-le v0, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hasTargetView()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->hasTargetView()Z

    move-result v3

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method hideDefaultHomeIcon()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon(Z)V

    return-void
.end method

.method hideDefaultHomeIcon(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    :cond_0
    return-void
.end method

.method initDefaultHomeIcon()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const v1, 0x7f110094

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    sget-object v1, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    new-instance v1, Lcom/android/launcher3/home/Workspace$13;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$13;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->bringToFront()V

    :cond_1
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    return-void
.end method

.method insertAdditionalPageAndMoveItems(IILjava/util/List;)V
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v7, "Launcher.Workspace"

    const-string v8, "insertAdditionalPageAndMoveItems()"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    move-object/from16 v22, p3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v24, 0x1

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/util/Pair;

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, v26

    move-object/from16 v2, v21

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    const/4 v5, 0x0

    add-int v6, v6, v24

    :cond_0
    const/4 v7, 0x2

    new-array v9, v7, [I

    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_1

    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_1
    move-object/from16 v0, v21

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_2

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v21

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    :goto_1
    move-object/from16 v0, v21

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v24, v0

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v23

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v21

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    return-void
.end method

.method insertNewWorkspaceScreen(J)J
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method insertNewWorkspaceScreen(JI)J
    .locals 5

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/util/LongArrayMap;->containsKey(J)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Screen id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " already exists!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    if-le p3, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->createPage(JI)Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBackgroundAlpha(F)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    invoke-virtual {v0, v3, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFestivalPage()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getFestivalPageController()Lcom/android/launcher3/home/FestivalPageController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    :cond_4
    return-wide p1
.end method

.method insertNewWorkspaceScreenBeforeEmptyScreen(J)J
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0xc9

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v2, -0x191

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    :cond_0
    if-gez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->insertNewWorkspaceScreen(JI)J

    move-result-wide v2

    return-wide v2
.end method

.method insertPageAndMoveItems(II)V
    .locals 29

    invoke-direct/range {p0 .. p2}, Lcom/android/launcher3/home/Workspace;->insertPage(II)J

    move-result-wide v26

    invoke-virtual/range {p0 .. p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/home/WorkspaceCellLayout;

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    const/16 v25, 0x1

    invoke-virtual {v4}, Lcom/android/launcher3/home/WorkspaceCellLayout;->clearOccupiedCells()V

    invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_0
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/util/Pair;

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-wide/from16 v0, v26

    move-object/from16 v2, v22

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v7, v5

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountX()I

    move-result v8

    if-le v7, v8, :cond_0

    const/4 v5, 0x0

    add-int v6, v6, v25

    :cond_0
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v7, v6

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCountY()I

    move-result v8

    if-le v7, v8, :cond_1

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const/4 v7, 0x2

    new-array v9, v7, [I

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v22

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    const/4 v7, 0x0

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x1

    aget v7, v9, v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    const/4 v7, 0x0

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v7, 0x1

    aget v7, v9, v7

    move-object/from16 v0, v22

    iput v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :cond_2
    move-object/from16 v0, v22

    instance-of v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v7, :cond_3

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, v22

    check-cast v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v11, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    :goto_1
    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v5, v7

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v25, v0

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v24

    iget-object v11, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v11, Landroid/view/View;

    move-object/from16 v0, v22

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v22

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    :cond_4
    if-eqz v20, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_5

    add-int/lit8 v7, p1, 0x1

    add-int/lit8 v8, p2, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/launcher3/home/Workspace;->insertAdditionalPageAndMoveItems(IILjava/util/List;)V

    :cond_5
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCrossHairAnimatedVisibility(IZ)V

    const/4 v7, 0x1

    iput-boolean v7, v4, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    return-void
.end method

.method public isEmptyPage(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isNormalState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v0

    return v0
.end method

.method isOverviewState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPinchZoomState()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScreenGridState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isScreenGridState()Z

    move-result v0

    return v0
.end method

.method protected isScrollableToZeroPage()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isSelectState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    return v0
.end method

.method public isTouchActive()Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isVisibleGridPanel()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isVisibleGridPanel()Z

    move-result v0

    return v0
.end method

.method mapPointFromSelfToChild(Landroid/view/View;[F)V
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

.method public moveToDefaultScreen(Z)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/home/Workspace;->moveToScreen(IZ)V

    return-void
.end method

.method moveToScreen(IZ)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_0
.end method

.method protected notifyPageChange(III)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageChange(III)V

    :cond_0
    return-void
.end method

.method protected notifyPageScroll(IIIII)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageScroll(IIIII)V

    :cond_0
    return-void
.end method

.method protected notifyPageSwitchListener()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->notifyPageSwitchListener()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->computeScroll()V

    return-void
.end method

.method onChangeChildState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->checkVisibilityOfPageDeleteBtn()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled()V

    return-void
.end method

.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x1

    instance-of v2, p2, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "A Workspace can only have CellLayout children."

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkers()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    const/4 v2, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    :cond_1
    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setClickable(Z)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->setImportantForAccessibility(I)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onChildViewAdded(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method protected onConfigurationChangedIfNeeded()V
    .locals 9

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onConfigurationChangedIfNeeded()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setupShrinkFactor()V

    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setMinScale(F)V

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const v7, 0x7f0a0045

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    iput v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v7, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v7

    iget-object v7, v7, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIndicatorBottom()I

    move-result v7

    int-to-float v3, v7

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v7

    if-eqz v7, :cond_1

    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    iget v7, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    const v7, 0x7f0a0028

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    const v8, 0x7f0a002b

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->onConfigurationChangedIfNeeded()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isScreenGridState()Z

    move-result v7

    if-eqz v7, :cond_0

    const v7, 0x7f0d000a

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v5, v7, v8

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    const v7, 0x7f0a0029

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v7

    const v8, 0x7f0a002c

    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v8

    int-to-float v8, v8

    sub-float v8, v3, v8

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    goto :goto_0

    :cond_2
    const v7, 0x7f0a00ad

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageWidth:I

    const v7, 0x7f0a00ac

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, p0, Lcom/android/launcher3/home/Workspace;->mHintPageLeftZone:I

    sub-int/2addr v7, v8

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mHintPageRightZone:I

    const v7, 0x7f0a00ae

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    int-to-float v7, v7

    iput v7, p0, Lcom/android/launcher3/home/Workspace;->mTranslatePagesOffset:F

    const v7, 0x7f0a00b1

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->setPageSpacing(I)V

    new-instance v7, Lcom/android/launcher3/home/Workspace$16;

    invoke-direct {v7, p0}, Lcom/android/launcher3/home/Workspace$16;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v7}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWindowToken:Landroid/os/IBinder;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onEndReordering()V
    .locals 6

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onEndReordering()V

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v4

    if-eq v3, v4, :cond_2

    iget-wide v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/view/DragLayer;->isResizeFrameArea(FF)Z

    move-result v6

    if-eqz v6, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->setScrollForceBlock()V

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-string v6, "2"

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/home/HomeController;->exitResizeState(ZLjava/lang/String;)V

    move v4, v5

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getHomeContainer()Lcom/android/launcher3/home/HomeContainer;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_lg

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_lg
    :pswitch_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mYDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawX:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mDownRawY:F

    goto :goto_1

    :pswitch_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v6

    if-eqz v6, :cond_3

    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mXDown:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_7

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_4
    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->isMultiTouch()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelCurrentPageLongPress()V

    iget v6, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->snapToDestination()V

    :cond_5
    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->getPinchDelta()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/16 v6, 0x32

    if-le v4, v6, :cond_2

    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    or-int/lit8 v4, v4, 0x3

    iput v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-lez v2, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isNormalState()Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "Launcher.Workspace"

    const-string v6, "enter Overview by pinch zoom"

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    const v6, 0x7f0901b7

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f090149

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1"

    invoke-virtual {v4, v6, v7, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_3
    move v4, v5

    goto/16 :goto_0

    :cond_7
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->setLeftScroll(Z)V

    goto/16 :goto_2

    :cond_8
    if-gez v2, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_3

    :pswitch_3
    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-nez v4, :cond_2

    iget v4, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->onWallpaperTap(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 3

    const/4 v2, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    if-eqz p3, :cond_3

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->removeCustomPage(I)V

    :cond_0
    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/home/Workspace$8;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/Workspace$8;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    :cond_3
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v7, 0x4

    const/4 v4, 0x1

    if-eqz p3, :cond_2

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v2

    invoke-virtual {p4}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    if-ne v2, v4, :cond_0

    if-eq v3, v7, :cond_1

    :cond_0
    if-ne v2, v7, :cond_4

    const/4 v6, 0x2

    if-ne v3, v6, :cond_4

    :cond_1
    if-ne v3, v7, :cond_3

    :goto_0
    invoke-direct {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->setCustomFlagOnChild(ZZ)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    invoke-direct {p0, v5, p3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    return-void

    :cond_3
    move v4, v5

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d003c

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v6, v6, v8

    if-nez v6, :cond_6

    if-eqz p2, :cond_5

    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x191

    cmp-long v4, v6, v8

    if-nez v4, :cond_2

    if-eqz p2, :cond_7

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/Workspace;->snapToPageImmediately(I)V

    goto :goto_1
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->onLayout(ZIIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onLayout(Landroid/view/ViewGroup;ZIIII)V

    :cond_0
    return-void
.end method

.method protected onPageBeginMoving()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageBeginMoving()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageBeginMoving()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitResizeState(Z)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mNextPage:I

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView()V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->stopEdgeLight()V

    return-void
.end method

.method protected onPageEndMoving()V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onPageEndMoving()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportTransitionEffects()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->onPageEndMoving()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isHardwareAccelerated()Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drag/DragManager;->forceTouchMove()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    iput-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v3

    if-ne v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->notifyCaptureIfNecessary()V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHotword()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->isGoogleSearchWidget(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->setHotWordDetection(Z)V

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->startEdgeLight()V

    :cond_6
    :goto_1
    return-void

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->clearChildrenCache()V

    goto :goto_0

    :cond_8
    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_6

    iget-object v3, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragManager;->isInScrollArea()Z

    move-result v3

    if-nez v3, :cond_6

    iget v3, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->startPageFullVI()V

    goto :goto_1
.end method

.method onPause()V
    .locals 7

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v3, p0, Lcom/android/launcher3/home/Workspace;->mRemoveScreenDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->closeZeroPageDownloadDialog()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->cancelScroll()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x1

    const-string v2, "start_from_zeropage"

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    const-string v0, "Launcher.Workspace"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RestartZeroPage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V

    :cond_2
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method onResume()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->hasWallpaperChangedSinceLastCheck()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->setWallpaperDimension()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mBindPages:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onScrollInteractionBegin()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    return-void
.end method

.method protected onScrollInteractionEnd()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onScrollInteractionEnd()V

    return-void
.end method

.method public onStartReordering()V
    .locals 2

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->onStartReordering()V

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    float-to-int v2, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v3, v4

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    if-nez v0, :cond_0

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->initBounceAnimation()V

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onWallpaperTap(Landroid/view/MotionEvent;)V
    .locals 9

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/launcher3/home/Workspace;->mTempCell:[I

    invoke-virtual {p0, v8}, Lcom/android/launcher3/home/Workspace;->getLocationOnScreen([I)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v7

    aget v0, v8, v5

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v5

    aget v0, v8, v4

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    aput v0, v8, v4

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "android.wallpaper.tap"

    :goto_0
    aget v3, v8, v5

    aget v4, v8, v4

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/app/WallpaperManager;->sendWallpaperCommand(Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)V

    return-void

    :cond_0
    const-string v2, "android.wallpaper.secondaryTap"

    goto :goto_0
.end method

.method protected onWindowVisibilityChanged(I)V
    .locals 3

    const/4 v2, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/Launcher;->onWindowVisibilityChanged(I)V

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v1, v0, Landroid/graphics/Point;->x:I

    if-le v1, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/Workspace;->mRestartZeroPage:Z

    goto :goto_0
.end method

.method protected overScroll(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_1

    if-lez p1, :cond_2

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ltz p1, :cond_0

    :cond_2
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->overScroll(I)V

    goto :goto_0
.end method

.method public pageEndMoving()V
    .locals 0

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/PagedView;->pageEndMoving()V

    return-void
.end method

.method removeAllWorkspaceScreens()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->disableLayoutTransitions()V

    const-wide/16 v0, -0x12d

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->removeCustomZeroPage(Z)V

    :cond_0
    const-wide/16 v0, -0x191

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->hasCustomContentPage(J)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeCustomPlusPage()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->removeAllViews()V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LongArrayMap;->clear()V

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->enableLayoutTransitions()V

    return-void
.end method

.method removeCustomPlusPage()V
    .locals 6

    const-wide/16 v4, -0x191

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v2, "Launcher.Workspace"

    const-string v3, "Expected custom plus page to exist"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/PageIndicator;->setPlusPage(Z)V

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method removeExtraEmptyScreen()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V
    .locals 7

    const/16 v6, 0x190

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeBindController:Lcom/android/launcher3/home/HomeBindController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeBindController;->isWorkspaceLoading()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Launcher.Workspace"

    const-string v3, "    - workspace loading, skip"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/Launcher;->addDumpLog(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-lez p2, :cond_2

    new-instance v2, Lcom/android/launcher3/home/Workspace$3;

    invoke-direct {v2, p0, p1}, Lcom/android/launcher3/home/Workspace$3;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    int-to-long v4, p2

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    const-wide/16 v4, -0xc9

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p0, v2, v6}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    const/16 v2, 0x96

    invoke-direct {p0, v6, v2, p1}, Lcom/android/launcher3/home/Workspace;->fadeAndRemoveEmptyScreen(IILjava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    new-instance v1, Lcom/android/launcher3/home/Workspace$4;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/home/Workspace$4;-><init>(Lcom/android/launcher3/home/Workspace;Ljava/lang/Runnable;)V

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method removeExtraEmptyScreenOnDrop(Ljava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0xc8

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    return-void
.end method

.method public removeScreenWithItem(IZZ)V
    .locals 6

    const/4 v5, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    if-nez p2, :cond_2

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->removeItemsOnScreen(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHome()V

    if-eqz p3, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->updateWorkspaceScreenOrder(Ljava/util/ArrayList;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v5}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v5, v1, v5, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->isLastScreen(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    goto :goto_0
.end method

.method removeTempPage(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWorkspaceScreens:Lcom/android/launcher3/util/LongArrayMap;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mScreenOrder:Ljava/util/ArrayList;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    :cond_0
    return-void
.end method

.method resetAdditionalPageCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mAdditionalCount:I

    return-void
.end method

.method public resetTouchState()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    return-void
.end method

.method protected resetTransitionEffect(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->resetTransitionEffect(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    goto :goto_0
.end method

.method protected resetTransitionEffectForInvisiblePage(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    return-void
.end method

.method restoreInstanceStateForChild(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->restoreInstanceState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method restoreInstanceStateForRemainingPages()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->restoreInstanceStateForChild(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mRestoredPages:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mSavedStates:Landroid/util/SparseArray;

    return-void
.end method

.method protected screenScrolled(III)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/Workspace;->updatePageAlphaValues(III)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getVisiblePages([I)V

    return-void
.end method

.method public scrollBy(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController;->canScroll()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollBy(II)V

    :cond_1
    return-void
.end method

.method public scrollTo(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getMaxScrollX()I

    move-result v0

    if-gt p1, v0, :cond_1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method setAlphaWithVisibility(Landroid/view/View;IZ)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    if-eqz p3, :cond_3

    const-string v4, "alpha"

    new-array v5, v6, [F

    aput v3, v5, v7

    invoke-static {p1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v1, v6}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    new-array v3, v6, [F

    aput v0, v3, v7

    invoke-virtual {v1, v3}, Landroid/animation/ObjectAnimator;->setFloatValues([F)V

    if-nez p2, :cond_2

    new-instance v2, Lcom/android/launcher3/home/Workspace$14;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$14;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    :goto_2
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1

    :cond_2
    new-instance v2, Lcom/android/launcher3/home/Workspace$15;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/launcher3/home/Workspace$15;-><init>(Lcom/android/launcher3/home/Workspace;Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method

.method setDefaultPage(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    return-void
.end method

.method setDefaultPage(IZ)V
    .locals 6

    if-eqz p2, :cond_1

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-eq v1, p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v0, p1, -0x1

    :goto_0
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0901b3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090120

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    int-to-long v4, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->updateHomeDefaultZeroPageKey(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/Utilities;->setHomeDefaultPageKey(Landroid/content/Context;I)V

    :cond_1
    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    return-void

    :cond_2
    move v0, p1

    goto :goto_0
.end method

.method setDelayedResizeRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDelayedResizeRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method public setRestorePage(I)V
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/Workspace;->mRestorePage:I

    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->setTargetView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method setVisibilityOnCustomLayout(ZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZ)V

    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZ)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    return-void
.end method

.method setVisibilityOnCustomLayout(ZZZI)V
    .locals 11

    const/16 v8, 0x8

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v6

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v2, :cond_0

    if-eqz p1, :cond_5

    iput-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    :cond_2
    :goto_1
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_3
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_4

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v10

    if-eqz p1, :cond_6

    move v6, v8

    :goto_3
    if-ne v10, v6, :cond_3

    :cond_4
    if-eqz p1, :cond_7

    move v6, v7

    :goto_4
    invoke-virtual {p0, v0, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    move v4, p1

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "Launcher.Workspace"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setVisibilityOnCustomLayout : pageIndex = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", indexOfChild(mCustomPage) = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v10}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mCustomPage:Lcom/android/launcher3/home/WorkspaceCellLayout;

    goto :goto_1

    :cond_6
    move v6, v7

    goto :goto_3

    :cond_7
    move v6, v8

    goto :goto_4

    :cond_8
    if-eqz v4, :cond_9

    invoke-direct {p0, p4}, Lcom/android/launcher3/home/Workspace;->checkAlignButtonEnabled(I)V

    :cond_9
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_b

    if-eqz p2, :cond_a

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_f

    move v6, v8

    :goto_5
    if-ne v9, v6, :cond_b

    :cond_a
    if-eqz p1, :cond_10

    move v6, v7

    :goto_6
    invoke-virtual {p0, v5, v6, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    :cond_b
    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->canDeleteScreen()Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_c
    invoke-virtual {v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-virtual {p0, p4}, Lcom/android/launcher3/home/Workspace;->isEmptyPage(I)Z

    move-result v6

    if-nez v6, :cond_d

    if-nez p1, :cond_0

    const/4 p2, 0x1

    :cond_d
    if-eqz p2, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v9

    if-eqz p1, :cond_11

    move v6, v8

    :goto_7
    if-ne v9, v6, :cond_0

    :cond_e
    if-eqz p1, :cond_12

    :goto_8
    invoke-virtual {p0, v3, v7, p3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto/16 :goto_0

    :cond_f
    move v6, v7

    goto :goto_5

    :cond_10
    move v6, v8

    goto :goto_6

    :cond_11
    move v6, v7

    goto :goto_7

    :cond_12
    move v7, v8

    goto :goto_8
.end method

.method protected setWallpaperDimension()V
    .locals 0

    return-void
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;)V
    .locals 3

    iput-object p1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDragListener(Lcom/android/launcher3/common/drag/DragManager$DragListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->addDropTarget(Lcom/android/launcher3/common/drag/DropTarget;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mWsDragController:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mDragMgr:Lcom/android/launcher3/common/drag/DragManager;

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1, p2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V

    return-void
.end method

.method setupShrinkFactor()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/launcher3/home/Workspace;->mOverviewShrinkFactor:F

    return-void
.end method

.method showDefaultHomeIcon(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    const-wide/16 v2, -0x191

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v1

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeIcon:Landroid/view/View;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    goto :goto_0
.end method

.method protected snapToPage(IIIZLandroid/animation/TimeInterpolator;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super/range {p0 .. p5}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIIZLandroid/animation/TimeInterpolator;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isOverviewState()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    if-eq v0, p1, :cond_3

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, -0x12d

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-eq p1, v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x191

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v0

    if-ne p1, v0, :cond_4

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eq v0, v4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v2, v2, v3, v0}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    invoke-virtual {p0, v3, v2, v3, p1}, Lcom/android/launcher3/home/Workspace;->setVisibilityOnCustomLayout(ZZZI)V

    :cond_3
    return-void

    :cond_4
    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mTouchState:I

    if-eq v0, v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->showDefaultHomeIcon(Z)V

    goto :goto_0
.end method

.method public snapToPage(IILandroid/animation/TimeInterpolator;)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, p1, p2, v0, p3}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    return-void
.end method

.method protected snapToPage(IILjava/lang/Runnable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    iput-object p3, p0, Lcom/android/launcher3/home/Workspace;->mDelayedSnapToPageRunnable:Ljava/lang/Runnable;

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(II)V

    return-void
.end method

.method protected snapToPage(IIZLandroid/animation/TimeInterpolator;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPage(IIZLandroid/animation/TimeInterpolator;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mZeroPageController:Lcom/android/launcher3/home/ZeroPageController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/home/Workspace$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/Workspace$7;-><init>(Lcom/android/launcher3/home/Workspace;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected snapToPage(ILjava/lang/Runnable;)V
    .locals 1

    const/16 v0, 0x3b6

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/home/Workspace;->snapToPage(IILjava/lang/Runnable;)V

    return-void
.end method

.method public snapToPageImmediately(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/PagedView;->snapToPageImmediately(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->isNormalState()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_0
    return-void
.end method

.method public snapToPageSALoggging(Z)V
    .locals 8

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b9

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090183

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
    iget-object v2, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b3

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f090123

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f0901b7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f09015c

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    int-to-long v6, v0

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_1
.end method

.method snapToScreenId(J)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/Workspace;->snapToScreenId(JLjava/lang/Runnable;)V

    return-void
.end method

.method public touchPageDeleteButton()V
    .locals 2

    iget v1, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-virtual {p0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->touchPageDeleteBtn()V

    goto :goto_0
.end method

.method updateAccessibilityFlags(Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v1

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndexToStart()I

    move-result v0

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v2, v0, p1}, Lcom/android/launcher3/home/Workspace;->updateAccessibilityFlags(Lcom/android/launcher3/common/base/view/CellLayout;IZ)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/Workspace;->setImportantForAccessibility(I)V

    return-void

    :cond_1
    const/4 v2, 0x4

    goto :goto_1
.end method

.method updateCheckBox(Z)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_5

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

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

.method updateChildrenLayersEnabled(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(ZZ)V

    return-void
.end method

.method updateDefaultHome(II)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v0

    const-wide/16 v2, -0x12d

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(I)V

    iget v0, p0, Lcom/android/launcher3/home/Workspace;->mCurrentPage:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomeIcon(I)V

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    if-eq p1, p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_0
.end method

.method updateDefaultHomePageBg(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iget v2, p0, Lcom/android/launcher3/home/Workspace;->mDefaultPage:I

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method updateDefaultHomePageIndicator(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->getPageIndicatorMarker(I)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/common/view/PageIndicator;->updateHomeMarker(ILcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;)V

    :cond_0
    return-void
.end method

.method updateDefaultHomeScreenId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher3/home/Workspace;->mDefaultHomeScreenId:J

    return-void
.end method

.method protected updatePageTransform(Landroid/view/View;II)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    if-eq v1, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/launcher3/home/Workspace;->getScrollProgress(ILandroid/view/View;I)F

    move-result v0

    invoke-direct {p0}, Lcom/android/launcher3/home/Workspace;->isCurrentTransitionEffectDefault()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    sget-boolean v1, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/launcher3/home/Workspace;->resetTransitionEffect(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    cmpg-float v1, v0, v3

    if-ltz v1, :cond_2

    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/PagedView;->updatePageTransform(Landroid/view/View;II)V

    goto :goto_0

    :cond_5
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_6

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-nez v1, :cond_7

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->reset(Landroid/view/View;)V

    :cond_7
    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v4

    if-gt v1, p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mTempVisiblePagesRange:[I

    aget v1, v1, v5

    if-gt p2, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/Workspace;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getPageTransitionManager()Lcom/android/launcher3/pagetransition/PageTransitionManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/pagetransition/PageTransitionManager;->transformPage(Landroid/view/View;F)V

    goto :goto_0
.end method
