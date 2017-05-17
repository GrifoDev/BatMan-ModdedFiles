.class public Lcom/android/launcher3/allapps/controller/AppsDragController;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragScroller;
.implements Lcom/android/launcher3/common/drag/DragState;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;


# static fields
.field public static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final REORDER_DELAY:I = 0xfa

.field private static final TAG:Ljava/lang/String; = "AppsDragController"

.field private static final sTempPosArray:[I


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

.field private mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field private mDragComplete:Z

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mDragViewVisualCenter:[F

.field private mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private mFakeViewHeight:I

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mInScrollArea:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePositionOnDrop:Z

.field private mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

.field private mTargetCell:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    sput-object v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsPagedView;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v3, [F

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsDragController$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$6;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFakeViewHeight:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/allapps/controller/DragAppIcon;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragAppIcon;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method private addRightSideIconsOfDropItem(Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_0
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v8, v7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v0

    long-to-int v9, v0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v9

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown item type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v5

    invoke-static/range {v0 .. v5}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v11

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v0

    iput v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    int-to-long v0, v9

    iput-wide v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v0, 0x1

    iput-boolean v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v11, v8}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v11}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {v11, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v10, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v10}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v2, v8

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v6, 0x2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v11

    goto :goto_1

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private addRightSidePageOfDropItem(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    long-to-int v13, v2

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    move v11, v13

    :goto_0
    move v15, v11

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :cond_0
    :goto_1
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v12, v10

    iget-wide v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v9, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    long-to-int v13, v2

    int-to-long v2, v11

    iget-wide v4, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v13

    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    if-lt v13, v11, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v11, v2

    goto/16 :goto_0

    :cond_4
    move v11, v13

    goto/16 :goto_0

    :cond_5
    if-eq v15, v9, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v13

    iget-wide v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v15, v2

    goto :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v12

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v16

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v13}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v2

    iput v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    int-to-long v2, v13

    iput-wide v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0, v12}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    goto/16 :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v12

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v16

    goto :goto_3

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method private getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->findNearestArea(II)I

    move-result v0

    return v0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 36

    new-instance v21, Lcom/android/launcher3/allapps/controller/AppsDragController$2;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsDragController$2;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop through FakeView - empty to target : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    float-to-int v5, v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v8, 0x1

    aget v6, v6, v8

    float-to-int v6, v6

    move-object/from16 v0, v26

    iget v7, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v26

    iget v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, v26

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown item type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v26

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/16 v32, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v28

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v25

    :goto_1
    move/from16 v0, v25

    move/from16 v1, v31

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v25

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v27

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_6

    move/from16 v32, v25

    :cond_2
    if-ltz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v4

    move/from16 v0, v32

    if-ne v0, v4, :cond_7

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v4

    if-nez v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v34, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v34

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v32, v31

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_5

    move/from16 v22, v32

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPageCount()I

    move-result v4

    add-int/lit8 v32, v4, -0x1

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "droplayout is null. set lastpage - pageNumToDrop : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v5

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move/from16 v0, v32

    int-to-long v8, v0

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "drop through FakeView - target to empty "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v19

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDragExit:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v19 .. v19}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v25, v25, 0x1

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v32

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto/16 :goto_2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v26

    check-cast v6, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v9}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v9

    invoke-static/range {v4 .. v9}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v7

    :goto_3
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v4, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v24

    const/16 v23, 0x0

    move-object/from16 v0, v24

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v4, :cond_8

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/launcher3/folder/FolderInfo;

    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v8, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual/range {v23 .. v23}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v4

    const/4 v5, 0x2

    if-lt v4, v5, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_9
    :goto_4
    return-void

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v6, v26

    check-cast v6, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v10, 0x2

    invoke-static/range {v4 .. v10}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    goto :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_4

    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v4

    if-eqz v4, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_4

    :cond_e
    const/16 v29, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_f

    if-eqz v23, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_f

    move-object/from16 v0, v23

    iget-object v4, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_f

    const/16 v29, 0x1

    :cond_f
    const-wide/16 v10, -0x66

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v34, v0

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v34

    if-eqz v4, :cond_10

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v34

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v30

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v33

    if-nez v33, :cond_12

    invoke-virtual/range {v30 .. v30}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->findFirstEmptyCell()I

    move-result v20

    move/from16 v0, v20

    move/from16 v1, v18

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move/from16 v0, v18

    if-le v4, v0, :cond_12

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move/from16 v0, v18

    iput v0, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v8

    rem-int/2addr v6, v8

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v8

    div-int/2addr v6, v8

    aput v6, v4, v5

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    const-wide/16 v8, -0x1

    cmp-long v4, v4, v8

    if-nez v4, :cond_15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    if-lt v4, v5, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v4

    if-nez v4, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v5, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    long-to-int v5, v8

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v6, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_1a

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v12, -0x1

    const/4 v14, -0x1

    const/4 v15, -0x1

    const/16 v16, -0x1

    move-object/from16 v9, v26

    invoke-virtual/range {v8 .. v16}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    :goto_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v26

    invoke-virtual {v4, v7, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_1b

    if-nez v29, :cond_1b

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v21

    invoke-virtual {v4, v5, v0}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-nez v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_17
    :goto_7
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_18

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_4

    :cond_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v34

    goto/16 :goto_5

    :cond_1a
    const/4 v4, 0x1

    move-object/from16 v0, v26

    iput-boolean v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    move-object/from16 v0, v26

    iput-wide v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v0, v34

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, v26

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    goto/16 :goto_6

    :cond_1b
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v15, 0x12c

    const/16 v17, 0x0

    move-object v14, v7

    move-object/from16 v16, v21

    invoke-virtual/range {v12 .. v17}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 21

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v15, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v2

    move/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :cond_0
    :goto_0
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v0, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v15, v2, :cond_8

    const/4 v15, 0x0

    add-int/lit8 v16, v16, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    move/from16 v0, v16

    if-eq v0, v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int v3, v15, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, v15, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, v16, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move/from16 v0, v16

    invoke-virtual {v2, v0, v15}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    :cond_6
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v19

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    move-object/from16 v0, v17

    iput v15, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v0, v16

    int-to-long v2, v0

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v2, -0x66

    move-object/from16 v0, v17

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_7

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {v18 .. v19}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_7
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v4, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto/16 :goto_0

    :cond_8
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_a

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v4, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/view/IconView;

    move-object/from16 v5, v17

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)Landroid/view/View;

    move-result-object v19

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v19

    goto/16 :goto_2

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v4, v17

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v19

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v4, -0x66

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto/16 :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_d

    const/4 v14, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    if-eqz v14, :cond_e

    const/4 v7, 0x0

    :goto_5
    move-object/from16 v4, v19

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_d
    const/4 v14, 0x0

    goto :goto_4

    :cond_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    goto :goto_5

    :cond_f
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 20

    new-instance v10, Lcom/android/launcher3/allapps/controller/AppsDragController$1;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v8, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v14, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    :cond_0
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_1

    move-object/from16 v0, p1

    iput-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x0

    move-object v5, v8

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "AppsDragController"

    const-string v3, "onDropInternal onDropCreateUserFolder isAlphabeticalMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    mul-int/2addr v3, v4

    add-int v17, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move/from16 v0, v17

    if-le v0, v2, :cond_4

    add-int/lit8 v17, v17, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    rem-int v4, v17, v4

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, v17, v4

    aput v4, v2, v3

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v14, :cond_6

    invoke-virtual {v14, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "AppsDragController"

    const-string v3, "onDropInternal onDropAddToExistingFolder isAlphabeticalMode"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v2

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    if-eqz v14, :cond_a

    invoke-virtual {v14, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_c

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    const v3, 0x7f080182

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f080158

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_e

    iget-wide v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v18

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    :cond_e
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_f

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v8, v9}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-gez v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v18, v0

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, v18

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v18

    long-to-int v3, v0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_10
    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v8}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object v4, v8

    move-object v6, v10

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_2
    invoke-virtual {v15, v8}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_11
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_14

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v4, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v5, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v18

    goto/16 :goto_1

    :cond_13
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v8, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_2

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_0

    :cond_15
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_0
.end method

.method private onResetScrollArea()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    return-void
.end method

.method private placeObjectsToNextPosition(IILjava/util/ArrayList;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")V"
        }
    .end annotation

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v15, 0x0

    iget-object v13, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v0, p2

    if-lt v0, v2, :cond_8

    const/16 p2, 0x0

    add-int/lit8 p1, p1, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v2

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_2

    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v3

    rem-int v3, p2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v4

    div-int v4, p2, v4

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v3

    if-lt v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hasExtraEmptyScreen()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addExtraEmptyScreenOnDrag()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move/from16 v0, p1

    move/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    :cond_5
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_6

    move-object/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v15, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    :cond_6
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    if-nez v15, :cond_9

    :cond_7
    iget v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown item type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_1

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v15

    :cond_9
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    move/from16 v0, p2

    iput v0, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v0, p1

    int-to-long v2, v0

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const-wide/16 v2, -0x66

    iput-wide v2, v13, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v15, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_a

    invoke-virtual {v15}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v15, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_a
    iget-object v2, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v11, :cond_d

    const/16 v5, 0x12c

    :goto_5
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object v4, v15

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v13

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v15

    goto/16 :goto_2

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const-wide/16 v4, -0x66

    const-wide/16 v6, -0x1

    const/4 v8, -0x1

    const/4 v9, -0x1

    const/4 v10, -0x1

    move-object v3, v13

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/allapps/controller/AppsController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    goto :goto_3

    :cond_c
    const/4 v11, 0x0

    goto :goto_4

    :cond_d
    const/4 v5, 0x0

    goto :goto_5

    :cond_e
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private removeRightSideIconsOfDropItem(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v5, v10

    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v4, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v9}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsFromOnPage(II)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v1, v9, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v6, 0x0

    :goto_1
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v9, v9, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v9, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v9, v3

    check-cast v9, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;

    invoke-virtual {v9, v0}, Lcom/android/launcher3/allapps/view/AppsViewCellLayout;->removeItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_3

    :cond_4
    sget-object v9, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-static {v2, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private removeRightSidePageOfDropItem(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v8, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v3, v8

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getLauncherModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherModel;->getAppsLoader()Lcom/android/launcher3/allapps/model/AppsLoader;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/launcher3/allapps/model/AppsLoader;->getTopLevelItemsFromNextPage(I)Ljava/util/ArrayList;

    move-result-object v2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v4, 0x0

    :goto_1
    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_1

    iget-object v7, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v7, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {v7, v8}, Lcom/android/launcher3/allapps/view/AppsPagedView;->removeScreenToRightSideEndPage(I)V

    sget-object v7, Lcom/android/launcher3/allapps/model/AppsLoader;->MENU_CUSTOM_NORMALIZER:Lcom/android/launcher3/allapps/model/AppsLoader$Normalizer;

    invoke-static {v2, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v2
.end method

.method private setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method

.method private setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragExit()V

    :cond_1
    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDragEnter()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 7

    const/4 v1, 0x1

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acceptDrop mRestorePositionOnDrop = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_2

    iput-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-boolean v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_1
    return v1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->commitExtraEmptyScreen()I

    goto :goto_1
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    iget v4, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JIII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    return-void
.end method

.method public createUserFolderIfNecessary(Lcom/android/launcher3/common/base/view/CellLayout;[ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z
    .locals 7

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p2

    move-object v3, p3

    move-object v4, v1

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public findNearestArea(II)I
    .locals 7

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v6

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v5, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    move v1, p1

    move v2, p2

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    :cond_0
    sget-object v1, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    aget v1, v1, v3

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v2

    mul-int/2addr v1, v2

    sget-object v2, Lcom/android/launcher3/allapps/controller/AppsDragController;->sTempPosArray:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    add-int/2addr v1, v2

    return v1
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->getContainerView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 6

    if-eqz p1, :cond_1

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v4

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/allapps/controller/AppsController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    iget-wide v4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v3, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v1, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    long-to-int v2, v4

    :cond_0
    :goto_0
    return v2

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    goto :goto_0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 4

    if-nez p1, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v3, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    or-int/lit8 v2, v2, 0x1

    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    or-int/lit8 v2, v2, 0x20

    :cond_4
    if-nez v0, :cond_5

    if-eqz v1, :cond_6

    :cond_5
    or-int/lit16 v2, v2, 0x1000

    :cond_6
    if-nez v0, :cond_7

    if-eqz v1, :cond_8

    :cond_7
    or-int/lit16 v2, v2, 0x2000

    :cond_8
    if-eqz v0, :cond_9

    or-int/lit8 v2, v2, 0x40

    :cond_9
    if-eqz v0, :cond_a

    or-int/lit16 v2, v2, 0x80

    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v2, v2, 0x100

    :cond_b
    if-eqz v0, :cond_c

    or-int/lit16 v2, v2, 0x200

    :cond_c
    if-eqz v0, :cond_d

    or-int/lit16 v2, v2, 0x400

    :cond_d
    if-eqz v1, :cond_e

    or-int/lit8 v2, v2, 0x8

    :cond_e
    if-eqz v1, :cond_f

    or-int/lit16 v2, v2, 0x800

    :cond_f
    if-eqz v0, :cond_10

    or-int/lit16 v2, v2, 0x4000

    :cond_10
    if-eqz v0, :cond_11

    const v3, 0x8000

    or-int/2addr v2, v3

    :cond_11
    or-int/lit8 v2, v2, 0x4

    goto :goto_0
.end method

.method public getReorderController()Lcom/android/launcher3/allapps/controller/AppsReorderController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    return-object v0
.end method

.method public getScrollZone()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0900a8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isSelectState()Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_0
    return v1
.end method

.method public needDefferToBind(Lcom/android/launcher3/common/drag/DragManager;)Z
    .locals 6

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v3, v3, Lcom/android/launcher3/allapps/controller/AppsDragController;

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iget-boolean v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    if-nez v3, :cond_2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    const-string v3, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needDeferToBind : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(IFIIII)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput p3, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput p3, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :cond_0
    return-void
.end method

.method public onDragEnd()Z
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->hideHintPages()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->removeEmptyPagesAndUpdateAllItemsInfo()Z

    iput-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    return v2
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 6

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const/4 v4, -0x1

    iput v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput-wide v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const-wide/16 v4, -0x1

    iput-wide v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    long-to-int v5, v2

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v4

    iput v4, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    const-string v1, "AppsDragController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDragEnter mRestorePositionOnDrop = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onResetScrollArea()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportMoveToHomeAppsByDragging()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/DragAppIcon;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragOverlappingLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppsDragController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDragExit:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 17

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v12, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v12, :cond_0

    const-string v2, "AppsDragController"

    const-string v3, "DragObject has null info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v2, :cond_1

    iget v2, v12, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v2, :cond_2

    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Improper spans found"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getTranslationX()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getOffsetX()F

    move-result v3

    sub-float v15, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView;->dragPullingPages(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getCurrentDropLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eq v13, v2, :cond_3

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDropLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setCurrentDragOverlappingLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V

    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->getTargetRank(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    int-to-long v4, v14

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v3

    if-le v2, v3, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v3, v14}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getRankForNewItem(I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v5

    rem-int/2addr v4, v5

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v5

    div-int/2addr v4, v5

    aput v4, v2, v3

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    move-object/from16 v5, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-ne v2, v3, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    if-ne v2, v3, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    const-string v2, "AppsDragController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDragOver mRestorePositionOnDrop = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    if-ne v2, v3, :cond_a

    const/4 v11, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v2

    if-eqz v2, :cond_b

    sget v2, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    div-int/lit8 v2, v2, 0x2

    add-int/lit16 v2, v2, 0xfa

    int-to-long v2, v2

    :goto_3
    invoke-virtual {v4, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v3, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v3, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v3, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v4, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    :cond_8
    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v2

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    invoke-virtual {v10}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v3

    sub-float v16, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->approachBorderOnDrag(F)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragTargetLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    goto/16 :goto_1

    :cond_a
    const/4 v11, 0x0

    goto/16 :goto_2

    :cond_b
    if-eqz v11, :cond_c

    const/16 v2, 0xfa

    :goto_4
    int-to-long v2, v2

    goto/16 :goto_3

    :cond_c
    const/16 v2, 0x1f4

    goto :goto_4
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragComplete:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->showHintPages()V

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v2, v1, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v2, v2, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setEmptyCell(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    sget-object v1, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v2, 0x7f0800a1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/Talk;->say(I)V

    return v4
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragViewVisualCenter:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->mapPointFromSelfToChild(Landroid/view/View;[F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->setExistOverLastItemMoved(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->forcelyAnimateReturnPages()V

    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 27

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragManager;->enableQuickOptionView()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_0
    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onDropCompleted mRestorePositionOnDrop = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_1
    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v4, :cond_3

    move-object/from16 v4, p1

    check-cast v4, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v4}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v4, v4, v8

    if-nez v4, :cond_3

    const/16 v26, 0x1

    :goto_0
    move-object/from16 v0, p1

    instance-of v0, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    :cond_2
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v4, :cond_4

    move-object/from16 v0, p2

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v5, v12, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v5, :cond_5

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/16 v26, 0x0

    goto :goto_0

    :cond_4
    move-object/from16 v0, v24

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    if-nez v26, :cond_7

    if-eqz v25, :cond_8

    :cond_7
    if-eqz v25, :cond_d

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_d

    :cond_8
    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsDragController$3;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$3;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v16

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V

    :cond_9
    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    :cond_a
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_b

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_c
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_c

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    if-nez v26, :cond_e

    if-eqz v25, :cond_9

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    long-to-int v0, v4

    move/from16 v19, v0

    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    add-int/lit8 v18, v4, -0x1

    :goto_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTargetCell:[I

    const/4 v7, 0x1

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v7

    mul-int/2addr v5, v7

    add-int v18, v4, v5

    goto :goto_5

    :cond_10
    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v10, v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->placeObjectsToNextPosition(IILjava/util/ArrayList;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto/16 :goto_3

    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    :goto_6
    return-void

    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v4, :cond_14

    if-nez p3, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    :cond_13
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-eqz v4, :cond_22

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    new-instance v5, Lcom/android/launcher3/allapps/controller/AppsDragController$5;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$5;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    const-wide/16 v8, 0x12c

    invoke-virtual {v4, v5, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_8
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mRestorePositionOnDrop:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    goto :goto_6

    :cond_14
    const/16 v17, 0x0

    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p1

    instance-of v4, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v4, :cond_15

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v4

    if-eqz v4, :cond_1c

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v8, -0x66

    cmp-long v4, v4, v8

    if-nez v4, :cond_1c

    const/16 v17, 0x1

    :cond_15
    :goto_9
    if-eqz p3, :cond_16

    move-object/from16 v0, p2

    iget-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v4, :cond_16

    if-eqz v17, :cond_21

    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v4, :cond_21

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v6, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-wide v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->getExistOverLastItemMoved()Z

    move-result v4

    if-eqz v4, :cond_17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->undoOverLastItems()V

    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v5, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v5, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5, v7}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->realTimeReorder(Lcom/android/launcher3/allapps/controller/DragAppIcon;Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v4, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v4

    if-nez v4, :cond_1d

    const/4 v4, 0x1

    iput-boolean v4, v11, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v6, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :goto_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v0, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v22

    if-eqz v4, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-wide/from16 v0, v22

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_19
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_1a

    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v17, :cond_20

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v4

    if-eqz v4, :cond_1f

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v7, 0x12c

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_b
    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_1a
    :goto_c
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_1b

    move-object/from16 v0, p2

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v13}, Lcom/android/launcher3/allapps/controller/AppsController;->updateBadgeItems(Ljava/util/ArrayList;)V

    goto/16 :goto_7

    :cond_1c
    const/16 v17, 0x0

    goto/16 :goto_9

    :cond_1d
    if-eqz v17, :cond_1e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4, v6, v11}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_a

    :cond_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->setAlphabeticList()V

    goto/16 :goto_a

    :cond_1f
    const/4 v4, 0x0

    move-object/from16 v0, p2

    iput-boolean v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v4, 0x0

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v5, 0x0

    invoke-virtual {v4, v6, v5}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_b

    :cond_20
    new-instance v4, Lcom/android/launcher3/allapps/controller/AppsDragController$4;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v4, v0, v1, v6, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController$4;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/view/View;)V

    const-wide/16 v8, 0x2d0

    invoke-virtual {v6, v4, v8, v9}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCell(Lcom/android/launcher3/allapps/controller/DragAppIcon;)V

    goto/16 :goto_7

    :cond_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    goto/16 :goto_8
.end method

.method public onEnterScrollArea(III)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v3

    if-nez p3, :cond_0

    const/4 v2, -0x1

    :goto_0
    add-int v0, v3, v2

    if-ltz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    iput-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    :goto_1
    return v1

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onExitScrollArea()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->invalidate()V

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mInScrollArea:Z

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public onExtraObjectDragged(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v7, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v7}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v7, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v7, :cond_0

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    new-instance v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;

    invoke-direct {v4}, Lcom/android/launcher3/allapps/controller/DragAppIcon;-><init>()V

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v8, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iget v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v7, v4, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-wide v8, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iput-wide v8, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellX:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iget v7, v7, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iput v7, v6, Lcom/android/launcher3/allapps/controller/DragAppIcon;->cellY:I

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mEmpty:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/controller/DragAppIcon;Z)V

    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
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

    return-void
.end method

.method public placeObjectsToOriginalPosition(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_4

    move-object/from16 v0, p2

    iget-object v10, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v2, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v10

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getAppsFocusListener()Lcom/android/launcher3/allapps/controller/AppsFocusListener;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/launcher3/allapps/AppsUtils;->createAppIcon(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;Lcom/android/launcher3/allapps/controller/AppsFocusListener;)Landroid/view/View;

    move-result-object v9

    :goto_0
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v14, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v4, v9

    :cond_1
    iget v12, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v13, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->isAlphabeticalMode()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    invoke-virtual {v2, v13, v12}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->makeEmptyCellAndReorder(II)V

    const/4 v2, 0x1

    iput-boolean v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    :cond_2
    const-wide/16 v2, -0x66

    iput-wide v2, v14, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v4, v14}, Lcom/android/launcher3/allapps/controller/AppsController;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v15, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_3
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v3, v11, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    goto :goto_1

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object v4, v10

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v8, 0x2

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v9

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v9, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p1

    instance-of v2, v0, Lcom/android/launcher3/allapps/view/AppsPagedView;

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v2, v9, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->updateCountBadge(Landroid/view/View;Z)V

    :cond_6
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public scrollLeft()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollLeft()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_0
    return-void
.end method

.method public scrollRight()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->canDragScroll()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsPagedView:Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->scrollRight()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getOpenFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderView;->completeDragExit()V

    :cond_0
    return-void
.end method

.method public setDragMode(I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragMode:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mPrevTarget:Lcom/android/launcher3/allapps/controller/DragAppIcon;

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->rank:I

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    goto :goto_0
.end method

.method public setup(Lcom/android/launcher3/common/view/DragLayer;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    new-instance v0, Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p2}, Lcom/android/launcher3/allapps/controller/AppsReorderController;-><init>(Landroid/content/Context;Lcom/android/launcher3/allapps/controller/AppsController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mAppsReorderController:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    return-void
.end method

.method public startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    return-void
.end method
