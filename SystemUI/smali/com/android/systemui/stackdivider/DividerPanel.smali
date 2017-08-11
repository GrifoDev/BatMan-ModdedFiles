.class public Lcom/android/systemui/stackdivider/DividerPanel;
.super Lcom/android/systemui/SystemUI;
.source "DividerPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;,
        Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;,
        Lcom/android/systemui/stackdivider/DividerPanel$H;,
        Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;
    }
.end annotation


# instance fields
.field private mConfiguration:Landroid/content/res/Configuration;

.field private mDividerMinimized:Z

.field private mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

.field private mDividerVisible:Z

.field private final mH:Landroid/os/Handler;

.field private final mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

.field private mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

.field private mSnapViewMode:Z

.field private mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

.field private mTmpConfiguration:Landroid/content/res/Configuration;

.field private mTmpResources:Landroid/content/res/Resources;

.field private mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

.field private mVisible:Z

.field private mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;


# direct methods
.method static synthetic -com_android_systemui_stackdivider_DividerPanel_lambda$1()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static synthetic -com_android_systemui_stackdivider_DividerPanel_lambda$2()V
    .locals 3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method static synthetic -get0(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/stackdivider/DividerPanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/stackdivider/DividerPanel;)Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/systemui/stackdivider/DividerPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->postDividerVisibilityChanged(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/stackdivider/DividerPanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/stackdivider/DividerPanel;->postDockedStackMinimizedChanged(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    new-instance v0, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    invoke-direct {v0}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    iput-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$H;

    invoke-direct {v0}, Lcom/android/systemui/stackdivider/DividerPanel$H;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    return-void
.end method

.method private addButtons(Landroid/content/res/Configuration;)V
    .locals 10

    const/4 v7, 0x0

    iput-object p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    iget v6, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v8, 0x2

    if-ne v6, v8, :cond_0

    const/4 v2, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v8, 0x7f0400dc

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iput-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v5

    :goto_1
    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v0

    :goto_2
    invoke-virtual {v4, v7, v7, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    const/4 v6, 0x1

    :goto_3
    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-boolean v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->notifySnapMode(Z)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v6, v7, v5, v0}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->add(Landroid/view/View;II)V

    iget-object v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v6, v7}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setWindowManager(Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;)V

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowLongLengthPixel()I

    move-result v5

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->getWindowShortLengthPixel()I

    move-result v0

    goto :goto_2

    :cond_3
    move v6, v7

    goto :goto_3
.end method

.method private addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->add(Landroid/view/View;II)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->setWindowManager(Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, p4}, Lcom/android/systemui/stackdivider/DividerSnapView;->initGuideViewSize(I)V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0, p1, p2, p3, p5}, Lcom/android/systemui/stackdivider/DividerSnapView;->makeVisible(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    return-void
.end method

.method private addSnapView(ZILandroid/graphics/Rect;Ljava/lang/String;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V

    return-void
.end method

.method private endSnapMode()V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    const/4 v3, 0x0

    invoke-direct {v1, v4, v4, v3, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;

    const/4 v2, 0x1

    invoke-direct {v1, v4, v2}, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;-><init>(ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void
.end method

.method private getWindowLongLengthPixel()I
    .locals 11

    const/4 v9, 0x1

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpConfiguration:Landroid/content/res/Configuration;

    iget v8, v8, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v8, v10, :cond_1

    move v4, v9

    :goto_0
    if-nez v4, :cond_2

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    :goto_1
    sget-boolean v8, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-eqz v8, :cond_3

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    :goto_2
    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0d001d

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float v1, v8, v10

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0d001a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float v0, v8, v10

    iget-object v8, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v10, 0x7f0d0017

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    iget-object v10, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v10, v10, Landroid/util/DisplayMetrics;->density:F

    div-float v6, v8, v10

    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, v1

    add-float v10, v8, v0

    if-eqz v3, :cond_4

    add-float v8, v1, v0

    :goto_3
    add-float/2addr v8, v10

    if-eqz v2, :cond_0

    add-float v7, v1, v0

    :cond_0
    add-float/2addr v7, v8

    add-float v5, v7, v6

    iget-object v7, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    invoke-static {v9, v5, v7}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    return v7

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    move v8, v7

    goto :goto_3
.end method

.method private getWindowShortLengthPixel()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mTmpResources:Landroid/content/res/Resources;

    const v1, 0x7f0d0010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private initSnapViewWindow()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040054

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/stackdivider/DividerSnapView;

    iput-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    :cond_0
    return-void
.end method

.method private postDividerVisibilityChanged(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDividerVisibilityChanged_boolean_visible_LambdaImpl0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private postDockedStackMinimizedChanged(Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->shouldHide()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v2, "finish"

    invoke-direct {v1, v3, v3, v4, v2}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    new-instance v1, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;

    invoke-direct {v1}, Lcom/android/systemui/stackdivider/DividerPanel$-void_postDockedStackMinimizedChanged_boolean_minimized_LambdaImpl0;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method private removeSnapView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;->remove()V

    :cond_0
    return-void
.end method

.method private shouldHide()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public canStartSnapView()Z
    .locals 9

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v4, v1, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v0

    iget-boolean v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-nez v4, :cond_0

    if-nez v3, :cond_0

    if-nez v0, :cond_0

    if-nez v1, :cond_3

    :cond_0
    const-string/jumbo v5, "SnapWindow"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "canStartSnapView()  minimized = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v6, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ", unResizeableTask = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v6, ",  isScreenPinning = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_2

    const-string/jumbo v4, " no running task "

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v8

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " tid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v7, v1, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    return v4
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/android/systemui/SystemUI;->finalize()V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/recents/events/EventBus;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public isSnapViewActivated()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v0}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string/jumbo v0, "SnapWindow"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "snapView exist mSnapView.getVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isVisible()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    if-eq v1, v0, :cond_2

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mVisible:Z

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isOnce()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mH:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/stackdivider/DividerPanel;->addButtons(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v5}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v5}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;->isAnimate()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->animate(Z)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->cancelAnimate()V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1, v3}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->setTouchable(Z)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/systemui/stackdivider/DividerButtonsGroup;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;->remove()V

    iput-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mView:Lcom/android/systemui/stackdivider/DividerButtonsGroup;

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;)V
    .locals 6

    const/4 v1, 0x1

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mVisible:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->initSnapViewWindow()V

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget v2, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mAdjConventionalMode:I

    iput v2, v0, Lcom/android/systemui/stackdivider/DividerSnapView;->mAdjConventionalMode:I

    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    if-eqz v0, :cond_0

    iget v2, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iget-object v3, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iget v4, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mInitSize:I

    iget-object v5, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;ILjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapTarget:I

    iget-object v2, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mDockedRect:Landroid/graphics/Rect;

    iget-object v3, p1, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;->mSnapCaller:Ljava/lang/String;

    invoke-direct {p0, v1, v0, v2, v3}, Lcom/android/systemui/stackdivider/DividerPanel;->addSnapView(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeSnapView()V

    goto :goto_0
.end method

.method public final onBusEvent(Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iput-boolean v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    iget-boolean v0, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget v1, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mReason:I

    iput v1, v0, Lcom/android/systemui/stackdivider/DividerSnapView;->mUnSnapReason:I

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    iget-boolean v1, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mStart:Z

    iget-boolean v2, p1, Lcom/android/systemui/stackdivider/events/DividerStartSnapModeEvent;->mSendToSerivce:Z

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->startSnapMode(ZZ)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/systemui/stackdivider/DividerSnapView;->mUnSnapReason:I

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/SystemUI;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    invoke-direct {v2, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    sget-boolean v1, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->endSnapMode()V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/stackdivider/DividerPanel;->removeSnapView()V

    iput-object v5, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewWindowManager:Lcom/android/systemui/stackdivider/DividerSnapViewWindowManager;

    :cond_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v1}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f0004

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public showSnapWindowGuideView(ILjava/lang/String;)V
    .locals 26

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v2, :cond_11

    sget-boolean v2, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->MULTIWINDOW_DYNAMIC_ENABLED:Z

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0008

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapViewMode:Z

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mSnapView:Lcom/android/systemui/stackdivider/DividerSnapView;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/DividerSnapView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const-string/jumbo v4, "finish"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v25, 0x0

    move-object/from16 v0, v25

    invoke-direct {v3, v6, v7, v0, v4}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_3
    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getRunningSnapTargetTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, v17

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    invoke-static {v2}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isHomeStack(I)Z

    move-result v11

    :goto_0
    if-eqz v17, :cond_6

    move-object/from16 v0, v17

    iget v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->resizeMode:I

    if-nez v2, :cond_6

    const/16 v24, 0x1

    :goto_1
    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->isScreenPinningActive()Z

    move-result v12

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    if-nez v2, :cond_4

    if-nez v11, :cond_4

    if-nez v24, :cond_4

    if-nez v12, :cond_4

    if-nez v17, :cond_9

    :cond_4
    const-string/jumbo v3, "SnapWindow"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " minimized "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerMinimized:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v17, :cond_7

    const-string/jumbo v2, " no running task "

    :goto_2
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    :goto_3
    invoke-virtual/range {v23 .. v23}, Landroid/widget/Toast;->show()V

    return-void

    :cond_5
    const/4 v11, 0x0

    goto :goto_0

    :cond_6
    const/16 v24, 0x0

    goto :goto_1

    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " tid "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    iget v6, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f0007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v23

    goto :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerVisible:Z

    if-eqz v2, :cond_c

    move-object/from16 v0, v17

    iget v10, v0, Landroid/app/ActivityManager$RunningTaskInfo;->stackId:I

    const/4 v2, 0x3

    if-eq v10, v2, :cond_a

    const/4 v2, 0x1

    if-ne v10, v2, :cond_c

    :cond_a
    const/4 v2, 0x3

    if-ne v10, v2, :cond_b

    const/16 v18, 0x1

    :goto_4
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    const-class v2, Lcom/android/systemui/stackdivider/Divider;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/systemui/stackdivider/DividerPanel;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/stackdivider/Divider;

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/Divider;->getView()Lcom/android/systemui/stackdivider/DividerView;

    move-result-object v2

    invoke-virtual {v2, v10, v5}, Lcom/android/systemui/stackdivider/DividerView;->getFocusedStackRect(ILandroid/graphics/Rect;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/events/DividerButtonsVisibleEvent;-><init>(I)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v4, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p2

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    return-void

    :cond_b
    const/16 v18, 0x2

    goto :goto_4

    :cond_c
    const/16 v21, 0x1

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    check-cast v9, Lcom/android/systemui/SystemUIApplication;

    const-class v2, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v9, v2}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getDisplayRect()Landroid/graphics/Rect;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const/4 v8, 0x0

    move-object/from16 v0, v17

    iget-boolean v2, v0, Landroid/app/ActivityManager$RunningTaskInfo;->isConventionalMode:Z

    if-eqz v2, :cond_13

    invoke-static {}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getInstance()Lcom/android/systemui/stackdivider/WindowManagerProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/stackdivider/WindowManagerProxy;->getSnapTargetAspectRatioRect()Landroid/graphics/Rect;

    move-result-object v15

    if-nez v15, :cond_d

    return-void

    :cond_d
    invoke-virtual {v5, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-eqz v20, :cond_f

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v22

    if-eqz v22, :cond_e

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_12

    const/16 v21, 0x0

    :cond_e
    :goto_5
    if-nez v21, :cond_f

    iget v2, v5, Landroid/graphics/Rect;->top:I

    const v3, 0x1050017

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->top:I

    :cond_f
    iget v8, v5, Landroid/graphics/Rect;->top:I

    :cond_10
    :goto_6
    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v25

    new-instance v2, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;

    const/4 v3, 0x1

    const/4 v4, 0x3

    move/from16 v6, p1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/stackdivider/events/DividerSnapViewVisibleEvent;-><init>(ZILandroid/graphics/Rect;ILjava/lang/String;I)V

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lcom/android/systemui/recents/events/EventBus;->post(Lcom/android/systemui/recents/events/EventBus$Event;)V

    :cond_11
    return-void

    :cond_12
    const/16 v21, 0x1

    goto :goto_5

    :cond_13
    if-eqz v20, :cond_15

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v22

    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v14

    if-eqz v22, :cond_14

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_17

    const/16 v21, 0x0

    :cond_14
    :goto_7
    if-eqz v14, :cond_15

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isShown()Z

    move-result v2

    if-eqz v2, :cond_18

    const/4 v13, 0x0

    :cond_15
    :goto_8
    if-nez v21, :cond_16

    const v2, 0x1050017

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v5, Landroid/graphics/Rect;->top:I

    :cond_16
    if-nez v13, :cond_10

    iget v2, v5, Landroid/graphics/Rect;->bottom:I

    const v3, 0x1050018

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_6

    :cond_17
    const/16 v21, 0x1

    goto :goto_7

    :cond_18
    const/4 v13, 0x1

    goto :goto_8
.end method

.method public start()V
    .locals 6

    const/4 v5, 0x0

    new-instance v3, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mWindowManager:Lcom/android/systemui/stackdivider/DividerButtonsWindowManager;

    const-class v3, Lcom/android/systemui/stackdivider/DividerPanel;

    invoke-virtual {p0, v3, p0}, Lcom/android/systemui/stackdivider/DividerPanel;->putComponent(Ljava/lang/Class;Ljava/lang/Object;)V

    new-instance v0, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;

    invoke-direct {v0, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$DockedStackListener;)V

    new-instance v3, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;

    invoke-direct {v3, p0, v5}, Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;Lcom/android/systemui/stackdivider/DividerPanel$MultiWindowDividerPanelListener;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mMultiWindowManager:Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mDividerPanelListener:Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;

    invoke-virtual {v3, v4}, Lcom/samsung/android/bridge/multiwindow/MultiWindowManagerBridge;->registerMultiWindowDividerPanelListener(Lcom/samsung/android/multiwindow/IMultiWindowDividerPanelListener;)V

    invoke-static {}, Lcom/android/systemui/recents/Recents;->getSystemServices()Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V

    invoke-static {}, Lcom/android/systemui/recents/events/EventBus;->getDefault()Lcom/android/systemui/recents/events/EventBus;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/systemui/recents/events/EventBus;->register(Ljava/lang/Object;)V

    sget-boolean v3, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/res/Configuration;

    iget-object v4, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mConfiguration:Landroid/content/res/Configuration;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "com.samsung.android.intent.action.POPUP_GUIDE_SNAP_TARGET_FULLSCREEN"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/stackdivider/DividerPanel;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/systemui/stackdivider/DividerPanel$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/stackdivider/DividerPanel$1;-><init>(Lcom/android/systemui/stackdivider/DividerPanel;)V

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method
