.class Lcom/android/launcher3/home/ScreenGridHelper;
.super Ljava/lang/Object;
.source "ScreenGridHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenGridHelper"


# instance fields
.field private mChangeGridState:Z

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOriginalCellX:I

.field private mOriginalCellY:I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    iput v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    iput-object p1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/ScreenGridHelper;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/ScreenGridHelper;->doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ScreenGridHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/ScreenGridHelper;->addNewPageOnChangingGrid()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/ScreenGridHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ScreenGridHelper;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method private addNewPageOnChangingGrid()V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getAdditionPageCount()I

    move-result v0

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v4, v2

    add-int v1, v4, v0

    add-int/lit8 v3, v1, 0x1

    iget-object v4, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4, v1, v3}, Lcom/android/launcher3/home/Workspace;->insertPageAndMoveItems(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/home/WorkspaceCellLayout;",
            "Landroid/util/Pair",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v0, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z
    .locals 49

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v34

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v30

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellHeight()I

    move-result v29

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v28

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v5

    move-object/from16 v0, v34

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildrenAllItems()Ljava/util/ArrayList;

    move-result-object v4

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v4, v5, v6, v0, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->getOutSidePosition(Ljava/util/List;IIII)I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions()V

    move-object/from16 v4, p1

    move/from16 v7, p2

    move/from16 v9, p3

    move/from16 v10, p4

    invoke-virtual/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setGridSizeForScreenGrid(IIZIII)V

    if-lez p3, :cond_8

    const/16 v31, 0x2

    :goto_0
    if-lez p4, :cond_9

    const/16 v32, 0x2

    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v4

    add-int/lit8 v36, v4, -0x1

    :goto_2
    const/4 v4, -0x1

    move/from16 v0, v36

    if-le v0, v4, :cond_19

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v11

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v38, :cond_1

    const-string v4, "ScreenGridHelper"

    const-string v7, "HomeView: doChangeWorkspace() item is Null"

    invoke-static {v4, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v38, :cond_7

    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v38

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-le v4, v5, :cond_3

    move-object/from16 v0, v38

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v4, 0x1

    if-eq v8, v4, :cond_2

    const/4 v4, 0x3

    if-ne v8, v4, :cond_3

    :cond_2
    add-int v13, v13, v31

    :cond_3
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-le v4, v6, :cond_5

    move-object/from16 v0, v38

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v4, 0x2

    if-eq v8, v4, :cond_4

    const/4 v4, 0x3

    if-ne v8, v4, :cond_5

    :cond_4
    add-int v14, v14, v32

    :cond_5
    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v44, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v45, v0

    move-object/from16 v0, v38

    invoke-static {v0, v11}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v41

    if-nez v8, :cond_a

    add-int v4, v13, v44

    if-gt v4, v5, :cond_6

    add-int v4, v14, v45

    if-le v4, v6, :cond_d

    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    :cond_7
    :goto_3
    add-int/lit8 v36, v36, -0x1

    goto :goto_2

    :cond_8
    const/16 v31, 0x1

    goto :goto_0

    :cond_9
    const/16 v32, 0x1

    goto :goto_1

    :cond_a
    const/4 v4, 0x1

    if-ne v8, v4, :cond_11

    move/from16 v0, p3

    if-le v13, v0, :cond_b

    add-int v4, v14, v45

    if-le v4, v6, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto :goto_3

    :cond_c
    sub-int v13, v13, v31

    :cond_d
    :goto_4
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v4, v13, :cond_e

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v4, v14, :cond_f

    :cond_e
    const/16 v33, 0x1

    :cond_f
    instance-of v4, v11, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_10

    move-object/from16 v48, v38

    check-cast v48, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    move-object/from16 v0, v48

    iget-object v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_10

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    mul-int v7, v4, v30

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v9, 0x2

    if-lt v4, v9, :cond_17

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v28

    :goto_5
    add-int v47, v7, v4

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    mul-int v7, v4, v29

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v9, 0x2

    if-lt v4, v9, :cond_18

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/lit8 v4, v4, -0x1

    mul-int v4, v4, v28

    :goto_6
    add-int v46, v7, v4

    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v0, v47

    move/from16 v1, v46

    invoke-static {v4, v7, v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v43

    move-object/from16 v0, v48

    iget-object v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v35, v0

    check-cast v35, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, v35

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v48

    iget-object v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-static {v4, v7, v9, v10}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    invoke-virtual/range {v35 .. v35}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->invalidate()V

    :cond_10
    if-eqz v33, :cond_7

    move-object/from16 v0, v38

    iput v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v38

    iput v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v38

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, v38

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v16, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v17, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v18, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v19, v0

    invoke-virtual/range {v10 .. v19}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_3

    :cond_11
    const/4 v4, 0x2

    if-ne v8, v4, :cond_14

    add-int v4, v13, v44

    if-gt v4, v5, :cond_12

    move/from16 v0, p4

    if-gt v14, v0, :cond_13

    :cond_12
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto/16 :goto_3

    :cond_13
    sub-int v14, v14, v32

    goto/16 :goto_4

    :cond_14
    const/4 v4, 0x3

    if-ne v8, v4, :cond_d

    move/from16 v0, p3

    if-le v13, v0, :cond_15

    move/from16 v0, p4

    if-gt v14, v0, :cond_16

    :cond_15
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v41

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->addOutsideAndRemovedItem(Lcom/android/launcher3/home/WorkspaceCellLayout;Landroid/util/Pair;)V

    goto/16 :goto_3

    :cond_16
    sub-int v13, v13, v31

    sub-int v14, v14, v32

    goto/16 :goto_4

    :cond_17
    const/4 v4, 0x0

    goto/16 :goto_5

    :cond_18
    const/4 v4, 0x0

    goto/16 :goto_6

    :cond_19
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getOutSideItems(I)Ljava/util/List;

    move-result-object v39

    new-instance v42, Ljava/util/ArrayList;

    invoke-direct/range {v42 .. v42}, Ljava/util/ArrayList;-><init>()V

    if-eqz v39, :cond_1e

    invoke-interface/range {v39 .. v39}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1a
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/util/Pair;

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object/from16 v38, v0

    check-cast v38, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 v17, v0

    move-object/from16 v0, v38

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v38

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    add-int/lit8 v4, v5, -0x1

    if-le v13, v4, :cond_1b

    sub-int v13, v13, v31

    :cond_1b
    add-int/lit8 v4, v6, -0x1

    if-le v14, v4, :cond_1c

    sub-int v14, v14, v32

    :cond_1c
    move-object/from16 v0, v38

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v16, v0

    const/16 v18, 0x1

    move-object/from16 v12, p1

    invoke-virtual/range {v12 .. v18}, Lcom/android/launcher3/home/WorkspaceCellLayout;->findNearestVacantAreaWithCell(IIII[IZ)V

    const/4 v4, 0x0

    aget v4, v17, v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1a

    const/4 v4, 0x1

    aget v4, v17, v4

    const/4 v9, -0x1

    if-eq v4, v9, :cond_1a

    const/4 v4, 0x0

    aget v4, v17, v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    const/4 v4, 0x1

    aget v4, v17, v4

    move-object/from16 v0, v38

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, v38

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v4, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v18, v0

    move-object/from16 v4, v38

    check-cast v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v19, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v27}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    :goto_8
    move-object/from16 v0, v38

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v38

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, v38

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v38

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v9, v10, v12}, Lcom/android/launcher3/home/WorkspaceCellLayout;->markCellsForGrid(IIII)V

    move-object/from16 v0, v42

    move-object/from16 v1, v41

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v18, v0

    move-object/from16 v0, v41

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Landroid/view/View;

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v20, v0

    move-object/from16 v0, v38

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v24, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v25, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v26, v0

    move-object/from16 v0, v38

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v27, v0

    invoke-virtual/range {v18 .. v27}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_8

    :cond_1e
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_1f

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/util/Pair;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    move-object/from16 v0, v37

    invoke-interface {v7, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_1f
    const/16 v40, 0x0

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    if-eqz v4, :cond_20

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_20

    const/16 v40, 0x1

    :cond_20
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    return v40
.end method

.method private restorePage(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 18

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-nez v2, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/WorkspaceCellLayout;->restoreGridSize(II)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v14, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v2

    if-ge v14, v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v14}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v16

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    move-wide/from16 v0, v16

    invoke-virtual {v2, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/home/BackupItem;

    if-eqz v12, :cond_0

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getItem()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v13

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getScreen()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v3

    if-ne v2, v3, :cond_2

    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v3

    if-eq v2, v3, :cond_3

    :cond_2
    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v2

    iput v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getScreen()J

    move-result-wide v2

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v12}, Lcom/android/launcher3/home/BackupItem;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v15

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mOutSideItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mRestoredItems:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    instance-of v2, v13, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object v3, v13

    check-cast v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v3, v3, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    :cond_3
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Landroid/view/View;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1
.end method


# virtual methods
.method applyGridChange(I)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v8

    invoke-static {v3, v4, v6, v8}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    move-object/from16 v0, v18

    iget-object v6, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v6

    invoke-static {v3, v4, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeCurrentScreenGridSetting(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeChangeGridValue(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->layoutGrid(Lcom/android/launcher3/Launcher;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    iget-object v4, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "HSGR"

    const-wide/16 v6, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v21

    const/16 v19, 0x0

    :goto_0
    move/from16 v0, v19

    move/from16 v1, v21

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v3, 0x0

    move-object/from16 v0, v16

    iput-boolean v3, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    const/16 v20, 0x0

    :goto_1
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v3

    move/from16 v0, v20

    if-ge v0, v3, :cond_4

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v7, :cond_1

    :cond_0
    :goto_2
    add-int/lit8 v20, v20, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/BackupItem;

    if-eqz v2, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getCellX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getCellY()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getSpanX()I

    move-result v4

    if-ne v3, v4, :cond_2

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v2}, Lcom/android/launcher3/home/BackupItem;->getSpanY()I

    move-result v4

    if-eq v3, v4, :cond_3

    :cond_2
    const-string v3, "ScreenGridHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "db update item = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    iput-boolean v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    iget-wide v10, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v12, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v13, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v15, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    :cond_3
    instance-of v3, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v3, :cond_0

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/android/launcher3/home/ScreenGridHelper$2;

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v7}, Lcom/android/launcher3/home/ScreenGridHelper$2;-><init>(Lcom/android/launcher3/home/ScreenGridHelper;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move/from16 v0, p1

    int-to-long v8, v0

    invoke-virtual {v3, v4, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_2

    :cond_4
    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceCellLayout;->updateOccupied()V

    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method backupOriginalData()V
    .locals 12

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget-object v8, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    iget-object v8, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v8

    iput v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v8, v4}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v8, :cond_1

    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v8}, Landroid/util/LongSparseArray;->clear()V

    const/4 v6, 0x0

    :goto_1
    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getPageChildCount()I

    move-result v8

    if-ge v6, v8, :cond_1

    new-instance v0, Lcom/android/launcher3/home/BackupItem;

    invoke-direct {v0}, Lcom/android/launcher3/home/BackupItem;-><init>()V

    invoke-virtual {v1, v6}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getChildOnPageAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_0

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/BackupItem;->setItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/BackupItem;->setView(Landroid/view/View;)V

    iget-object v8, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    iget-wide v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v8, v10, v11, v0}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method changeGrid(IIZ)V
    .locals 12

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iget-object v7, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v7

    if-ne v7, p1, :cond_1

    iget-object v7, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v7

    if-ne v7, p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    sub-int/2addr v7, p1

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    iget v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    sub-int/2addr v7, p2

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    add-int/lit8 v4, v7, -0x1

    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v6, v7, -0x1

    :goto_1
    if-ltz v6, :cond_4

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-boolean v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mTempPage:Z

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->removeAllViews()V

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    if-eqz v7, :cond_2

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mBackupItems:Landroid/util/LongSparseArray;

    invoke-virtual {v7}, Landroid/util/LongSparseArray;->clear()V

    :cond_2
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v0}, Lcom/android/launcher3/home/Workspace;->removeTempPage(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    iput-boolean v7, v0, Lcom/android/launcher3/home/WorkspaceCellLayout;->mGridChanged:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ScreenGridHelper;->restorePage(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v5, p1, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v7}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    :cond_5
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    add-int/lit8 v6, v1, -0x1

    :goto_3
    add-int/lit8 v7, v1, 0x1

    if-gt v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v7, :cond_6

    if-eqz v2, :cond_6

    invoke-direct {p0, v2, p3, v3, v4}, Lcom/android/launcher3/home/ScreenGridHelper;->doChangeWorkspace(Lcom/android/launcher3/home/WorkspaceCellLayout;ZII)Z

    move-result v7

    if-eqz v7, :cond_6

    const-string v7, "ScreenGridHelper"

    const-string v8, "Change Grid Visible pages"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mNeedNewPageList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_7
    iget-object v7, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->resetAdditionalPageCount()V

    invoke-direct {p0}, Lcom/android/launcher3/home/ScreenGridHelper;->addNewPageOnChangingGrid()V

    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    new-instance v8, Lcom/android/launcher3/home/ScreenGridHelper$1;

    invoke-direct {v8, p0, v3, v4}, Lcom/android/launcher3/home/ScreenGridHelper$1;-><init>(Lcom/android/launcher3/home/ScreenGridHelper;II)V

    const-wide/16 v10, 0x14d

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0
.end method

.method isChangeGridState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mChangeGridState:Z

    return v0
.end method

.method restoreGridLayout()V
    .locals 3

    iget v0, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellX:I

    iget v1, p0, Lcom/android/launcher3/home/ScreenGridHelper;->mOriginalCellY:I

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/home/ScreenGridHelper;->changeGrid(IIZ)V

    return-void
.end method
