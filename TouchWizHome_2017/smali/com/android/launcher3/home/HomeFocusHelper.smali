.class Lcom/android/launcher3/home/HomeFocusHelper;
.super Ljava/lang/Object;
.source "HomeFocusHelper.java"


# static fields
.field static final ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final DEBUG:Z = false

.field static final HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field private static final TAG:Ljava/lang/String; = "HomeFocusHelper"

.field static final WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

.field static final ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->WORKSPACE_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOTSEAT_ICON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$3;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$3;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ALIGN_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$4;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$4;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->HOME_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$5;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$5;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->PAGE_DELETE_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$6;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->OVERVIEW_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$7;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$7;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->ZERO_PAGE_SWITCH_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$8;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$8;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_TOP_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/home/HomeFocusHelper$9;

    invoke-direct {v0}, Lcom/android/launcher3/home/HomeFocusHelper$9;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HomeFocusHelper;->SCREENGRID_PANEL_OPTION_BUTTON_KEY_LISTENER:Landroid/view/View$OnKeyListener;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/home/HomeFocusHelper;->handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method private static getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    if-eqz v4, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageDeleteBtn()Landroid/view/View;

    move-result-object v4

    :goto_0
    return-object v4

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getAlignLayoutList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private static getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getOverviewPanel()Lcom/android/launcher3/home/OverviewPanel;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static handleAlignButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v8, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {p0, v8, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p0, v9, v9, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0, v9, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    const v8, 0x7f110094

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v1

    goto :goto_1

    :cond_3
    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    move-object v4, v6

    goto :goto_1

    :cond_4
    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    if-eqz v3, :cond_2

    move-object v4, v3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_6

    move-object v4, v6

    goto :goto_1

    :cond_6
    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_7

    move-object v4, v0

    goto :goto_1

    :cond_7
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v5, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHomeButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-eq v7, v9, :cond_0

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_2

    const/16 v7, 0x15

    if-ne p1, v7, :cond_4

    const/16 p1, 0x16

    :cond_2
    :goto_1
    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_2
    :sswitch_0
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    const/16 v7, 0x16

    if-ne p1, v7, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_1
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0, v8, v8, v9}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-static {p0, v8, v9, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v5

    if-eqz v6, :cond_5

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_6

    move-object v3, v1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_7

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_7

    move-object v3, v5

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    move-object v3, v0

    goto :goto_2

    :cond_8
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method private static handleHotseatButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 24

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_0

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/Launcher;

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v13, :cond_0

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    const v23, 0x7f11000e

    move/from16 v0, v23

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/home/Workspace;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    const/4 v3, -0x1

    const/4 v4, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    move-object/from16 v0, v22

    invoke-virtual {v0, v7}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v14, :cond_0

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v15

    if-eqz v15, :cond_0

    const/4 v9, 0x0

    const/4 v5, 0x0

    check-cast v5, [[I

    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x1

    invoke-static {v14, v12, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    array-length v3, v5

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v23

    add-int v4, v2, v23

    move-object v9, v15

    :goto_1
    move/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v20

    const/16 v19, 0x0

    const/4 v2, -0x8

    move/from16 v0, v20

    if-ne v0, v2, :cond_a

    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_2
    :goto_2
    if-ne v9, v15, :cond_3

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v20

    if-lt v0, v2, :cond_3

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v20, v20, v2

    :cond_3
    if-nez v19, :cond_4

    if-ltz v20, :cond_4

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    :cond_4
    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->requestFocus()Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x15

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-static {v14, v12, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/2addr v6, v2

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v23

    add-int v3, v2, v23

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    move-object v9, v15

    goto :goto_1

    :cond_6
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_7

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_7

    const/16 p1, 0x5d

    goto :goto_1

    :cond_7
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_8

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto/16 :goto_0

    :cond_8
    const/16 v2, 0x43

    move/from16 v0, p1

    if-ne v0, v2, :cond_9

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v11

    if-eqz v11, :cond_0

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-ne v2, v0, :cond_0

    invoke-virtual {v11}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/16 v23, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v23

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto/16 :goto_0

    :cond_9
    invoke-static {v12}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    move-object v9, v13

    goto/16 :goto_1

    :cond_a
    const/4 v2, -0x4

    move/from16 v0, v20

    if-ne v0, v2, :cond_b

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :cond_b
    const/16 v2, -0xb

    move/from16 v0, v20

    if-ne v0, v2, :cond_c

    const/4 v2, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :cond_c
    const/4 v2, -0x3

    move/from16 v0, v20

    if-ne v0, v2, :cond_d

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :cond_d
    const/4 v2, -0x1

    move/from16 v0, v20

    if-ne v0, v2, :cond_2

    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v17

    if-eqz v17, :cond_2

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v18

    if-eqz v18, :cond_2

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v19, v18

    goto/16 :goto_2
.end method

.method private static handleIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 33

    invoke-static/range {p1 .. p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/4 v10, 0x1

    if-eq v2, v10, :cond_0

    if-nez v18, :cond_1

    :cond_0
    :goto_0
    return v18

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/Launcher;

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v30

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v32

    check-cast v32, Lcom/android/launcher3/home/Workspace;

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    check-cast v19, Landroid/view/ViewGroup;

    const v2, 0x7f11000d

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, p0

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->indexOfChild(Landroid/view/View;)I

    move-result v6

    move-object/from16 v0, v32

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v8

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Hotseat;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v23

    const/16 v2, 0x14

    move/from16 v0, p1

    if-ne v0, v2, :cond_3

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    invoke-virtual/range {v22 .. v22}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v2

    add-int/2addr v4, v2

    :goto_1
    move/from16 v2, p1

    invoke-static/range {v2 .. v9}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    const/16 v28, 0x0

    packed-switch v29, :pswitch_data_0

    if-ltz v29, :cond_9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v29

    if-ge v0, v2, :cond_9

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    :cond_2
    :goto_2
    if-eqz v28, :cond_0

    invoke-virtual/range {v28 .. v28}, Landroid/view/View;->requestFocus()Z

    move/from16 v0, p1

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    const/16 v2, 0x16

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/view/CellLayout;Z)[[I

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0x70

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v10

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    invoke-virtual {v10, v2, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto/16 :goto_0

    :cond_5
    const/16 v2, 0x43

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v20

    if-eqz v20, :cond_0

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    const/4 v10, 0x1

    if-ne v2, v10, :cond_0

    invoke-virtual/range {v20 .. v20}, Lcom/android/launcher3/home/HomeController;->isModalState()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    const/4 v10, 0x0

    move-object/from16 v0, v25

    invoke-virtual {v0, v2, v10}, Lcom/android/launcher3/Launcher;->showAppsView(ZZ)V

    goto/16 :goto_0

    :cond_6
    invoke-static/range {v24 .. v24}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;)[[I

    move-result-object v5

    goto/16 :goto_1

    :pswitch_0
    const/16 v2, 0x13

    move/from16 v0, p1

    if-ne v0, v2, :cond_2

    invoke-virtual/range {v25 .. v25}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v26

    if-eqz v26, :cond_2

    invoke-virtual/range {v26 .. v26}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    move-result-object v27

    if-eqz v27, :cond_2

    invoke-virtual/range {v27 .. v27}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v28, v27

    goto/16 :goto_2

    :pswitch_1
    add-int/lit8 v15, v7, -0x1

    const/16 v2, -0xa

    move/from16 v0, v29

    if-ne v0, v2, :cond_7

    add-int/lit8 v15, v7, 0x1

    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v31, v0

    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    add-int/lit8 v11, v2, 0x1

    invoke-virtual/range {v24 .. v24}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v12

    const/16 v14, 0x64

    move/from16 v10, p1

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    if-nez v28, :cond_2

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    :pswitch_2
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :pswitch_3
    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    add-int/lit8 v2, v7, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :pswitch_4
    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v32

    invoke-static {v0, v2}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    add-int/lit8 v2, v7, 0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :pswitch_5
    add-int/lit8 v15, v7, 0x1

    const/4 v2, -0x5

    move/from16 v0, v29

    if-ne v0, v2, :cond_8

    add-int/lit8 v15, v7, -0x1

    :cond_8
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v31, v0

    move-object/from16 v0, v32

    invoke-static {v0, v15}, Lcom/android/launcher3/util/focus/FocusHelper;->getCellLayoutChildrenForIndex(Landroid/view/ViewGroup;I)Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    if-eqz v9, :cond_2

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, -0x1

    move-object/from16 v0, v24

    move/from16 v1, v31

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/home/HomeFocusLogic;->createSparseMatrix(Lcom/android/launcher3/common/base/view/CellLayout;II)[[I

    move-result-object v5

    add-int/lit8 v11, v3, 0x1

    const/16 v14, 0x64

    move/from16 v10, p1

    move v12, v4

    move-object v13, v5

    move/from16 v16, v8

    move-object/from16 v17, v9

    invoke-static/range {v10 .. v17}, Lcom/android/launcher3/home/HomeFocusLogic;->handleKeyEvent(III[[IIIILcom/android/launcher3/common/base/view/CellLayoutChildren;)I

    move-result v29

    move/from16 v0, v29

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    if-nez v28, :cond_2

    invoke-virtual/range {v32 .. v32}, Lcom/android/launcher3/home/Workspace;->clearFocus()V

    goto/16 :goto_2

    :pswitch_6
    const/4 v2, 0x0

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v9, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_2

    :pswitch_8
    const/4 v2, -0x1

    move-object/from16 v0, v32

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    goto/16 :goto_2

    :cond_9
    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    move/from16 v0, v29

    if-gt v2, v0, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    add-int/2addr v2, v10

    move/from16 v0, v29

    if-ge v0, v2, :cond_2

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    sub-int v2, v29, v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_2

    :pswitch_data_0
    .packed-switch -0xb
        :pswitch_8
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static handleOverviewPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eq v10, v12, :cond_0

    if-nez v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v7

    if-eqz v7, :cond_0

    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_2

    const/16 v10, 0x15

    if-ne p1, v10, :cond_4

    const/16 p1, 0x16

    :cond_2
    :goto_1
    invoke-virtual {v7, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v5

    const/4 v6, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_3
    :goto_2
    :pswitch_0
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    const/16 v10, 0x16

    if-ne p1, v10, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :pswitch_1
    invoke-static {p0, v12, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p0, v11, v11, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p0, v11, v11, v12}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout;

    invoke-static {p0, v11, v12, v11}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v8

    if-eqz v9, :cond_5

    move-object v6, v9

    goto :goto_2

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_6

    move-object v6, v0

    goto :goto_2

    :cond_6
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_7

    move-object v6, v8

    goto :goto_2

    :cond_7
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_8

    move-object v6, v1

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v10

    const v11, 0x7f110094

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v6, v4

    goto :goto_2

    :pswitch_2
    if-eqz v5, :cond_3

    add-int/lit8 v10, v5, -0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v2, v11}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static handlePageDeleteButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v6

    if-eq v6, v9, :cond_0

    if-nez v2, :cond_1

    const/16 v6, 0x42

    if-eq p1, v6, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v6

    const v7, 0x7f110094

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_2

    const/16 v6, 0x15

    if-ne p1, v6, :cond_4

    const/16 p1, 0x16

    :cond_2
    :goto_1
    const/4 v4, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_2
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :cond_4
    const/16 v6, 0x16

    if-ne p1, v6, :cond_2

    const/16 p1, 0x15

    goto :goto_1

    :sswitch_0
    invoke-static {p0, v9, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    move-object v4, v0

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_2

    :sswitch_1
    if-eqz v3, :cond_3

    move-object v4, v3

    goto :goto_2

    :sswitch_2
    invoke-static {p0, v8, v8, v8}, Lcom/android/launcher3/home/HomeFocusHelper;->getCustomButton(Landroid/view/View;ZZZ)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v5

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object v4, v1

    goto :goto_2

    :cond_6
    if-eqz v5, :cond_3

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    goto :goto_2

    :sswitch_3
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_2

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_2
        0x15 -> :sswitch_0
        0x16 -> :sswitch_2
        0x3d -> :sswitch_2
        0x42 -> :sswitch_3
    .end sparse-switch
.end method

.method private static handleScreenGridPanelOptionButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/16 v10, 0x16

    const/16 v9, 0x15

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq p1, v9, :cond_0

    if-eq p1, v10, :cond_0

    const/16 v8, 0x13

    if-ne p1, v8, :cond_2

    :cond_0
    move v1, v6

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v8

    if-eq v8, v6, :cond_1

    if-nez v1, :cond_3

    :cond_1
    :goto_1
    return v1

    :cond_2
    move v1, v7

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    :cond_4
    if-eqz v2, :cond_1

    if-eqz v5, :cond_1

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_5

    if-ne p1, v9, :cond_6

    const/16 p1, 0x16

    :cond_5
    :goto_2
    invoke-virtual {v2, p0}, Landroid/widget/LinearLayout;->indexOfChild(Landroid/view/View;)I

    move-result v4

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    :pswitch_1
    if-eqz v5, :cond_1

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    :cond_6
    if-ne p1, v10, :cond_5

    const/16 p1, 0x15

    goto :goto_2

    :pswitch_2
    if-eqz v4, :cond_1

    add-int/lit8 v6, v4, -0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :pswitch_3
    add-int/lit8 v6, v4, 0x1

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    invoke-virtual {v0, v7}, Landroid/view/View;->playSoundEffect(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static handleScreenGridPanelTopButtonKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 11

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/16 v10, 0x14

    if-eq p1, v10, :cond_0

    const/16 v10, 0x3d

    if-eq p1, v10, :cond_0

    const/16 v10, 0x15

    if-eq p1, v10, :cond_0

    const/16 v10, 0x16

    if-ne p1, v10, :cond_2

    :cond_0
    move v2, v8

    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v10

    if-eq v10, v8, :cond_1

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v2

    :cond_2
    move v2, v9

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v4

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    if-eqz v8, :cond_4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getGriBtnLayout()Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getScreenGridPanel()Lcom/android/launcher3/home/ScreenGridPanel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/home/ScreenGridPanel;->getScreenGridTopConatiner()Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    :cond_4
    const v8, 0x7f110096

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    if-eqz v7, :cond_1

    invoke-virtual {v7, p0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v5

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz v3, :cond_1

    invoke-virtual {v3, v9}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    :sswitch_1
    add-int/lit8 v8, v5, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    :sswitch_2
    add-int/lit8 v8, v5, 0x1

    add-int/lit8 v9, v0, -0x1

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_2
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private static handleZeroPageSwitchKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6

    invoke-static {p1}, Lcom/android/launcher3/home/HomeFocusLogic;->shouldConsume(I)Z

    move-result v0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v2, 0x0

    sparse-switch p1, :sswitch_data_0

    :cond_2
    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v4

    const v5, 0x7f110094

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_1

    :sswitch_1
    invoke-static {p0}, Lcom/android/launcher3/home/HomeFocusHelper;->getOverviewPanel(Landroid/view/View;)Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p0}, Landroid/view/View;->callOnClick()Z

    invoke-static {p1, p0}, Lcom/android/launcher3/util/focus/FocusHelper;->playSoundEffect(ILandroid/view/View;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x3d -> :sswitch_1
        0x42 -> :sswitch_2
    .end sparse-switch
.end method
