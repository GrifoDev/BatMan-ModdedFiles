.class public Lcom/android/launcher3/allapps/view/AppsSearchContainerView;
.super Lcom/android/launcher3/common/base/view/BaseContainerView;
.source "AppsSearchContainerView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/common/base/view/LauncherTransitionable;
.implements Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
.implements Lcom/android/launcher3/allapps/view/AppsSearchWrapper;


# static fields
.field private static final GALAXYAPPS:Ljava/lang/String; = "com.sec.android.app.samsungapps"

.field private static final MAX_NUM_MERGES_PHONE:I = 0x2

.field private static final MIN_ROWS_IN_MERGED_SECTION_PHONE:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

.field private mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

.field private mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

.field private final mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

.field private mContainerView:Landroid/view/View;

.field private mContent:Landroid/view/View;

.field private final mIconLastTouchPos:Landroid/graphics/Point;

.field private mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private mNumAppsPerRow:I

.field private mNumPredictedAppsPerRow:I

.field mRecentAppsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mRecyclerViewTopBottomPadding:I

.field private mSearchBarContainerView:Landroid/view/ViewGroup;

.field private mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

.field private mSearchBarView:Landroid/view/View;

.field private mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

.field private mSearchSubTitle:Landroid/widget/TextView;

.field private mSearchSubTitleBar:Landroid/widget/LinearLayout;

.field private mSearchSubTitleText:Landroid/widget/TextView;

.field mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

.field thread:Lcom/android/launcher3/allapps/UpdateCheckThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/base/view/BaseContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/allapps/UpdateCheckThread;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/Launcher;

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v1, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    new-instance v1, Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v2, v3, p0, v4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/allapps/AlphabeticalAppsList;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getLayoutManager()Landroid/support/v7/widget/GridLayoutManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->getItemDecoration()Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    const v1, 0x7f0a00fb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecyclerViewTopBottomPadding:I

    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    return-object v0
.end method

.method private getRecentApp()V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UseSparseArrays"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->restoreRecentApps()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setRecentAppMap(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private handleTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    float-to-int v7, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    float-to-int v8, v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x0

    :goto_1
    return v9

    :pswitch_1
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    new-instance v5, Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContentBounds:Landroid/graphics/Rect;

    invoke-direct {v5, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v9, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v9

    neg-int v9, v9

    div-int/lit8 v9, v9, 0x2

    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/graphics/Rect;->inset(II)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget v10, v5, Landroid/graphics/Rect;->right:I

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    :cond_1
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getPaddingLeft()I

    move-result v10

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-ltz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getWidth()I

    move-result v10

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getPaddingRight()I

    move-result v11

    sub-int/2addr v10, v11

    int-to-float v10, v10

    cmpl-float v9, v9, v10

    if-lez v9, :cond_0

    :cond_3
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    invoke-virtual {v9, v7, v8}, Landroid/graphics/Point;->set(II)V

    const/4 v9, 0x1

    goto :goto_1

    :pswitch_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, -0x1

    if-le v9, v10, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    int-to-float v10, v10

    sub-float v1, v9, v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    iget-object v10, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    int-to-float v10, v10

    sub-float v2, v9, v10

    float-to-double v10, v1

    float-to-double v12, v2

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    double-to-float v0, v10

    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v9

    int-to-float v9, v9

    cmpg-float v9, v0, v9

    if-gez v9, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v9

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    const/4 v9, 0x1

    goto/16 :goto_1

    :cond_4
    :pswitch_3
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mBoundsCheckLastTouchDownPos:Landroid/graphics/Point;

    const/4 v10, -0x1

    const/4 v11, -0x1

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private restoreRecentApps()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "recentAppForSearch"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method

.method private saveRecentApp(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v2, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v5, "recentAppForSearch"

    invoke-interface {v0, v5, v3}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private startGalaxyAppsSearch(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/allapps/UpdateCheckThread;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/android/launcher3/allapps/UpdateCheckThread;-><init>(Landroid/content/Context;ZLjava/lang/String;Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/allapps/UpdateCheckThread;

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->thread:Lcom/android/launcher3/allapps/UpdateCheckThread;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/UpdateCheckThread;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->addApps(Ljava/util/List;)V

    return-void
.end method

.method public changeColorAndBackground(Z)V
    .locals 0

    return-void
.end method

.method public clearSearchResult()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->onSearchResultsChanged()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setSearchText(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1, v3}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-static {v0, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->isSearchFieldFocused()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v2

    if-lez v2, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {}, Landroid/text/method/TextKeyListener;->getInstance()Landroid/text/method/TextKeyListener;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    invoke-virtual {v3, p0, v4, v5, p1}, Landroid/text/method/TextKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchQueryBuilder:Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/base/view/BaseContainerView;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v3

    return v3

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    return-object v0
.end method

.method public getRecentAppListSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    check-cast v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->hidePopupMenu()V

    :cond_0
    return-void
.end method

.method public launchSfinder()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public newDefaultAppSearchController(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
    .locals 3

    new-instance v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-direct {v0, v1, p0, v2, p1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsSearchContainerView;Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;Lcom/android/launcher3/allapps/controller/AppsController;)V

    return-object v0
.end method

.method public onBoundsChanged(Landroid/graphics/Rect;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onFinishInflate()V

    const v3, 0x7f110051

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContent:Landroid/view/View;

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)V

    const v3, 0x7f11004d

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v3, 0x7f110052

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mContainerView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v3, 0x7f11004e

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const v3, 0x7f110050

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    const v3, 0x7f11004f

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    const v3, 0x7f11005a

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLayoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setHasFixedSize(Z)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mItemDecoration:Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    new-instance v4, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;

    invoke-direct {v4, p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView$2;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchContainerView;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isLargeTablet()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    :goto_0
    new-instance v3, Lcom/android/launcher3/allapps/view/FullMergeAlgorithm;

    invoke-direct {v3}, Lcom/android/launcher3/allapps/view/FullMergeAlgorithm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    iget-object v3, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumPredictedAppsPerRow:I

    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onGalaxyAppsSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->clearGalaxyItems()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const-string v1, "com.sec.android.app.samsungapps"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->isAppInstalled(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->startGalaxyAppsSearch(Ljava/lang/String;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onLauncherTransitionEnd(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->reset()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->reset()V

    :cond_0
    return-void
.end method

.method public onLauncherTransitionPrepare(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method public onLauncherTransitionStart(Lcom/android/launcher3/Launcher;ZZLcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->setNumAppsPerRow(Lcom/android/launcher3/common/deviceprofile/DeviceProfile;I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setNumAppsPerRow(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    iget v3, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumPredictedAppsPerRow:I

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mergeAlgorithm:Lcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setNumAppsPerRow(IILcom/android/launcher3/allapps/AlphabeticalAppsList$MergeAlgorithm;)V

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/base/view/BaseContainerView;->onMeasure(II)V

    return-void
.end method

.method public onSearchResult(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setOrderedFilter(Ljava/util/ArrayList;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->setLastSearchQuery(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->onSearchResultsChanged()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->clearGalaxyItems()V

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showSearchTitle(Z)V

    goto :goto_0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mIconLastTouchPos:Landroid/graphics/Point;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->handleTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onUpdateBackgroundAndPaddings(Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public removeApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->removeApps(Ljava/util/List;)V

    return-void
.end method

.method public removeRecentAppMap(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iput-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    :cond_2
    return-void
.end method

.method public resume()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "search_recommend"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/launcher3/LauncherFeature;->setSupportGalaxyAppsSearch(Z)V

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->scrollToTop()V

    return-void
.end method

.method public setApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setApps(Ljava/util/List;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentApp()V

    :cond_0
    return-void
.end method

.method public setClearRecentAppList()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mAdapter:Lcom/android/launcher3/allapps/AllAppsGridAdapter;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public setController(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/controller/AppsController;)V

    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setPredictedApps(Ljava/util/List;)V

    return-void
.end method

.method public setRecentAppMap()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setRecentAppMap(Ljava/util/ArrayList;)V

    return-void
.end method

.method public setSearchBarController(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->newDefaultAppSearchController(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1, v2, p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->initialize(Lcom/android/launcher3/allapps/AlphabeticalAppsList;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarContainerView:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setHasSearchBar()V

    goto :goto_0
.end method

.method public showHistoryTitle(Z)V
    .locals 4

    const/16 v3, 0x8

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    instance-of v0, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    check-cast v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->showPopupMenu()Z

    :cond_0
    return-void
.end method

.method public showSearchTitle(Z)V
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitle:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchSubTitleBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->hidePopupMenu()V

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startAppsSearch()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->focusSearchField()V

    :cond_0
    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 8

    const/4 v4, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateFrom()I

    move-result v1

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getInternalStateTo()I

    move-result v3

    iget-boolean v0, p2, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-ne v3, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->bringToFront()V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v7}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2

    :cond_2
    if-ne v1, v4, :cond_1

    if-nez v3, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5, v7}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mSearchBarController:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;->getSearchBarEditView()Landroid/widget/SearchView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/SearchView;->clearFocus()V

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->showHistoryTitle(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getContentView()Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2}, Lcom/android/launcher3/common/stage/StageEntry;->getLayerViews()Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {p1, v0, v4, v6}, Lcom/android/launcher3/allapps/AppsTransitionAnimation;->getSearchAnimation(ZLjava/util/HashMap;Z)Landroid/animation/AnimatorSet;

    move-result-object v2

    goto :goto_0
.end method

.method public updateAndSaveRecentApps(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-eqz v5, :cond_1

    move v2, v5

    :goto_0
    if-lez v2, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    iget v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mNumAppsPerRow:I

    mul-int/lit8 v6, v6, 0x2

    if-lt v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    add-int/lit8 v7, v2, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->saveRecentApp(Ljava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_4
    const/4 v4, 0x0

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v1, v6, -0x1

    move v2, v1

    :goto_2
    if-lez v2, :cond_7

    if-eqz v4, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_6
    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    const/4 v4, 0x1

    goto :goto_3

    :cond_7
    if-eqz v4, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-virtual {v6, v8, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mRecentAppsList:Ljava/util/ArrayList;

    invoke-direct {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->saveRecentApp(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method public updateApps(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateApps(Ljava/util/List;)V

    return-void
.end method

.method public updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->setRecentAppMap()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->updateAndSaveRecentApps(Lcom/android/launcher3/common/base/item/IconInfo;)V

    return-void
.end method
