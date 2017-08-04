.class public Lcom/android/launcher3/home/HotseatDragController;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragSource;
.implements Lcom/android/launcher3/common/drag/DragState;


# static fields
.field private static final ADJACENT_SCREEN_DROP_DURATION:I = 0x12c

.field private static final REORDER_DELAY:I = 0x96

.field private static final SCREENID_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation
.end field

.field private static mReorderAnimSet:Landroid/animation/AnimatorSet;


# instance fields
.field private mContent:Lcom/android/launcher3/home/HotseatCellLayout;

.field private mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mDragMode:I

.field private mDragViewVisualCenter:[F

.field private mEmptyCellRank:I

.field private mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

.field private mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mHotseat:Lcom/android/launcher3/home/Hotseat;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPrevTargetRank:I

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

.field private mRestorePosition:Z

.field private mTargetCell:[I

.field private mTargetRank:I

.field private mTempPt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/HotseatDragController$6;

    invoke-direct {v0}, Lcom/android/launcher3/home/HotseatDragController$6;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HotseatDragController;->SCREENID_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Hotseat;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [F

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    iput v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v0, Lcom/android/launcher3/home/HotseatDragController$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/HotseatDragController$4;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HomeController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HotseatDragController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    return-object v0
.end method

.method static synthetic access$200()Landroid/animation/AnimatorSet;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$202(Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    sput-object p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HotseatDragController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/HotseatDragController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HotseatDragController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HotseatCellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V
    .locals 20

    new-instance v19, Landroid/graphics/Rect;

    invoke-direct/range {v19 .. v19}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    const/4 v2, 0x2

    new-array v3, v2, [I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v2, p0

    move-object/from16 v4, p3

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatDragController;->getFinalPositionForDropAnimation([ILcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v19

    iget v6, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v19

    iget v7, v0, Landroid/graphics/Rect;->top:I

    const/4 v2, 0x0

    aget v8, v3, v2

    const/4 v2, 0x1

    aget v9, v3, v2

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/high16 v14, 0x3f800000    # 1.0f

    const/16 v16, 0x2

    const/16 v17, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v18, v0

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;IIIIFFFFFLjava/lang/Runnable;IILandroid/view/View;)V

    return-void
.end method

.method private cancelReorder()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private commitTempPlacement()V
    .locals 7

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HotseatDragController;->commit(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method private getFinalPositionForDropAnimation([ILcom/android/launcher3/common/drag/DragView;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/ItemInfo;[I)V
    .locals 10

    iget v3, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v4, p4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    const/4 v1, 0x0

    aget v1, p5, v1

    const/4 v2, 0x1

    aget v2, p5, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToRect(IIIILandroid/graphics/Rect;)V

    const/4 v0, 0x0

    iget v1, v5, Landroid/graphics/Rect;->left:I

    aput v1, p1, v0

    const/4 v0, 0x1

    iget v1, v5, Landroid/graphics/Rect;->top:I

    aput v1, p1, v0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p1, v1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    int-to-float v7, v0

    const/4 v0, 0x0

    cmpg-float v0, v7, v0

    if-gez v0, :cond_0

    const/4 v7, 0x0

    :cond_0
    const/4 v0, 0x0

    aget v1, p1, v0

    int-to-float v1, v1

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v6

    sub-float/2addr v2, v8

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    sub-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    const/4 v0, 0x1

    aget v1, p1, v0

    int-to-float v1, v1

    mul-float v2, v6, v7

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v8

    int-to-float v8, v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float/2addr v9, v6

    mul-float/2addr v8, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    sub-float/2addr v2, v8

    add-float/2addr v1, v2

    float-to-int v1, v1

    aput v1, p1, v0

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget v1, p1, v0

    invoke-virtual {p2}, Lcom/android/launcher3/common/drag/DragView;->getDragVisualizeOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-float v2, v2

    mul-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    sub-int/2addr v1, v2

    aput v1, p1, v0

    :cond_1
    return-void
.end method

.method private initDragRanks()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    return-void
.end method

.method private isDragOverAppsButton([I)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v4, p1, v3

    aget v5, p1, v2

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    move v1, v3

    goto :goto_0
.end method

.method private isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    instance-of v1, v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 25

    new-instance v16, Lcom/android/launcher3/home/HotseatDragController$3;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatDragController$3;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v22, v0

    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v23, v0

    const-wide/16 v14, -0x65

    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v2, :cond_0

    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/ItemInfo;->isAppOrShortcutType()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v2, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v18, v0

    const/4 v12, 0x0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_3

    const/16 v19, 0x1

    :goto_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v17

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

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

    :cond_3
    const/16 v19, 0x0

    goto :goto_1

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v19, :cond_5

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v21

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v24

    :goto_3
    move-object/from16 v0, v17

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_4

    move-object/from16 v17, v21

    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    if-eqz v2, :cond_12

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v6, 0x0

    move-object/from16 v5, v24

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_9

    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v2

    if-nez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v21, v17

    goto/16 :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v21

    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_6

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-object/from16 v2, v21

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v4, v21

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v24

    goto/16 :goto_3

    :cond_7
    move-object/from16 v21, v17

    goto :goto_4

    :cond_8
    const/4 v12, 0x1

    :cond_9
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_b

    if-nez v18, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hasFolderItem()Z

    move-result v2

    if-nez v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto/16 :goto_0

    :cond_a
    const/4 v12, 0x1

    :cond_b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    if-eqz v12, :cond_d

    if-nez v18, :cond_e

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_c

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_c
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v0, v3}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move/from16 v5, v22

    move/from16 v6, v23

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v20

    if-nez v20, :cond_f

    if-eqz v12, :cond_13

    if-eqz v18, :cond_13

    :cond_f
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_6
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_11

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v12}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_11
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v2, v13, v0, v3}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    goto/16 :goto_0

    :cond_12
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findCellForSpan([III)Z

    goto :goto_5

    :cond_13
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_14

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    :cond_14
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x65

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    const/4 v10, -0x1

    move-object/from16 v3, v17

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, v17

    instance-of v2, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    new-instance v4, Ljava/util/ArrayList;

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, v2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-virtual {v3, v4, v6, v7}, Lcom/android/launcher3/home/HomeController;->addFolderItemsToDb(Ljava/util/ArrayList;J)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    if-eqz v2, :cond_15

    move-object/from16 v2, v17

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v2

    if-eqz v2, :cond_15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderLock:Lcom/android/launcher3/folder/folderlock/FolderLock;

    check-cast v21, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v4, -0x65

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v8, 0x0

    aget v8, v3, v8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v9, 0x1

    aget v9, v3, v9

    move-object/from16 v0, v17

    iget v10, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v17

    iget v11, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v3, v24

    invoke-virtual/range {v2 .. v11}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

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
    .locals 11

    iget-object v9, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v9, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->getDistanceFromCell(FF[I)F

    move-result v4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willCreateUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;[IFZ)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual {v1, v0, v2, v4}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->willAddToExistingUserFolder(Lcom/android/launcher3/common/base/item/ItemInfo;[IF)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v8

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x0

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v0, v1, v2

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v2, 0x1

    invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v0, v1, v2

    :cond_2
    const-wide/16 v6, -0x65

    new-instance v10, Lcom/android/launcher3/home/HotseatDragController$2;

    invoke-direct {v10, p0, v9}, Lcom/android/launcher3/home/HotseatDragController$2;-><init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/base/item/PendingAddItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-direct {p0, v9, v0, v1, v10}, Lcom/android/launcher3/home/HotseatDragController;->animateWidgetDrop(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v3, v3, v5

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->dropCompletedWidgetFromHotseat(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    goto :goto_0
.end method

.method private onDropExtraObjects(Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;ZZ)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;"
        }
    .end annotation

    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_0
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz p3, :cond_1

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v2, :cond_0

    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v0, p2

    iput-boolean v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget-object v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz p2, :cond_4

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, -0x65

    cmp-long v2, v4, v6

    if-nez v2, :cond_4

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_8

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-wide/from16 v16, v0

    :goto_1
    const-wide/16 v4, -0x65

    cmp-long v2, v16, v4

    if-nez v2, :cond_f

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v2

    if-nez v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HomeController;->isItemInFolder(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v21, 0x1

    :goto_2
    const/16 v18, 0x0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v18

    if-nez p2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    :cond_5
    const/16 v22, 0x0

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v2, v2, Lcom/android/launcher3/home/WorkspaceDragController;

    if-eqz v2, :cond_a

    :cond_6
    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v24

    :goto_3
    if-eqz v22, :cond_12

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_12

    move-object/from16 v3, v22

    :goto_4
    if-eqz p2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    iget v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    aput v5, v2, v4

    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    if-eqz p2, :cond_7

    if-nez v21, :cond_e

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v8, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v9, v4, v5

    const/4 v10, -0x1

    move-wide/from16 v4, v16

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const-wide/16 v8, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x0

    aget v10, v2, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v11, v2, v5

    iget v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v24

    move-wide/from16 v6, v16

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    iget-object v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v4, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v0, v24

    invoke-virtual {v2, v4, v0, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;Ljava/lang/Runnable;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_8
    const-wide/16 v16, -0x65

    goto/16 :goto_1

    :cond_9
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, v20

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown item type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :pswitch_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_b

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v22

    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v2, v22

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4, v5, v2}, Lcom/android/launcher3/home/HomeBindController;->createShortcut(Landroid/view/ViewGroup;Lcom/android/launcher3/common/base/item/IconInfo;)Landroid/view/View;

    move-result-object v24

    goto/16 :goto_3

    :cond_b
    move-object/from16 v22, v20

    goto :goto_6

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v2

    if-eqz v2, :cond_c

    move-object/from16 v2, v20

    check-cast v2, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/folder/FolderInfo;->makeCloneInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v22

    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v4, v22

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Lcom/android/launcher3/folder/view/FolderIconView;->fromXml(Lcom/android/launcher3/Launcher;Landroid/view/ViewGroup;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/common/base/controller/ControllerBase;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;I)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v24

    goto/16 :goto_3

    :cond_c
    move-object/from16 v22, v20

    goto :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/home/HotseatCellLayout;->findCellForSpan([III)Z

    goto/16 :goto_5

    :cond_e
    if-eqz v18, :cond_0

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    move-object/from16 v0, v19

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v15}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto/16 :goto_0

    :cond_f
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    move/from16 v0, p2

    iput-boolean v0, v15, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->restored:Z

    move-object/from16 v3, v20

    goto/16 :goto_0

    :cond_10
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->restoreHotseatObjects(Ljava/util/ArrayList;)V

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    return-object v14

    :cond_12
    move-object/from16 v3, v20

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private sayDragTalkBack(ZZII)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_3

    if-eqz p2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v4, 0x7f0800b7

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f0800b6

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    add-int/lit8 v6, p4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    add-int/lit8 v6, p3, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    sget-object v3, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, p4

    :goto_1
    const v3, 0x7f0800b3

    new-array v4, v8, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move v1, p3

    goto :goto_1

    :cond_3
    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setReorderTarget()Z
    .locals 13

    const/4 v12, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v10

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    if-ne v10, v0, :cond_0

    :goto_0
    return v3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_1

    add-int/lit8 v0, v10, 0x1

    :goto_1
    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move v3, v12

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v10, -0x1

    goto :goto_1

    :cond_2
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_4

    move v7, v10

    :goto_2
    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_3

    iget v10, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    :cond_3
    const/4 v0, 0x2

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->regionToCenterPoint(IIII[I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v1, v5, v12

    aget v2, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v8

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v12

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v12

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v11

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v9, -0x1

    :goto_3
    if-le v10, v7, :cond_7

    if-le v6, v8, :cond_6

    iput v11, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    :cond_4
    iget v7, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    goto :goto_2

    :cond_5
    move v9, v3

    goto :goto_3

    :cond_6
    sub-int v0, v11, v9

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    :goto_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    aput v1, v0, v3

    goto/16 :goto_0

    :cond_7
    if-ge v6, v8, :cond_8

    iput v11, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto/16 :goto_0

    :cond_8
    add-int v0, v11, v9

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    aput v1, v0, v12

    goto/16 :goto_0
.end method


# virtual methods
.method public acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 8

    const-wide/16 v2, -0x65

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    const-wide/16 v4, -0x1

    iget v6, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    iget v7, p2, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HomeBindController;->addFolder(Lcom/android/launcher3/common/base/view/CellLayout;JJII)Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v0

    return-object v0
.end method

.method addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/home/HomeController;->updateItemLocationsInDatabase(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method createUserFolderIfNecessary([ILandroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object v2, p1

    move-object v3, p2

    move-object v4, v1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    return v0
.end method

.method public getController()Lcom/android/launcher3/common/stage/Stage;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    return-object v0
.end method

.method public getDragSourceType()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getFullScreenHeight(Landroid/app/Activity;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1, v2, p1}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-nez v1, :cond_0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public getIntrinsicIconSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v0

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLeft()I

    move-result v0

    return v0
.end method

.method public getOutlineColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getPageIndexForDragView(Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v0

    return v0
.end method

.method public getQuickOptionFlags(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)I
    .locals 5

    if-nez p1, :cond_1

    const/4 v3, 0x0

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v1, v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v0, :cond_2

    if-eqz v1, :cond_3

    :cond_2
    or-int/lit8 v3, v3, 0x1

    :cond_3
    if-nez v0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    or-int/lit8 v3, v3, 0x20

    :cond_5
    if-eqz v2, :cond_7

    if-nez v0, :cond_6

    if-eqz v1, :cond_7

    :cond_6
    or-int/lit16 v3, v3, 0x1000

    :cond_7
    if-eqz v2, :cond_9

    if-nez v0, :cond_8

    if-eqz v1, :cond_9

    :cond_8
    or-int/lit16 v3, v3, 0x2000

    :cond_9
    if-eqz v0, :cond_a

    or-int/lit8 v3, v3, 0x40

    :cond_a
    if-eqz v0, :cond_b

    or-int/lit16 v3, v3, 0x80

    :cond_b
    if-eqz v0, :cond_c

    or-int/lit8 v3, v3, 0x2

    :cond_c
    if-eqz v0, :cond_d

    or-int/lit16 v3, v3, 0x100

    :cond_d
    if-eqz v0, :cond_e

    or-int/lit16 v3, v3, 0x200

    :cond_e
    if-eqz v0, :cond_f

    or-int/lit16 v3, v3, 0x400

    :cond_f
    if-eqz v1, :cond_10

    if-nez v2, :cond_10

    or-int/lit8 v3, v3, 0x8

    :cond_10
    if-eqz v1, :cond_11

    or-int/lit16 v3, v3, 0x800

    :cond_11
    if-eqz v0, :cond_12

    or-int/lit16 v3, v3, 0x4000

    :cond_12
    if-eqz v0, :cond_0

    const v4, 0x8000

    or-int/2addr v3, v4

    goto :goto_0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getTop()I

    move-result v0

    return v0
.end method

.method public isDropEnabled(Z)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method isReorderRunning()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method makeEmptyCell(IZZ)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    return-void
.end method

.method makeEmptyCells(IIZZ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    add-int v0, v2, p2

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getMaxCellCount()I

    move-result v2

    if-le v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getMaxCellCount()I

    move-result v0

    :cond_2
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->cancelReorder()V

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, p3, v1, p1}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderMakeCells(Z[[ZI)Landroid/animation/AnimatorSet;

    move-result-object v2

    sput-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    :cond_4
    if-eqz p4, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    add-int v0, v2, p2

    goto :goto_1

    :cond_6
    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    if-eq v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_2
.end method

.method mapPointFromSelfToHotseatLayout([F)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v1, p1, v4

    float-to-int v1, v1

    aput v1, v0, v4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v1, p1, v3

    float-to-int v1, v1

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[IZ)F

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->mapCoordInSelfToDescendent(Landroid/view/View;[I)F

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v0, v0, v4

    int-to-float v0, v0

    aput v0, p1, v4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTempPt:[I

    aget v0, v0, v3

    int-to-float v0, v0

    aput v0, p1, v3

    return-void
.end method

.method public onDragEnd()Z
    .locals 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->initDragRanks()V

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Hotseat;->changeGrid(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v6

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v2, v2, v3

    float-to-int v2, v2

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v6

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragEnter()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setMaxDistance(I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    invoke-virtual {p0, v6}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->showCancelDropTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v0, v0, v6

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    aget v1, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HotseatDragController;->setDragEnterTarget(FF)V

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    invoke-virtual {p0, v0, v3, v6}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCell(IZZ)V

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    goto :goto_1
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p2, :cond_2

    iput-boolean v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragExit(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->clearDragOutlines()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    iget-boolean v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragComplete:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->markCellsAsOccupiedForAllChild()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    goto :goto_0
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 11

    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v0

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
    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_4

    :cond_3
    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getTranslationY()F

    move-result v0

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getRegistrationY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getOffsetY()F

    move-result v1

    sub-float v10, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/HomeController;->approachBorderOnDrag(F)V

    :cond_4
    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ltz v0, :cond_5

    iget v0, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-gez v0, :cond_6

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Improper spans found"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p1, v0}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v2, v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget v1, v9, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    if-eq v0, v1, :cond_8

    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    :cond_8
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDragOver([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_b

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->setReorderTarget()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v8, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v8}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    :goto_1
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    if-eq v0, v1, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarmListener:Lcom/android/launcher3/util/alarm/OnAlarmListener;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->clearDragOutlines()V

    goto :goto_1

    :cond_a
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    iget v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mEmptyCellRank:I

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mPrevTargetRank:I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->setDragMode(I)V

    goto/16 :goto_0
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 29

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->getVisualCenter([F)[F

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HotseatDragController;->mapPointFromSelfToHotseatLayout([F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v2, :cond_1

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HotseatDragController;->onDropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    :goto_1
    return-void

    :cond_1
    new-instance v18, Lcom/android/launcher3/home/HotseatDragController$1;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/HotseatDragController$1;-><init>(Lcom/android/launcher3/home/HotseatDragController;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v28, v0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v0, v2, Lcom/android/launcher3/folder/FolderInfo;

    move/from16 v25, v0

    const/16 v20, 0x0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-nez v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-wide v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    const-wide/16 v4, -0x65

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    const/16 v23, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v4, 0x0

    aget v3, v3, v4

    float-to-int v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v5, 0x1

    aget v4, v4, v5

    float-to-int v4, v4

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    if-eqz v23, :cond_4

    move-object/from16 v6, v28

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v5, v21

    move-object/from16 v7, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropCreateUserFolder([F[ILandroid/view/View;Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_6

    if-nez v25, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_1

    :cond_3
    const/16 v23, 0x0

    goto :goto_2

    :cond_4
    const/4 v6, 0x0

    goto :goto_3

    :cond_5
    const/16 v20, 0x1

    :cond_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p1

    invoke-virtual {v2, v3, v4, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->onDropAddToExistingFolder([F[ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-eqz v2, :cond_a

    if-nez v25, :cond_9

    if-eqz v23, :cond_7

    if-eqz v28, :cond_7

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    goto/16 :goto_1

    :cond_9
    const/16 v20, 0x1

    :cond_a
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->makeEmptyCells(IIZZ)V

    :cond_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-int v8, v2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragViewVisualCenter:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-int v9, v2

    const/4 v10, 0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual/range {v7 .. v12}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestVacantArea(IIII[I)[I

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    move-object/from16 v26, v0

    check-cast v26, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_11

    const/16 v22, 0x1

    :goto_4
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/HotseatDragController;->isDragWidget(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    move-result v2

    if-nez v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->isFull()Z

    move-result v2

    if-eqz v2, :cond_d

    :cond_c
    const/16 v22, 0x0

    :cond_d
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v22, :cond_13

    const-wide/16 v10, -0x65

    const-wide/16 v12, -0x1

    if-eqz v23, :cond_e

    if-eqz v28, :cond_12

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_e
    :goto_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v21

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    const/4 v2, 0x1

    move-object/from16 v0, v27

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    const/4 v2, 0x0

    move-object/from16 v0, v27

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v27

    iget v14, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v27

    iget v15, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v24

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v27

    iget v5, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    :goto_6
    if-nez v23, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    if-ne v2, v3, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v2, v2, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    if-eq v2, v3, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->notifyCapture(Z)V

    :cond_10
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v2

    if-eqz v2, :cond_18

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v17, 0x12c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    move-object/from16 v19, v0

    move-object/from16 v16, v21

    invoke-virtual/range {v14 .. v19}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_7
    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    if-nez v20, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/launcher3/home/HotseatDragController;->onDropExtraObjects(Ljava/util/ArrayList;ZZ)Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_11
    const/16 v22, 0x0

    goto/16 :goto_4

    :cond_12
    const-string v2, "DropTarget"

    const-string v3, "mDragInfo.cell has null parent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_13
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v27

    check-cast v27, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v2, :cond_17

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    const-wide/16 v10, -0x64

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-virtual {v2, v3}, Lcom/android/launcher3/home/HomeController;->findEmptyCell([I)J

    move-result-wide v12

    if-eqz v23, :cond_14

    if-eqz v28, :cond_16

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_14
    :goto_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    move-object/from16 v0, v26

    iget v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v0, v27

    iput v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    aget v14, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    aget v15, v2, v3

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v24

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v21

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    move-object/from16 v0, v27

    iget v14, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v27

    iget v15, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    move/from16 v16, v0

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move/from16 v17, v0

    move-object/from16 v9, v24

    invoke-virtual/range {v8 .. v17}, Lcom/android/launcher3/home/HomeController;->modifyItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIIII)V

    :goto_9
    if-eqz v23, :cond_15

    move-object/from16 v0, v28

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    :cond_15
    const/4 v2, 0x1

    move-object/from16 v0, v27

    iget v3, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/android/launcher3/home/HotseatDragController;->sayDragTalkBack(ZZII)V

    goto/16 :goto_6

    :cond_16
    const-string v2, "DropTarget"

    const-string v3, "mDragInfo.cell has null parent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    :cond_17
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x0

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    aput v4, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v3, 0x1

    move-object/from16 v0, v27

    iget v4, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    aput v4, v2, v3

    goto :goto_9

    :cond_18
    const/4 v2, 0x0

    move-object/from16 v0, p1

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v3, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v2, v0, v3}, Lcom/android/launcher3/home/HomeController;->updateCountBadge(Landroid/view/View;Z)V

    invoke-interface/range {v18 .. v18}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_7
.end method

.method public onDropCompleted(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 11

    const/4 v10, 0x0

    const/4 v8, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    const-wide/16 v2, -0x65

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    move v9, v8

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->onDropChild(Landroid/view/View;)V

    :cond_1
    iget-boolean v0, p2, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->cancelled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v8, v8}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_3
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportQuickOption()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->isQuickOptionShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getQuickOptionManager()Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->startBounceAnimation()V

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0, v10}, Lcom/android/launcher3/home/HomeController;->showMoveToAppsPanel(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0
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

    if-eqz p1, :cond_2

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
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/home/HotseatDragController;->removeEmptyCells(ZZ)V

    :cond_2
    return-void
.end method

.method public onExtraObjectDropCompleted(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 6
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

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getCloneItemEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/android/launcher3/home/Workspace;

    if-nez v3, :cond_1

    instance-of v3, p1, Lcom/android/launcher3/home/Hotseat;

    if-nez v3, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v2

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/home/HomeController;->removeHomeOrFolderItem(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)Z

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v4, v5}, Lcom/android/launcher3/home/HomeController;->dropCompletedFromHotseat(Ljava/util/ArrayList;Ljava/lang/Runnable;Z)V

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    return-void
.end method

.method removeEmptyCells(ZZ)V
    .locals 6

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->hasEmptyCell()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HotseatCellLayout;->getOccupied()[[Z

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountY()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getEmptyCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v5, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/home/HotseatDragController;->isReorderRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->cancelReorder()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/home/HotseatCellLayout;->reorderRemoveCells(Z[[Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    sput-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    sget-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_3

    sget-object v1, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    :cond_3
    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->commitTempPlacement()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v4, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/home/HotseatCellLayout;->getEmptyCount(I)I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v5}, Lcom/android/launcher3/home/HotseatCellLayout;->setGridSize(II)V

    goto :goto_1
.end method

.method restoreHotseatObjects(Ljava/util/ArrayList;)V
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-le v2, v4, :cond_0

    sget-object v2, Lcom/android/launcher3/home/HotseatDragController;->SCREENID_COMPARATOR:Ljava/util/Comparator;

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/animation/LauncherAnimUtils;->createAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v14

    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :cond_1
    :goto_0
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v2

    if-nez v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    const/16 v21, 0x1

    :goto_1
    if-eqz v21, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v19

    if-eqz v19, :cond_1

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/folder/FolderInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v2

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x0

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v4, 0x1

    move-object/from16 v0, v20

    iget v5, v0, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    aput v5, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v1}, Lcom/android/launcher3/home/HotseatDragController;->addToExistingFolderIfNecessary([ILcom/android/launcher3/common/drag/DropTarget$DragObject;)Z

    goto :goto_0

    :cond_2
    const/16 v21, 0x0

    goto :goto_1

    :cond_3
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v24

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    move-object/from16 v0, v17

    iput-boolean v2, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    :cond_4
    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v2, 0x1

    move-object/from16 v0, v22

    iput-boolean v2, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v4, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v9, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/4 v10, -0x1

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/home/HomeController;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-wide v6, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iget-wide v8, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v11, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v12, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v13, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    move-object/from16 v5, v24

    invoke-virtual/range {v4 .. v13}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    invoke-virtual/range {v24 .. v24}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    const/4 v2, 0x0

    move-object/from16 v0, v24

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v4, 0x1

    move-object/from16 v0, v24

    invoke-virtual {v2, v0, v4}, Lcom/android/launcher3/home/HomeController;->createNewAppBounceAnimation(Landroid/view/View;I)Landroid/animation/ValueAnimator;

    move-result-object v15

    new-instance v2, Lcom/android/launcher3/home/HotseatDragController$5;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v2, v0, v1}, Lcom/android/launcher3/home/HotseatDragController$5;-><init>(Lcom/android/launcher3/home/HotseatDragController;Lcom/android/launcher3/common/drag/DragView;)V

    invoke-virtual {v15, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_6
    invoke-interface/range {v16 .. v16}, Ljava/util/Collection;->size()I

    move-result v2

    if-lez v2, :cond_7

    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    invoke-virtual {v14}, Landroid/animation/AnimatorSet;->start()V

    :cond_7
    return-void
.end method

.method setDragEnterTarget(FF)V
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    float-to-int v1, p1

    float-to-int v2, p2

    iget-object v5, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->findNearestArea(IIII[I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    const/4 v0, 0x2

    new-array v5, v0, [I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v1, v1, v7

    iget-object v2, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v2, v2, v3

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/HotseatCellLayout;->regionToCenterPoint(IIII[I)V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    aget v1, v5, v7

    aget v2, v5, v3

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HotseatCellLayout;->cellToPosition(II)I

    move-result v6

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->isVerticalHotseat()Z

    move-result v0

    if-eqz v0, :cond_2

    int-to-float v0, v6

    cmpg-float v0, v0, p2

    if-gez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v3

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v3

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    :cond_2
    int-to-float v0, v6

    cmpg-float v0, v0, p1

    if-gez v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v7

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_3
    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    aget v0, v0, v7

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetCell:[I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/HotseatDragController;->isDragOverAppsButton([I)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mTargetRank:I

    goto :goto_0
.end method

.method public setDragMode(I)V
    .locals 2

    iget v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    :cond_0
    :goto_0
    iput p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragMode:I

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->cleanup()V

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->enterNormalState(Z)V

    goto :goto_0
.end method

.method setup(Lcom/android/launcher3/home/HomeController;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mHotseat:Lcom/android/launcher3/home/Hotseat;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Hotseat;->getLayout()Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    new-instance v0, Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/folder/controller/FolderIconDropController;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/drag/DragState;)V

    iput-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mFolderController:Lcom/android/launcher3/folder/controller/FolderIconDropController;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/controller/FolderIconDropController;->setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/HotseatDragController;->initDragRanks()V

    return-void
.end method

.method startDrag(Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;Z)V
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    sget-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/HotseatDragController;->mReorderAnimSet:Landroid/animation/AnimatorSet;

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mContent:Lcom/android/launcher3/home/HotseatCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/HotseatDragController;->mDragInfo:Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    iget-object v1, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HotseatCellLayout;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/HotseatDragController;->mRestorePosition:Z

    return-void
.end method
