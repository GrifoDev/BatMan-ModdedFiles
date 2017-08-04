.class public Lcom/android/launcher3/home/WorkspaceDragController;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final ANIMATE_INTO_POSITION_AND_DISAPPEAR:I = 0x0

.field private static final ANIMATE_INTO_POSITION_AND_REMAIN:I = 0x1

.field private static final ANIMATE_INTO_POSITION_AND_RESIZE:I = 0x2

.field static final CANCEL_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x4

.field static final COMPLETE_TWO_STAGE_WIDGET_DROP_ANIMATION:I = 0x3

.field private static final WIDGET_DROP_ANIMATION_DELAY:I = 0xc8


# instance fields
.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverX:I

.field private mDragOverY:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    iput v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceDragController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    return-void
.end method

.method private addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            "Landroid/view/View;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    move-result v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    const-wide/16 v20, -0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v8, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    const/4 v8, 0x0

    aput v8, v6, v7

    const/16 v19, 0x0

    const/16 v23, 0x0

    if-eqz p2, :cond_1

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v7, p2

    check-cast v7, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p2

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addPendingItem(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;JJ[III)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v28

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/WorkspaceDragController$15;

    move-object/from16 v0, p0

    move/from16 v1, v28

    invoke-direct {v7, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$15;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;I)V

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v31

    :goto_1
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/16 v24, 0x0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 p2, v0

    check-cast p2, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v6, :cond_8

    :cond_2
    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v6, :cond_7

    move-object/from16 v0, v26

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v29

    :goto_2
    if-eqz v24, :cond_3

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_3

    move-object/from16 p2, v24

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x1

    move-object/from16 v12, p0

    invoke-direct/range {v12 .. v17}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    move-object/from16 v0, v29

    instance-of v6, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v6, :cond_b

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/HomeController;->enterDragState(Z)V

    move-object/from16 v23, v29

    check-cast v23, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v6

    if-eqz v6, :cond_4

    const/16 v19, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Landroid/view/View;)V

    :cond_5
    :goto_3
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v6, 0x1

    move-object/from16 v0, v25

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v12, 0x0

    aget v12, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x1

    aget v13, v7, v13

    const/4 v14, -0x1

    move-object/from16 v7, p2

    invoke-virtual/range {v6 .. v14}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p2

    instance-of v6, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v6, :cond_6

    if-nez p4, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v6, v6, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v6, :cond_6

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x64

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v12, 0x0

    aget v12, v7, v12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v13, 0x1

    aget v13, v7, v13

    move-object/from16 v0, p2

    iget v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v7, v29

    invoke-virtual/range {v6 .. v15}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_1

    :cond_7
    move-object/from16 v29, p3

    goto/16 :goto_2

    :cond_8
    move-object/from16 v0, p2

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v6, :pswitch_data_0

    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, p2

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez p4, :cond_9

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v24

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v24

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v8, v6}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v29

    goto/16 :goto_2

    :cond_9
    move-object/from16 v24, p2

    goto :goto_4

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v6

    if-eqz v6, :cond_a

    move-object/from16 v6, p2

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v24

    :goto_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v14, v24

    check-cast v14, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-static/range {v12 .. v18}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v29

    goto/16 :goto_2

    :cond_a
    move-object/from16 v24, p2

    goto :goto_5

    :cond_b
    if-eqz p4, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p2

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/HomeController;->removeHomeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6, v10, v11}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v28

    move/from16 v22, v19

    move-object/from16 v30, v23

    new-instance v27, Lcom/android/launcher3/home/WorkspaceDragController$16;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move/from16 v2, v28

    move/from16 v3, v22

    move-object/from16 v4, v30

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$16;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;IZLcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/16 v7, 0xc8

    move-object/from16 v0, v27

    invoke-virtual {v6, v0, v7}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreenDelayed(Ljava/lang/Runnable;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/util/LongSparseArray",
            "<",
            "Ljava/lang/Integer;",
            ">;>;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")Z"
        }
    .end annotation

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/LongSparseArray;

    invoke-virtual {v1, p3}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lt v3, v4, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_0
.end method

.method private findEmptyCellForExtraDragObject([IZZZZ)Z
    .locals 15

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v11

    if-eqz p5, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v14

    :goto_0
    move v10, v11

    :goto_1
    if-ge v10, v14, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v8, :cond_2

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v14, v11, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v3

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v5

    if-ne v10, v11, :cond_5

    if-eqz p2, :cond_3

    if-eqz p3, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v6, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v7, v0, v1

    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v12

    const-wide/16 v0, -0xc9

    cmp-long v0, v12, v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_4
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToRightBottom([IIIII[[ZII)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x1

    :goto_3
    return v0

    :cond_5
    const/4 v6, 0x0

    const/4 v7, 0x0

    goto :goto_2

    :cond_6
    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object/from16 v0, p1

    invoke-static/range {v0 .. v7}, Lcom/android/launcher3/Utilities;->findVacantCellToLeftTop([IIIII[[ZII)Z

    move-result v9

    if-eqz v9, :cond_0

    iput-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x1

    goto :goto_3

    :cond_7
    if-eqz p4, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreen()Z

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v12

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12, v13}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    aput v1, p1, v0

    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v1, p1, v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_3
.end method

.method private findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->hasExtraEmptyScreen()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v10, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v7, v10}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v6

    const/4 v1, 0x1

    add-int/lit8 v4, v6, 0x1

    :goto_1
    if-eqz v1, :cond_0

    if-lt v4, v3, :cond_0

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_0
    if-nez v1, :cond_3

    if-lt v4, v6, :cond_3

    if-nez v0, :cond_2

    :goto_2
    return-void

    :cond_1
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    goto :goto_0

    :cond_2
    move v4, v3

    const/4 v0, 0x0

    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v4}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_5

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    invoke-virtual {v2, v7, v10, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findCellForSpan([III)Z

    move-result v7

    if-eqz v7, :cond_5

    iput-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const-wide/16 v10, -0xc9

    cmp-long v7, v8, v10

    if-nez v7, :cond_4

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v7}, Lcom/android/launcher3/home/HomeController;->showOutOfSpaceMessage()V

    goto :goto_2

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V
    .locals 10

    iget v4, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v5, p5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, 0x0

    aget v2, p6, v1

    const/4 v1, 0x1

    aget v3, p6, v1

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/Workspace;->estimateItemPosition(Lcom/android/launcher3/common/base/view/CellLayout;IIII)Landroid/graphics/Rect;

    move-result-object v9

    const/4 v0, 0x0

    iget v1, v9, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, v9, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p4, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    if-eqz p7, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    div-float v7, v0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    div-float v8, v0, v1

    :goto_0
    instance-of v0, p5, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p4}, Lcom/android/launcher3/common/base/view/CellLayout;->getContentTop()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    :goto_1
    const/4 v0, 0x0

    mul-float v1, v7, v6

    aput v1, p2, v0

    const/4 v0, 0x1

    mul-float v1, v8, v6

    aput v1, p2, v0

    return-void

    :cond_0
    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p3}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v6

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    goto :goto_1
.end method

.method private isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z
    .locals 12

    const/4 v6, 0x0

    const/4 v7, 0x1

    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetPackageList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v1

    sget-object v8, Lcom/android/launcher3/home/HomeController;->sSingleInstanceAppWidgetList:Ljava/util/HashMap;

    iget-object v9, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v9}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->checkSingleInstanceAppWidget(Ljava/util/HashMap;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v0

    if-nez v1, :cond_0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0c0001

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x1030132

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->setTheme(I)V

    :cond_1
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/LauncherModel;->getHomeLoader()Lcom/android/launcher3/home/HomeLoader;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/android/launcher3/home/HomeLoader;->checkDuplicatedSingleInstanceWidgetExist(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f08002e

    new-array v10, v7, [Ljava/lang/Object;

    aput-object v5, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v6, v7

    :cond_2
    return v6

    :cond_3
    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f080073

    new-array v10, v7, [Ljava/lang/Object;

    iget-object v11, p1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->mLabel:Ljava/lang/String;

    aput-object v11, v10, v6

    invoke-virtual {v8, v9, v10}, Lcom/android/launcher3/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 6

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 42

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v5, :cond_0

    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_1

    :cond_0
    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$8;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$8;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v35, v0

    const/16 v26, 0x0

    invoke-virtual/range {v34 .. v34}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v34

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v5, v8, v9}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_3

    const/16 v36, 0x1

    :goto_1
    move-object/from16 v0, v34

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v5, :pswitch_data_0

    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown item type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object/from16 v0, v34

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_3
    const/16 v36, 0x0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_8

    if-nez v36, :cond_8

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v37

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v5, v37

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v7, v8, v5}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v41

    :goto_3
    move-object/from16 v0, v34

    move-object/from16 v1, v37

    if-eq v0, v1, :cond_4

    move-object/from16 v34, v37

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v5, v5, v7

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v6, v7

    move-object/from16 v0, v34

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v34

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v8, v0, v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->acceptDrop([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)Z

    move-result v33

    if-nez v33, :cond_c

    new-instance v4, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v6, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v7, v7, v8

    float-to-int v7, v7

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x0

    const/4 v12, 0x3

    move-object v8, v4

    invoke-virtual/range {v5 .. v12}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v5, v5, v7

    if-ltz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    if-ltz v5, :cond_a

    const/16 v33, 0x1

    :goto_4
    if-nez v33, :cond_c

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v5

    if-eqz v5, :cond_b

    if-eqz v36, :cond_5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    :cond_5
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_6

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_6
    new-instance v24, Lcom/android/launcher3/home/WorkspaceDragController$9;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    move-object/from16 v2, v32

    move/from16 v3, v36

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$9;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    move-object/from16 v0, v24

    invoke-static {v5, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_7

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_7
    invoke-interface/range {v22 .. v22}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v37, v34

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_9

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v37

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v37

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v41

    goto/16 :goto_3

    :cond_9
    move-object/from16 v37, v34

    goto :goto_5

    :cond_a
    const/16 v33, 0x0

    goto/16 :goto_4

    :cond_b
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_c
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    move-object/from16 v8, v41

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_18

    if-nez v35, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_d
    const/4 v10, 0x1

    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v7, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_f

    if-nez v35, :cond_e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_e
    const/4 v10, 0x1

    :cond_f
    if-eqz v10, :cond_11

    if-nez v35, :cond_10

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    iget-boolean v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move-object/from16 v0, p1

    iget-boolean v14, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v15, 0x1

    const/16 v16, 0x1

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v16}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    :cond_11
    const-wide/16 v30, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v16

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v5, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v16

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v16

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v40

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v40

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v18, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v19, v5, v7

    const/16 v20, -0x1

    move-object/from16 v13, v34

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, v34

    instance-of v5, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v8, Ljava/util/ArrayList;

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, v5, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v8, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v34

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v7, v8, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v5, :cond_13

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v5

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v5, v34

    check-cast v5, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v7, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v14, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v18, v5, v7

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v19, v5, v7

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v20, v0

    move-object/from16 v0, v34

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v21, v0

    move-object/from16 v13, v41

    invoke-virtual/range {v12 .. v21}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    move-object/from16 v0, v41

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v5

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v18, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v19, v0

    const/16 v21, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v23, v0

    move-object/from16 v20, v41

    invoke-virtual/range {v18 .. v23}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_7
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v5

    iget-object v5, v5, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v28

    mul-int v5, v27, v28

    add-int/lit8 v38, v5, -0x1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    move/from16 v0, v38

    if-lt v0, v5, :cond_15

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_0

    :cond_14
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    goto :goto_7

    :cond_15
    move/from16 v25, v10

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v39, Ljava/util/ArrayList;

    invoke-direct/range {v39 .. v39}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    move/from16 v0, v38

    if-le v0, v7, :cond_16

    move-object/from16 v0, v29

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_16
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v29

    iget-object v8, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    move-object/from16 v0, v39

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_17
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x1

    move-object/from16 v5, p0

    invoke-direct/range {v5 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    new-instance v7, Lcom/android/launcher3/home/WorkspaceDragController$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move/from16 v2, v25

    invoke-direct {v7, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$10;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_18
    move/from16 v10, v26

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 45

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const/16 v38, 0x1

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    float-to-int v8, v8

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x0

    aget v7, v7, v8

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v9, 0x1

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getDistanceFromCell(FF[I)F

    move-result v10

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    invoke-virtual/range {v6 .. v11}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v6

    if-nez v6, :cond_0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual {v7, v6, v8, v10}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/16 v38, 0x0

    :cond_1
    :goto_0
    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v6, v7, :cond_2

    move-object/from16 v0, v20

    iget v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_7

    :cond_2
    const/16 v40, 0x1

    :goto_1
    if-eqz v40, :cond_8

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v24, v0

    :goto_2
    const/16 v44, 0x0

    if-eqz v38, :cond_c

    invoke-static/range {v20 .. v20}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v14

    const/4 v6, 0x2

    new-array v0, v6, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v12, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    float-to-int v13, v6

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v16, v0

    const/16 v18, 0x3

    invoke-virtual/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    if-ne v6, v7, :cond_3

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    if-eq v6, v7, :cond_4

    :cond_3
    const/16 v44, 0x1

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    if-ltz v6, :cond_9

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    if-ltz v6, :cond_9

    const/4 v6, 0x0

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/4 v6, 0x1

    aget v6, v17, v6

    if-lez v6, :cond_9

    const/16 v39, 0x1

    :goto_3
    if-nez v39, :cond_b

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v6

    if-eqz v6, :cond_a

    new-instance v33, Lcom/android/launcher3/home/WorkspaceDragController$4;

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    move-object/from16 v2, v24

    move-object/from16 v3, v20

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$4;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    move-object/from16 v0, v33

    invoke-static {v6, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    iput-boolean v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    :goto_4
    return-void

    :cond_6
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v11

    const-string v12, "IWAR"

    const-string v13, "Home_Background_Longpress"

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v16}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto/16 :goto_0

    :cond_7
    const/16 v40, 0x0

    goto/16 :goto_1

    :cond_8
    const/16 v24, 0x0

    goto/16 :goto_2

    :cond_9
    const/16 v39, 0x0

    goto :goto_3

    :cond_a
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    const/4 v6, 0x0

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    aput v7, v17, v6

    const/4 v6, 0x1

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    aput v7, v17, v6

    :cond_b
    const/4 v6, 0x0

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    const/4 v6, 0x1

    aget v6, v17, v6

    move-object/from16 v0, v20

    iput v6, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    :cond_c
    const-wide/16 v36, -0x64

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v42

    const/16 v35, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v7}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    cmp-long v6, v6, v42

    if-eqz v6, :cond_d

    new-instance v41, Lcom/android/launcher3/home/WorkspaceDragController$5;

    move-object/from16 v0, v41

    move-object/from16 v1, p0

    move-wide/from16 v2, v42

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$5;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;J)V

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_f

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v41

    invoke-virtual {v6, v0}, Lcom/android/launcher3/home/Workspace;->post(Ljava/lang/Runnable;)Z

    :goto_5
    const/16 v35, 0xc8

    :cond_d
    new-instance v22, Lcom/android/launcher3/home/WorkspaceDragController$6;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    move-wide/from16 v3, v42

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceDragController$6;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    move-object/from16 v0, v24

    instance-of v6, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v6, :cond_e

    if-eqz v44, :cond_e

    move-object/from16 v34, v24

    check-cast v34, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanX:I

    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->spanY:I

    move-object/from16 v0, v34

    invoke-static {v6, v0, v7, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    :cond_e
    if-eqz v40, :cond_10

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-eqz v6, :cond_10

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v6, v6, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->info:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v6, v6, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v6, :cond_10

    const/16 v23, 0x1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v21, v0

    new-instance v6, Landroid/os/Handler;

    invoke-direct {v6}, Landroid/os/Handler;-><init>()V

    new-instance v18, Lcom/android/launcher3/home/WorkspaceDragController$7;

    move-object/from16 v19, p0

    invoke-direct/range {v18 .. v24}, Lcom/android/launcher3/home/WorkspaceDragController$7;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;)V

    move/from16 v0, v35

    int-to-long v8, v0

    move-object/from16 v0, v18

    invoke-virtual {v6, v0, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_6
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v9, v9, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    goto/16 :goto_4

    :cond_f
    invoke-interface/range {v41 .. v41}, Ljava/lang/Runnable;->run()V

    goto :goto_5

    :cond_10
    if-eqz v40, :cond_11

    const/16 v23, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6

    :cond_11
    const/16 v23, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v27, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v28, v0

    const/16 v32, 0x1

    move-object/from16 v25, p0

    move-object/from16 v26, v20

    move-object/from16 v29, v22

    move/from16 v30, v23

    move-object/from16 v31, v24

    invoke-virtual/range {v25 .. v32}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto :goto_6
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/lang/Runnable;",
            "ZZZZ)V"
        }
    .end annotation

    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    new-instance v26, Ljava/util/ArrayList;

    invoke-direct/range {v26 .. v26}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v29

    :cond_0
    :goto_0
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_14

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p5, :cond_1

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_0

    :cond_1
    move-object/from16 v0, v17

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    or-int p3, p3, v4

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz p3, :cond_2

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_2

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v23, 0x1

    :goto_1
    const/16 v18, 0x0

    if-eqz v23, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    if-nez p3, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0, v5}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    :cond_3
    const/16 v24, 0x0

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v4, v4, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v4, :cond_b

    :cond_4
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v28

    :goto_2
    if-eqz v24, :cond_5

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    if-eq v0, v1, :cond_5

    move-object/from16 v21, v24

    :cond_5
    if-eqz p3, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v10, v4, v5

    :cond_6
    :goto_3
    if-eqz p3, :cond_7

    if-nez v23, :cond_13

    :cond_7
    if-eqz p3, :cond_11

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :goto_4
    if-eqz p3, :cond_12

    move-object/from16 v0, v21

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    const/4 v12, -0x1

    move-object/from16 v5, v21

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    if-eqz p6, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, v21

    instance-of v4, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v10, Ljava/util/ArrayList;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v4, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v10, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v21

    iget-wide v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v5, v10, v12, v13}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v10, 0x0

    aget v10, v5, v10

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v11, 0x1

    aget v11, v5, v11

    move-object/from16 v0, v21

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v21

    iget v13, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v28

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_9
    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v13, 0x12c

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v12, v28

    move-object/from16 v14, p2

    invoke-virtual/range {v10 .. v15}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_a
    const/16 v23, 0x0

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, v21

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown item type: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v24

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v24

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5, v10, v4}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v28

    goto/16 :goto_2

    :cond_c
    move-object/from16 v24, v21

    goto :goto_6

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v24

    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v24

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v28

    goto/16 :goto_2

    :cond_d
    move-object/from16 v24, v21

    goto :goto_7

    :cond_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, p0

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-result v20

    if-nez v20, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v4

    if-eqz v4, :cond_10

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v10, -0x65

    cmp-long v4, v4, v10

    if-nez v4, :cond_f

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_f
    move-object/from16 v0, v26

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_10
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v17

    iget-boolean v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v4, p0

    move/from16 v6, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    goto/16 :goto_3

    :cond_11
    const-wide/16 v6, -0x64

    goto/16 :goto_4

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v8

    goto/16 :goto_5

    :cond_13
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v10, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_0

    :cond_14
    invoke-virtual/range {v27 .. v27}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    :cond_15
    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_1a

    invoke-virtual/range {v26 .. v26}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_16
    :goto_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v5, v10, v12

    if-eqz v5, :cond_16

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v5

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v21

    iget-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v5, v10, v11}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_17

    const/16 v22, 0x1

    :goto_9
    if-eqz p6, :cond_18

    if-nez v22, :cond_18

    move-object/from16 v0, v25

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_16

    const/4 v5, 0x0

    move-object/from16 v0, v25

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v25

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_8

    :cond_17
    const/16 v22, 0x0

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    :cond_19
    new-instance v16, Lcom/android/launcher3/home/WorkspaceDragController$11;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$11;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    :cond_1a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 66

    new-instance v49, Lcom/android/launcher3/home/WorkspaceDragController$1;

    move-object/from16 v0, v49

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController$1;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    const/16 v62, 0x0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v56, v0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v48

    check-cast v48, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v60, v0

    const/16 v46, 0x0

    const/16 v54, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1e

    move-object/from16 v0, p1

    iget-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-eqz v5, :cond_2

    const/16 v52, 0x1

    :goto_0
    if-eqz v52, :cond_0

    if-eqz v56, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-string v7, "Folder"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v9, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v10, v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, v49

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v52, :cond_5

    const/16 v17, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v18, p1

    invoke-virtual/range {v13 .. v18}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_7

    if-nez v56, :cond_6

    :cond_1
    :goto_3
    return-void

    :cond_2
    const/16 v52, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual/range {v55 .. v55}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    :goto_4
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v5

    const-string v6, "HSDT"

    const-wide/16 v8, -0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v17, v60

    goto :goto_2

    :cond_6
    const/16 v47, 0x1

    :cond_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v5, v6, v8, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v5

    if-eqz v5, :cond_b

    if-nez v56, :cond_a

    if-nez v52, :cond_8

    if-eqz v60, :cond_8

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_8
    if-nez v52, :cond_9

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v14, v5

    cmp-long v5, v8, v14

    if-nez v5, :cond_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto :goto_3

    :cond_a
    const/16 v47, 0x1

    :cond_b
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v55, v0

    check-cast v55, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static/range {v55 .. v55}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v21

    const/4 v5, 0x2

    new-array v0, v5, [I

    move-object/from16 v24, v0

    if-eqz v47, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v20, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    const/16 v23, 0x1

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    aput v6, v24, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    aput v6, v24, v5

    :goto_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-ltz v5, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    if-ltz v5, :cond_d

    const/4 v5, 0x0

    aget v5, v24, v5

    if-lez v5, :cond_d

    const/4 v5, 0x1

    aget v5, v24, v5

    if-lez v5, :cond_d

    const/16 v51, 0x1

    :goto_6
    if-nez v51, :cond_15

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportChinaDA()Z

    move-result v5

    if-eqz v5, :cond_14

    new-instance v63, Ljava/util/ArrayList;

    invoke-direct/range {v63 .. v63}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v48

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x64

    cmp-long v5, v8, v14

    if-nez v5, :cond_e

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :goto_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    new-instance v50, Ljava/util/ArrayList;

    invoke-direct/range {v50 .. v50}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v50

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_11

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v59

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v14, -0x65

    cmp-long v5, v8, v14

    if-nez v5, :cond_f

    move-object/from16 v0, v63

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x1

    aget v5, v5, v6

    float-to-int v0, v5

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v23, v0

    const/16 v25, 0x2

    move-object/from16 v22, v16

    invoke-virtual/range {v18 .. v25}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    goto/16 :goto_5

    :cond_d
    const/16 v51, 0x0

    goto/16 :goto_6

    :cond_e
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/drag/DragView;->setSourceView(Landroid/view/View;)V

    move-object/from16 v0, v63

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v59

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/home/WorkspaceDragController;->restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    goto :goto_8

    :cond_10
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, v50

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    invoke-virtual/range {v63 .. v63}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_12

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v5}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v5

    move-object/from16 v0, v63

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    :cond_12
    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$2;

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move-object/from16 v2, v16

    invoke-direct {v4, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$2;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/android/launcher3/home/AddItemOnNewPageDialog;->createAndShow(Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_13

    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_13
    invoke-interface/range {v49 .. v49}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_3

    :cond_14
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptySpace(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    const/4 v5, 0x0

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    aput v6, v24, v5

    const/4 v5, 0x1

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    aput v6, v24, v5

    :cond_15
    move-object/from16 v0, v16

    instance-of v5, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    aget v5, v24, v5

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v5, v6, :cond_16

    const/4 v5, 0x1

    aget v5, v24, v5

    move-object/from16 v0, v55

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-eq v5, v6, :cond_17

    :cond_16
    const/16 v62, 0x1

    const/4 v5, 0x0

    aget v5, v24, v5

    move-object/from16 v0, v55

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    const/4 v5, 0x1

    aget v5, v24, v5

    move-object/from16 v0, v55

    iput v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v45, v16

    check-cast v45, Landroid/appwidget/AppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v6, 0x0

    aget v6, v24, v6

    const/4 v8, 0x1

    aget v8, v24, v8

    move-object/from16 v0, v45

    invoke-static {v5, v0, v6, v8}, Lcom/android/launcher3/home/AppWidgetResizeFrame;->updateWidgetSizeRanges(Lcom/android/launcher3/Launcher;Landroid/appwidget/AppWidgetHostView;II)V

    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v60

    if-ne v0, v5, :cond_18

    if-eqz v47, :cond_20

    :cond_18
    const/16 v53, 0x1

    :goto_9
    const-wide/16 v28, -0x64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    if-gez v5, :cond_21

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v30, v0

    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v8

    cmp-long v5, v8, v30

    if-eqz v5, :cond_19

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-wide/from16 v0, v30

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v64

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v64

    invoke-virtual {v5, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_19
    if-eqz v53, :cond_1a

    if-nez v52, :cond_22

    if-eqz v60, :cond_22

    move-object/from16 v0, v60

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v32, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v33, v5, v6

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v34, v0

    move-object/from16 v0, v48

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v35, v0

    move-object/from16 v27, v16

    invoke-virtual/range {v26 .. v35}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v5

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v61

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    const v6, 0x7f08019c

    move-object/from16 v0, v61

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f080167

    move-object/from16 v0, v61

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1a
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v58

    check-cast v58, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v55

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v58

    iput v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v5, 0x1

    move-object/from16 v0, v58

    iput-boolean v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-nez v53, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v5, :cond_1b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_1b
    move-object/from16 v0, v16

    instance-of v5, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v5, :cond_1c

    move-object/from16 v54, v16

    check-cast v54, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v54

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)Z

    move-result v5

    if-eqz v5, :cond_1c

    const/16 v46, 0x1

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v26, v0

    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move/from16 v32, v0

    move-object/from16 v0, v58

    iget v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move/from16 v33, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v34, v0

    move-object/from16 v0, v55

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v35, v0

    move-object/from16 v27, v48

    invoke-virtual/range {v26 .. v35}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    const/4 v6, 0x1

    if-eqz v53, :cond_23

    if-nez v52, :cond_23

    const/4 v5, 0x1

    :goto_c
    move-object/from16 v0, v58

    iget v8, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v58

    iget v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5, v8, v9}, Lcom/android/launcher3/home/WorkspaceDragController;->sayDragTalkBack(ZZII)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v5

    int-to-long v8, v5

    cmp-long v5, v30, v8

    if-nez v5, :cond_1e

    if-nez v53, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, v58

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v5, v6, :cond_1d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, v5, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, v58

    iget v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v5, v6, :cond_1e

    :cond_1d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_1e
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v46, :cond_24

    move-object/from16 v65, v54

    new-instance v36, Lcom/android/launcher3/home/WorkspaceDragController$3;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    move-object/from16 v2, v65

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController$3;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    :goto_d
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v5

    if-eqz v5, :cond_28

    move-object/from16 v0, v48

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x4

    if-eq v5, v6, :cond_1f

    move-object/from16 v0, v48

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v6, 0x5

    if-ne v5, v6, :cond_25

    :cond_1f
    const/16 v57, 0x1

    :goto_e
    if-eqz v57, :cond_27

    if-eqz v62, :cond_26

    const/16 v37, 0x2

    :goto_f
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v35, v0

    const/16 v39, 0x0

    move-object/from16 v32, p0

    move-object/from16 v33, v48

    move-object/from16 v34, v17

    move-object/from16 v38, v16

    invoke-virtual/range {v32 .. v39}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    :goto_10
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    if-nez v47, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    move/from16 v41, v0

    const/16 v42, 0x0

    const/16 v44, 0x0

    move-object/from16 v38, p0

    move/from16 v43, v47

    invoke-direct/range {v38 .. v44}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    goto/16 :goto_3

    :cond_20
    const/16 v53, 0x0

    goto/16 :goto_9

    :cond_21
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5, v6}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v30

    goto/16 :goto_a

    :cond_22
    const-string v5, "DropTarget"

    const-string v6, "mDragInfo.cell has null parent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_23
    const/4 v5, 0x0

    goto/16 :goto_c

    :cond_24
    move-object/from16 v36, v49

    goto :goto_d

    :cond_25
    const/16 v57, 0x0

    goto :goto_e

    :cond_26
    const/16 v37, 0x0

    goto :goto_f

    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v38, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v39, v0

    const/16 v41, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v43, v0

    move-object/from16 v40, v16

    move-object/from16 v42, v36

    invoke-virtual/range {v38 .. v43}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_10

    :cond_28
    const/4 v5, 0x0

    move-object/from16 v0, p1

    iput-boolean v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v5, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    invoke-interface/range {v36 .. v36}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_10
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    return-void
.end method

.method private restoreExtraDropItems(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    if-eqz p2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v18

    iget-wide v2, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drag/DragManager;->onDeferredEndDrag(Lcom/android/launcher3/common/drag/DragView;)V

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v21

    goto :goto_0

    :cond_3
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v19

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, v19

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, v19

    iget v9, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v14

    if-eqz v14, :cond_4

    invoke-virtual {v14, v8, v9}, Lcom/android/launcher3/common/base/view/CellLayout;->isOccupied(II)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v12, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v13, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v8, v3, v4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v9, v3, v4

    const/4 v10, -0x1

    move-object/from16 v3, v19

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move v9, v13

    move v8, v12

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v19

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v19

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    goto/16 :goto_1

    :cond_5
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getHotseat()Lcom/android/launcher3/home/Hotseat;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->getDragController()Lcom/android/launcher3/home/HotseatDragController;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    goto/16 :goto_1
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    add-int/lit8 v0, v4, 0x1

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v2

    if-eq v0, v2, :cond_0

    add-int/lit8 v2, v2, -0x1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0800b9

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0800b6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    sget-object v4, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f0800b7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const v5, 0x7f0800b6

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    add-int/lit8 v8, p4, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    add-int/lit8 v8, p3, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v5, v6}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const v4, 0x7f0800b5

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    invoke-direct {p0, v2, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    return-void
.end method

.method private setCurrentDropOverCell(II)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverX:I

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverY:I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setDragMode(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->isExistSingleInstanceAppWidget(Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    const-wide/16 v4, -0xc9

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->commitExtraEmptyScreen()J

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8

    const-wide/16 v2, -0x64

    iget-wide v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBindController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V
    .locals 42

    new-instance v37, Landroid/graphics/Rect;

    invoke-direct/range {v37 .. v37}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v37

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v4, 0x2

    new-array v5, v4, [I

    const/4 v4, 0x2

    new-array v6, v4, [F

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-nez v4, :cond_5

    const/4 v11, 0x1

    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    move-object/from16 v4, p0

    move-object/from16 v7, p3

    move-object/from16 v8, p2

    move-object/from16 v9, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceDragController;->getFinalPositionForDropAnimation([I[FLcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[IZ)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v39

    const v4, 0x7f0b0019

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    add-int/lit16 v0, v4, -0xc8

    move/from16 v20, v0

    move-object/from16 v0, p6

    instance-of v4, v0, Landroid/appwidget/AppWidgetHostView;

    if-eqz v4, :cond_0

    if-eqz p7, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_0
    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x4

    if-eq v4, v7, :cond_1

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v7, 0x5

    if-ne v4, v7, :cond_6

    :cond_1
    const/16 v38, 0x1

    :goto_1
    const/4 v4, 0x2

    move/from16 v0, p5

    if-eq v0, v4, :cond_2

    if-eqz p7, :cond_7

    :cond_2
    if-eqz p6, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Lcom/android/launcher3/home/Workspace;->estimateItemSize(Lcom/android/launcher3/common/base/item/ItemInfo;)[I

    move-result-object v41

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p6

    instance-of v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v4, :cond_3

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    const/4 v8, 0x0

    aget v8, v41, v8

    const/4 v9, 0x1

    aget v9, v41, v9

    invoke-static {v4, v7, v8, v9}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    move-result-object v40

    if-eqz v40, :cond_3

    const/4 v4, 0x0

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    aput v7, v41, v4

    const/4 v4, 0x1

    move-object/from16 v0, v40

    iget v7, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    aput v7, v41, v4

    :cond_3
    move-object/from16 v0, p6

    move-object/from16 v1, v41

    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragViewHelper;->createWidgetBitmap(Landroid/view/View;[I)Landroid/graphics/Bitmap;

    move-result-object v36

    move-object/from16 v0, p3

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drag/DragView;->setCrossFadeBitmap(Landroid/graphics/Bitmap;)V

    move/from16 v0, v20

    int-to-float v4, v0

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v4, v7

    float-to-int v4, v4

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/drag/DragView;->crossFade(I)V

    :cond_4
    :goto_2
    const/4 v4, 0x4

    move/from16 v0, p5

    if-ne v0, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v15, 0x0

    const v16, 0x3dcccccd    # 0.1f

    const v17, 0x3dcccccd    # 0.1f

    const/16 v18, 0x0

    move-object/from16 v13, p3

    move-object v14, v5

    move-object/from16 v19, p4

    invoke-virtual/range {v12 .. v20}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;[IFFFILjava/lang/Runnable;I)V

    :goto_3
    return-void

    :cond_5
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_6
    const/16 v38, 0x0

    goto :goto_1

    :cond_7
    if-eqz v38, :cond_4

    if-eqz p7, :cond_4

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    aget v8, v6, v8

    const/4 v9, 0x1

    aget v9, v6, v9

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    aput v8, v6, v7

    aput v8, v6, v4

    goto :goto_2

    :cond_8
    const/4 v4, 0x1

    move/from16 v0, p5

    if-ne v0, v4, :cond_9

    const/16 v33, 0x2

    :goto_4
    new-instance v32, Lcom/android/launcher3/home/WorkspaceDragController$13;

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    move-object/from16 v2, p6

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceDragController$13;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Landroid/view/View;Ljava/lang/Runnable;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v21, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v23, v0

    move-object/from16 v0, v37

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v24, v0

    const/4 v4, 0x0

    aget v25, v5, v4

    const/4 v4, 0x1

    aget v26, v5, v4

    const/high16 v27, 0x3f800000    # 1.0f

    const/high16 v28, 0x3f800000    # 1.0f

    const/high16 v29, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    aget v30, v6, v4

    const/4 v4, 0x1

    aget v31, v6, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v35, v0

    move-object/from16 v22, p3

    move/from16 v34, v20

    invoke-virtual/range {v21 .. v35}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    goto :goto_3

    :cond_9
    const/16 v33, 0x0

    goto :goto_4
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V
    .locals 7
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

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, v3

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    return-void
.end method

.method dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 12

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    const-wide/16 v8, -0x64

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v10

    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$14;

    invoke-direct {v4, p0, v1, v10, v11}, Lcom/android/launcher3/home/WorkspaceDragController$14;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;J)V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    return-void
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 8

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v3, v4, v6

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 6

    if-nez p1, :cond_1

    const/4 v4, 0x0

    :cond_0
    :goto_0
    return v4

    :cond_1
    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v5, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v5, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    const/4 v4, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit8 v4, v4, 0x1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v4, v4, 0x20

    :cond_5
    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit16 v4, v4, 0x1000

    :cond_7
    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    or-int/lit16 v4, v4, 0x2000

    :cond_9
    if-eqz v0, :cond_a

    or-int/lit8 v4, v4, 0x40

    :cond_a
    if-nez v0, :cond_b

    if-eqz v3, :cond_c

    :cond_b
    or-int/lit16 v4, v4, 0x80

    :cond_c
    if-nez v0, :cond_d

    if-eqz v3, :cond_e

    :cond_d
    or-int/lit8 v4, v4, 0x2

    :cond_e
    if-eqz v0, :cond_f

    or-int/lit16 v4, v4, 0x100

    :cond_f
    if-eqz v0, :cond_10

    or-int/lit16 v4, v4, 0x200

    :cond_10
    if-nez v0, :cond_11

    if-eqz v3, :cond_12

    :cond_11
    or-int/lit16 v4, v4, 0x400

    :cond_12
    if-eqz v1, :cond_13

    if-nez v2, :cond_13

    or-int/lit8 v4, v4, 0x8

    :cond_13
    if-eqz v1, :cond_14

    or-int/lit16 v4, v4, 0x800

    :cond_14
    if-eqz v0, :cond_15

    or-int/lit16 v4, v4, 0x4000

    :cond_15
    if-eqz v0, :cond_0

    const v5, 0x8000

    or-int/2addr v4, v5

    goto :goto_0
.end method

.method public getScrollZone()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900ea

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnd()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/ExternalRequestQueue;->disableAndFlushExternalRequestQueue(Lcom/android/launcher3/Launcher;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x64

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->hideHintPages()V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->isDeferRemoveExtraEmptyScreen()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->removeExtraEmptyScreen()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/home/HotseatDragController;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v1, Lcom/android/launcher3/home/HotseatDragController;

    invoke-virtual {v1, v3, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_0
    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->onResetScrollArea()V

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v9, :cond_2

    const-string v0, "DropTarget"

    const-string v1, "DragObject has null info"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v13, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v13}, Lcom/android/launcher3/home/HomeController;->approachBorderOnDrag(F)V

    :cond_4
    if-eqz v8, :cond_5

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v1

    sub-float v12, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v12}, Lcom/android/launcher3/home/Workspace;->dragPullingPages(F)V

    :cond_5
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_6

    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_c

    const/4 v7, 0x0

    :goto_1
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v10

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v10, v0, :cond_8

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    invoke-static {v9}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->getSpanInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-result-object v11

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    iget v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    iget v4, v11, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_a

    :cond_9
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropOverCell(II)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v6, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    move-object v3, v11

    move-object v4, p1

    move-object v5, v7

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v7, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    goto/16 :goto_1
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/home/ExternalRequestQueue;->enableExternalRequestQueue()V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->setDeferRemoveExtraEmptyScreen(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->updateChildrenLayersEnabled(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->addExtraEmptyScreenOnDrag()V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/Workspace;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->forcelyAnimateReturnPages()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_1
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_5

    instance-of v0, p1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v9, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v3, v3, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_1
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelDropFolder:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    check-cast v10, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v10, v3, v5}, Lcom/android/launcher3/home/HomeController;->canEnterResizeMode(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v8, 0x1

    :cond_3
    if-nez v8, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_4
    :goto_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v9, :cond_6

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :goto_3
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v0, :cond_1

    iget-object v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    new-instance v4, Lcom/android/launcher3/home/WorkspaceDragController$12;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/WorkspaceDragController$12;-><init>(Lcom/android/launcher3/home/WorkspaceDragController;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    iget v3, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v3, 0x1

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v6, v0, v3

    iget-object v3, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object v0, p0

    move v7, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;ILandroid/view/View;Z)V

    goto/16 :goto_1

    :cond_6
    const-string v0, "DropTarget"

    const-string v3, "Invalid state: cellLayout == null"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_7
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    goto :goto_2
.end method

.method public onEnterScrollArea(III)Z
    .locals 10

    const/4 v4, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v3}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz p3, :cond_4

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v5

    if-nez p3, :cond_2

    const/4 v3, -0x1

    :goto_0
    add-int v1, v5, v3

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    if-ltz v1, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x12d

    cmp-long v3, v6, v8

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v6

    const-wide/16 v8, -0x1f5

    cmp-long v3, v6, v8

    if-nez v3, :cond_3

    :cond_1
    const/4 v3, 0x0

    :goto_1
    return v3

    :cond_2
    move v3, v4

    goto :goto_0

    :cond_3
    iput-boolean v4, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    const/4 v2, 0x1

    :cond_4
    move v3, v2

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->invalidate()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/WorkspaceDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mInScrollArea:Z

    :cond_0
    return v1
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v0, :cond_1

    instance-of v0, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v7, :cond_0

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v9

    iget-object v8, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    const/4 v2, 0x0

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p3

    move v5, v3

    move v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    :cond_2
    return-void
.end method

.method public onFlingToMove(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v18

    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v2, v18

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v20

    :goto_1
    move-object/from16 v0, v18

    if-eq v15, v0, :cond_0

    move-object/from16 v15, v18

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceDragController;->findEmptyCellForExtraDragObject([IZZZZ)Z

    const-wide/16 v16, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2, v6, v7}, Lcom/android/launcher3/home/Workspace;->getPageIndexForScreenId(J)I

    move-result v19

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, -0x1

    move-object v3, v15

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    instance-of v2, v15, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v4, Ljava/util/ArrayList;

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-wide v8, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v8, v9}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_2

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x64

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    iget v10, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v11, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v20

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZ)V

    :cond_3
    return-void

    :cond_4
    move-object/from16 v18, v15

    goto/16 :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    move-object v2, v15

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v18

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v18

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v20

    goto/16 :goto_1

    :cond_5
    move-object/from16 v18, v15

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollLeft()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public scrollRight()V
    .locals 2

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->scrollRight()V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_1
    return-void
.end method

.method public setDragMode(I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragMode:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    :cond_3
    if-ne p1, v2, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->cleanupReorder(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/home/HomeController;)V
    .locals 2

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p3, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/WorkspaceReorderController;-><init>(Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;ZZ)Z
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mReorderController:Lcom/android/launcher3/home/WorkspaceReorderController;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController;->prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V

    :cond_0
    if-nez p3, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController;->mRestorePosition:Z

    return v3

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method
