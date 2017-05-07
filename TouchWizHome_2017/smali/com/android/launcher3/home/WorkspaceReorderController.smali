.class Lcom/android/launcher3/home/WorkspaceReorderController;
.super Ljava/lang/Object;
.source "WorkspaceReorderController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;,
        Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;,
        Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;
    }
.end annotation


# static fields
.field private static final INVALID_DIRECTION:I = -0x64

.field private static final MODE_ACCEPT_DROP:I = 0x4

.field private static final MODE_DRAG_OVER:I = 0x1

.field static final MODE_ON_DROP:I = 0x2

.field static final MODE_ON_DROP_EXTERNAL:I = 0x3

.field private static final MODE_SHOW_REORDER_HINT:I = 0x0

.field private static final REORDER_ANIMATION_DURATION:I = 0x96

.field private static final REORDER_PREVIEW_MAGNITUDE:I = 0x14

.field private static final REORDER_TIMEOUT:I = 0x15e

.field private static final TAG:Ljava/lang/String; = "WSReorderController"


# instance fields
.field private mCountX:I

.field private mCountY:I

.field private mDirectionVector:[I

.field private mIntersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mItemPlacementDirty:Z

.field private mLastReorderX:I

.field private mLastReorderY:I

.field private mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mOccupied:[[Z

.field private mOccupiedRect:Landroid/graphics/Rect;

.field private mPreviousReorderDirection:[I

.field private final mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mShakeAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetState:Lcom/android/launcher3/common/drag/DragState;

.field private final mTempLocation:[I

.field private mTmpOccupied:[[Z

.field private final mTmpPoint:[I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragState;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iput v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    iput v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/WorkspaceReorderController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/WorkspaceReorderController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/WorkspaceReorderController;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/WorkspaceReorderController;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/home/WorkspaceReorderController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    return p1
.end method

.method static synthetic access$702(Lcom/android/launcher3/home/WorkspaceReorderController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/WorkspaceReorderController;)Lcom/android/launcher3/common/drag/DragState;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    return-object v0
.end method

.method private addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 11

    iget-object v0, p4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    const/4 v10, 0x0

    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x0

    check-cast v7, [[Z

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    move-object v0, p0

    move-object v5, p3

    invoke-direct/range {v0 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->findNearestArea(IIII[I[[Z[[Z[I)[I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iput v0, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    const/4 v10, 0x1

    :cond_0
    iget v1, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v2, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v3, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v4, v9, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v5, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v6, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    return v10
.end method

.method private addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_1

    const/16 v22, 0x1

    :cond_0
    return v22

    :cond_1
    const/16 v22, 0x0

    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-nez v17, :cond_2

    new-instance v17, Landroid/graphics/Rect;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-direct {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_2
    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v8

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/graphics/Rect;->union(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_4
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Z

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v23, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    sub-int v3, v2, v21

    move-object/from16 v0, v18

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    sub-int v4, v2, v23

    move-object/from16 v0, v18

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    const/4 v8, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForRect(Landroid/graphics/Rect;[[ZZ)V

    move-object/from16 v0, v17

    iget v9, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v17

    iget v10, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Rect;->height()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    move-object/from16 v16, v0

    move-object/from16 v8, p0

    move-object/from16 v13, p3

    move-object v15, v7

    invoke-direct/range {v8 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findNearestArea(IIII[I[[Z[[Z[I)[I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    if-ltz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int v19, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTempLocation:[I

    const/4 v3, 0x1

    aget v2, v2, v3

    move-object/from16 v0, v17

    iget v3, v0, Landroid/graphics/Rect;->top:I

    sub-int v20, v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    add-int v3, v3, v19

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    add-int v3, v3, v20

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    goto :goto_3

    :cond_6
    const/16 v22, 0x1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    move-object/from16 v0, v18

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move-object/from16 v0, v18

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    move-object/from16 v0, v18

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    move-object/from16 v0, v18

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v14, 0x1

    move-object/from16 v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_4
.end method

.method private animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V
    .locals 16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v12

    const/4 v13, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v13, v1, :cond_1

    const/4 v14, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v14, v1, :cond_0

    aget-object v1, v15, v13

    const/4 v3, 0x0

    aput-boolean v3, v1, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v11

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v11, :cond_4

    invoke-virtual {v12, v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    move-object/from16 v0, p2

    if-ne v2, v0, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-eqz v10, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v3, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    const/16 v5, 0x96

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    invoke-virtual/range {v1 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object v8, v15

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_4
    if-eqz p3, :cond_5

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object v8, v15

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    :cond_5
    return-void
.end method

.method private attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v1, 0x1

    aget v3, p3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    aget v4, p3, v1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, v1, :cond_2

    aget v0, p3, v1

    aput v2, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    aput v0, p3, v1

    aget v0, p3, v2

    aput v2, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v2

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aput v2, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v1

    aget v0, p3, v2

    aput v2, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aput v0, p3, v2

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    :goto_1
    move v1, v2

    goto :goto_0

    :cond_2
    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aget v3, p3, v2

    aput v3, p3, v1

    aput v0, p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController;->pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_0

    aget v3, p3, v2

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v2

    aget v3, p3, v1

    mul-int/lit8 v3, v3, -0x1

    aput v3, p3, v1

    aget v0, p3, v1

    aget v3, p3, v2

    aput v3, p3, v1

    aput v0, p3, v2

    goto :goto_1
.end method

.method private beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v12

    const/4 v14, 0x0

    :goto_0
    if-ge v14, v12, :cond_3

    invoke-virtual {v13, v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    move-object/from16 v0, p2

    if-ne v3, v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-nez p3, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v16, 0x1

    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    if-eqz v11, :cond_0

    if-nez v16, :cond_0

    new-instance v1, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    iget v5, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v6, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v7, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v8, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v9, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v10, v11, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v2, p0

    move/from16 v4, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Landroid/view/View;IIIIIII)V

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->animate()V

    goto :goto_1

    :cond_2
    const/16 v16, 0x0

    goto :goto_2

    :cond_3
    return-void
.end method

.method private commitTempPlacement()V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    iget v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    aget-object v6, v6, v3

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    aget-object v7, v7, v3

    iget v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    invoke-static {v6, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_4

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_3

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    if-ne v6, v7, :cond_1

    iget v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    if-eq v6, v7, :cond_2

    :cond_1
    const/4 v6, 0x1

    iput-boolean v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    :cond_2
    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iput v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iput v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iput v6, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTargetState:Lcom/android/launcher3/common/drag/DragState;

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-interface {v6, v7}, Lcom/android/launcher3/common/drag/DragState;->commit(Lcom/android/launcher3/common/base/view/CellLayout;)V

    return-void
.end method

.method private completeAndClearReorderPreviewAnimations()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderPreviewAnimation;->completeAnimationImmediately()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mShakeAnimators:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private computeDirectionVector(FF[I)V
    .locals 8

    const/4 v5, 0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v4, 0x0

    div-float v2, p2, p1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    aput v4, p3, v4

    aput v4, p3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v4

    :cond_0
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v2, v2, v6

    if-lez v2, :cond_1

    invoke-static {p2}, Ljava/lang/Math;->signum(F)F

    move-result v2

    float-to-int v2, v2

    aput v2, p3, v5

    :cond_1
    return-void
.end method

.method private copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V
    .locals 10

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    new-instance v0, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget v6, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v7, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v9, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;-><init>(IIII)V

    invoke-virtual {p1, v1, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->add(Landroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copyOccupiedArray([[Z)V
    .locals 5

    const/4 v4, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    aget-object v1, v1, v0

    aget-object v2, p1, v0

    iget v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V
    .locals 15

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v11

    const/4 v12, 0x0

    :goto_0
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v12, v1, :cond_1

    const/4 v13, 0x0

    :goto_1
    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v13, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    aget-object v1, v1, v12

    const/4 v2, 0x0

    aput-boolean v2, v1, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v10, :cond_4

    invoke-virtual {v11, v12}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    move-object/from16 v0, p2

    if-ne v9, v0, :cond_3

    :cond_2
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-eqz v8, :cond_2

    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    iget v1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iput v1, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    iget v2, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v3, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v4, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v5, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p1

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p1

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    iget-object v6, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v7, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private findConfigurationNoShuffle(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .locals 20

    const/4 v2, 0x2

    new-array v7, v2, [I

    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v18, v3

    if-ne v2, v3, :cond_2

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v3, 0x1

    aget v3, v18, v3

    if-ne v2, v3, :cond_2

    :cond_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_4

    :goto_1
    if-ltz v17, :cond_1

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v3, 0x0

    aget v5, v18, v3

    const/4 v3, 0x1

    aget v6, v18, v3

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIII[I)[I

    const/4 v2, 0x0

    aget v2, v7, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x1

    aget v2, v7, v2

    if-ltz v2, :cond_3

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, v18, v3

    aput v3, v16, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget v3, v18, v3

    aput v3, v16, v2

    :cond_1
    :goto_2
    const/4 v2, 0x0

    aget v2, v7, v2

    if-ltz v2, :cond_6

    const/4 v2, 0x1

    aget v2, v7, v2

    if-ltz v2, :cond_6

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    const/4 v2, 0x0

    aget v2, v16, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    const/4 v2, 0x1

    aget v2, v16, v2

    move-object/from16 v0, p4

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    const/4 v2, 0x1

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    :goto_3
    return-object p4

    :cond_2
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_3
    add-int/lit8 v17, v17, -0x1

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v7, v3

    aput v4, v7, v2

    goto :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    move-object/from16 v0, p3

    iget v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v14, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v9, p1

    move/from16 v10, p2

    move-object v15, v7

    invoke-virtual/range {v8 .. v16}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestVacantArea(IIIIII[I[I)[I

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, p4

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto :goto_3
.end method

.method private findNearestArea(IIII[I[[Z[[Z[I)[I
    .locals 22

    if-eqz p8, :cond_1

    move-object/from16 v4, p8

    :goto_0
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    const/high16 v2, -0x80000000

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    const/16 v17, 0x0

    :goto_1
    add-int/lit8 v18, p4, -0x1

    sub-int v18, v6, v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_a

    const/16 v16, 0x0

    :goto_2
    add-int/lit8 v18, p3, -0x1

    sub-int v18, v5, v18

    move/from16 v0, v16

    move/from16 v1, v18

    if-ge v0, v1, :cond_9

    const/4 v14, 0x0

    :goto_3
    move/from16 v0, p3

    if-ge v14, v0, :cond_4

    const/4 v15, 0x0

    :goto_4
    move/from16 v0, p4

    if-ge v15, v0, :cond_3

    add-int v18, v16, v14

    aget-object v18, p6, v18

    add-int v19, v17, v15

    aget-boolean v18, v18, v19

    if-eqz v18, :cond_2

    if-eqz p7, :cond_0

    aget-object v18, p7, v14

    aget-boolean v18, v18, v15

    if-eqz v18, :cond_2

    :cond_0
    :goto_5
    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v4, v0, [I

    goto :goto_0

    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_4
    sub-int v18, v16, p1

    move/from16 v0, v18

    int-to-float v11, v0

    sub-int v18, v17, p2

    move/from16 v0, v18

    int-to-float v12, v0

    float-to-double v0, v11

    move-wide/from16 v18, v0

    float-to-double v0, v12

    move-wide/from16 v20, v0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v10, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpPoint:[I

    const/16 v18, 0x0

    invoke-static {v11}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    const/16 v18, 0x1

    invoke-static {v12}, Ljava/lang/Math;->signum(F)F

    move-result v19

    move/from16 v0, v19

    float-to-int v0, v0

    move/from16 v19, v0

    aput v19, v7, v18

    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    mul-int v18, v18, v19

    const/16 v19, 0x1

    aget v19, p5, v19

    const/16 v20, 0x1

    aget v20, v7, v20

    mul-int v19, v19, v20

    add-int v8, v18, v19

    const/4 v13, 0x0

    const/16 v18, 0x0

    aget v18, p5, v18

    const/16 v19, 0x0

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/16 v18, 0x1

    aget v18, p5, v18

    const/16 v19, 0x1

    aget v19, v7, v19

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_8

    const/4 v9, 0x1

    :goto_6
    if-nez v9, :cond_5

    if-nez v13, :cond_6

    :cond_5
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-ltz v18, :cond_7

    :cond_6
    invoke-static {v10, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v18

    if-nez v18, :cond_0

    if-le v8, v2, :cond_0

    :cond_7
    move v3, v10

    move v2, v8

    const/16 v18, 0x0

    aput v16, v4, v18

    const/16 v18, 0x1

    aput v17, v4, v18

    goto/16 :goto_5

    :cond_8
    const/4 v9, 0x0

    goto :goto_6

    :cond_9
    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_1

    :cond_a
    const v18, 0x7f7fffff    # Float.MAX_VALUE

    cmpl-float v18, v3, v18

    if-nez v18, :cond_b

    const/16 v18, 0x0

    const/16 v19, -0x1

    aput v19, v4, v18

    const/16 v18, 0x1

    const/16 v19, -0x1

    aput v19, v4, v18

    :cond_b
    return-object v4
.end method

.method private findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyCurrentStateToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->copyOccupiedArray([[Z)V

    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v3, p1

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object v7

    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v8, p0

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v15, p7

    invoke-direct/range {v8 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController;->rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v20

    if-nez v20, :cond_6

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    if-eqz v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v17, 0x0

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    const/4 v3, 0x0

    aget v3, v18, v3

    if-ne v2, v3, :cond_1

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v3, 0x1

    aget v3, v18, v3

    if-ne v2, v3, :cond_1

    :cond_0
    if-lez v17, :cond_5

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_5

    move-object/from16 v0, p3

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    add-int/lit8 v3, v17, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [I

    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    const/4 v2, 0x0

    aget v11, v18, v2

    const/4 v2, 0x1

    aget v12, v18, v2

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    :goto_1
    return-object p7

    :cond_1
    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_2
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    if-le v2, v3, :cond_4

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    if-eq v2, v3, :cond_3

    if-eqz p6, :cond_4

    :cond_3
    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    add-int/lit8 v11, v2, -0x1

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    const/4 v15, 0x0

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    goto :goto_1

    :cond_4
    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p3

    iget v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanY:I

    if-le v2, v3, :cond_5

    new-instance v8, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    move-object/from16 v0, p3

    iget v9, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->minSpanX:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->supportSpans:Ljava/util/ArrayList;

    invoke-direct/range {v8 .. v13}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    const/4 v15, 0x1

    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    move-object v12, v8

    move-object/from16 v13, p4

    move-object/from16 v14, p5

    move-object/from16 v16, p7

    invoke-direct/range {v9 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object p7

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    move-object/from16 v0, p7

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x1

    move-object/from16 v0, p7

    iput-boolean v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    const/4 v2, 0x0

    aget v2, v7, v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    const/4 v2, 0x1

    aget v2, v7, v2

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    move-object/from16 v0, p3

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p7

    iput v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    goto/16 :goto_1
.end method

.method private getDirectionVectorForDrop(IIIILandroid/view/View;[I)V
    .locals 26

    const/4 v2, 0x2

    new-array v7, v2, [I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    new-instance v13, Landroid/graphics/Rect;

    invoke-direct {v13}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v2, 0x0

    aget v9, v7, v2

    const/4 v2, 0x1

    aget v10, v7, v2

    move/from16 v11, p3

    move/from16 v12, p4

    invoke-virtual/range {v8 .. v13}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, p1, v2

    invoke-virtual {v13}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    sub-int v3, p2, v3

    invoke-virtual {v13, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    new-instance v20, Landroid/graphics/Rect;

    invoke-direct/range {v20 .. v20}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    aget v15, v7, v2

    const/4 v2, 0x1

    aget v16, v7, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v14, p0

    move/from16 v17, p3

    move/from16 v18, p4

    move-object/from16 v19, p5

    invoke-direct/range {v14 .. v21}, Lcom/android/launcher3/home/WorkspaceReorderController;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v24

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v16, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v17, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->width()I

    move-result v18

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->height()I

    move-result v19

    invoke-virtual/range {v15 .. v20}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToRect(IIIILandroid/graphics/Rect;)V

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    sub-int v2, v2, p1

    div-int v22, v2, p3

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    sub-int v2, v2, p2

    div-int v23, v2, p4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    move/from16 v0, v24

    if-eq v0, v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    move/from16 v0, p3

    if-ne v0, v2, :cond_1

    :cond_0
    const/16 v22, 0x0

    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    move/from16 v0, v25

    if-eq v0, v2, :cond_2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    :cond_2
    const/16 v23, 0x0

    :cond_3
    if-nez v22, :cond_5

    if-nez v23, :cond_5

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput v3, p6, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, p6, v2

    :goto_0
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget v3, p6, v3

    mul-int/lit8 v3, v3, -0x1

    aput v3, p6, v2

    :cond_4
    return-void

    :cond_5
    move/from16 v0, v22

    int-to-float v2, v0

    move/from16 v0, v23

    int-to-float v3, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v2, v3, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->computeDirectionVector(FF[I)V

    goto :goto_0
.end method

.method private getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    if-eqz p6, :cond_0

    add-int v8, p1, p3

    add-int v9, p2, p4

    move-object/from16 v0, p6

    invoke-virtual {v0, p1, p2, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    :cond_0
    invoke-virtual/range {p7 .. p7}, Ljava/util/ArrayList;->clear()V

    new-instance v6, Landroid/graphics/Rect;

    add-int v8, p1, p3

    add-int v9, p2, p4

    invoke-direct {v6, p1, p2, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    move-object/from16 v0, p5

    if-ne v1, v0, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v8, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v9, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v10, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellHSpan:I

    add-int/2addr v10, v11

    iget v11, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iget v12, v5, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellVSpan:I

    add-int/2addr v11, v12

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v6, v7}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz p6, :cond_1

    move-object/from16 v0, p6

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method private isItemPlacementDirty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    return v0
.end method

.method private isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p6

    const/4 v0, 0x0

    aget v1, p6, v0

    const/4 v0, 0x1

    aget v2, p6, v0

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    move-object v0, p0

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->getViewsIntersectingRegion(IIIILandroid/view/View;Landroid/graphics/Rect;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markCellsForRect(Landroid/graphics/Rect;[[ZZ)V
    .locals 7

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    move-object v0, p0

    move-object v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    return-void
.end method

.method private markCellsForView(IIII[[ZZ)V
    .locals 3

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    return-void

    :cond_1
    move v0, p1

    :goto_0
    add-int v2, p1, p3

    if-ge v0, v2, :cond_0

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-ge v0, v2, :cond_0

    move v1, p2

    :goto_1
    add-int v2, p2, p4

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-ge v1, v2, :cond_2

    aget-object v2, p5, v0

    aput-boolean p6, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private pushViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/graphics/Rect;",
            "[I",
            "Landroid/view/View;",
            "Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;",
            ")Z"
        }
    .end annotation

    new-instance v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p5

    invoke-direct {v11, v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Ljava/util/ArrayList;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)V

    invoke-virtual {v11}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    const/4 v13, 0x0

    const/4 v3, 0x0

    aget v3, p3, v3

    if-gez v3, :cond_1

    const/16 v18, 0x0

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    :goto_0
    if-gtz v16, :cond_4

    const/4 v14, 0x0

    :cond_0
    return v14

    :cond_1
    const/4 v3, 0x0

    aget v3, p3, v3

    if-lez v3, :cond_2

    const/16 v18, 0x2

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v12, Landroid/graphics/Rect;->left:I

    sub-int v16, v3, v4

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    aget v3, p3, v3

    if-gez v3, :cond_3

    const/16 v18, 0x1

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p2

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    goto :goto_0

    :cond_3
    const/16 v18, 0x3

    move-object/from16 v0, p2

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v12, Landroid/graphics/Rect;->top:I

    sub-int v16, v3, v4

    goto :goto_0

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_1

    :cond_5
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->save()V

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->sortConfigurationForEdgePush(I)V

    :goto_2
    if-lez v16, :cond_9

    if-nez v13, :cond_9

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_6
    :goto_3
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    iget-object v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    move-object/from16 v0, v17

    move-object/from16 v1, p4

    if-eq v0, v1, :cond_6

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v11, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->isViewTouchingEdge(Landroid/view/View;I)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget-boolean v3, v15, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_8

    const/4 v13, 0x1

    :cond_7
    add-int/lit8 v16, v16, -0x1

    const/4 v3, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0, v3}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->shift(II)V

    goto :goto_2

    :cond_8
    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->addView(Landroid/view/View;)V

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_3

    :cond_9
    const/4 v14, 0x0

    invoke-virtual {v11}, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->getBoundingRect()Landroid/graphics/Rect;

    move-result-object v12

    if-nez v13, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->left:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    if-gt v3, v4, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->top:I

    if-ltz v3, :cond_a

    iget v3, v12, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    if-gt v3, v4, :cond_a

    const/4 v14, 0x1

    :goto_4
    iget-object v3, v11, Lcom/android/launcher3/home/WorkspaceReorderController$ViewCluster;->views:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_5
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/view/View;

    move-object/from16 v0, p5

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    iget v4, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v5, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v6, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    iget v7, v10, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    const/4 v9, 0x1

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->markCellsForView(IIII[[ZZ)V

    goto :goto_5

    :cond_a
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->restore()V

    goto :goto_4
.end method

.method private rearrangementExists(IIII[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z
    .locals 14

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    add-int v3, p1, p3

    add-int v4, p2, p4

    move/from16 v0, p2

    invoke-virtual {v2, p1, v0, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    if-eqz p6, :cond_2

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    if-eqz v8, :cond_2

    iput p1, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    move/from16 v0, p2

    iput v0, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    :cond_2
    new-instance v11, Landroid/graphics/Rect;

    add-int v2, p1, p3

    add-int v3, p2, p4

    move/from16 v0, p2

    invoke-direct {v11, p1, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p7

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    move-object/from16 v0, p6

    if-eq v9, v0, :cond_3

    move-object/from16 v0, p7

    iget-object v3, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v3, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v3, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v4, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v5, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->x:I

    iget v6, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanX:I

    add-int/2addr v5, v6

    iget v6, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->y:I

    iget v7, v8, Lcom/android/launcher3/home/WorkspaceReorderController$CellAndSpan;->spanY:I

    add-int/2addr v6, v7

    invoke-virtual {v12, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    invoke-static {v11, v12}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-boolean v3, v10, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->canReorder:Z

    if-nez v3, :cond_4

    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p7

    iput-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->intersectingViews:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->attemptPushInDirection(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object v2, p0

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/WorkspaceReorderController;->addViewsToTempLocation(Ljava/util/ArrayList;Landroid/graphics/Rect;[ILandroid/view/View;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_7
    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mIntersectingViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    iget-object v3, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupiedRect:Landroid/graphics/Rect;

    move-object/from16 v0, p5

    move-object/from16 v1, p7

    invoke-direct {p0, v13, v3, v0, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->addViewToTempLocation(Landroid/view/View;Landroid/graphics/Rect;[ILcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_9
    const/4 v2, 0x1

    goto/16 :goto_0
.end method

.method private setItemPlacementDirty(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mItemPlacementDirty:Z

    return-void
.end method


# virtual methods
.method cleanupReorder(Z)V
    .locals 2

    const/4 v1, -0x1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    :cond_0
    iput v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    iput v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    return-void
.end method

.method createAreaForResize(IIIILandroid/view/View;[IZ)Z
    .locals 20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x2

    new-array v9, v4, [I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->regionToCenterPoint(IIII[I)V

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p6, v5

    mul-int/lit8 v5, v5, -0x1

    aput v5, p6, v4

    :cond_1
    new-instance v10, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;

    const/4 v15, 0x0

    move/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p3

    move/from16 v14, p4

    invoke-direct/range {v10 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;-><init>(IIIILjava/util/ArrayList;)V

    const/4 v4, 0x0

    aget v12, v9, v4

    const/4 v4, 0x1

    aget v13, v9, v4

    const/16 v17, 0x1

    new-instance v18, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v11, p0

    move-object v14, v10

    move-object/from16 v15, p6

    move-object/from16 v16, p5

    invoke-direct/range {v11 .. v18}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v19

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceReorderController;->copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    move/from16 v3, p7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher3/home/WorkspaceReorderController;->animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V

    if-eqz p7, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->commitTempPlacement()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    :cond_2
    move-object/from16 v0, v19

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_1
.end method

.method performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I
    .locals 17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v4, :cond_0

    move-object/from16 v15, p5

    :goto_0
    return-object v15

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p5

    invoke-virtual/range {v4 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->findNearestArea(IIII[I)[I

    move-result-object p5

    if-nez p6, :cond_1

    const/4 v4, 0x2

    new-array v0, v4, [I

    move-object/from16 p6, v0

    :cond_1
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    move/from16 v0, p7

    if-eq v0, v4, :cond_2

    const/4 v4, 0x4

    move/from16 v0, p7

    if-ne v0, v4, :cond_6

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    const/16 v5, -0x64

    if-eq v4, v5, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_3

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    const/16 v6, -0x64

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    const/16 v6, -0x64

    aput v6, v4, v5

    :cond_4
    :goto_1
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v10, 0x1

    new-instance v11, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v11, v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v11}, Lcom/android/launcher3/home/WorkspaceReorderController;->findReorderSolution(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;[ILandroid/view/View;ZLcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v16

    new-instance v4, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v5}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;Lcom/android/launcher3/home/WorkspaceReorderController$1;)V

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->findConfigurationNoShuffle(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;)Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;

    move-result-object v14

    const/4 v12, 0x0

    move-object/from16 v0, v16

    iget-boolean v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_7

    invoke-virtual/range {v16 .. v16}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->area()I

    move-result v4

    invoke-virtual {v14}, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->area()I

    move-result v5

    if-lt v4, v5, :cond_7

    move-object/from16 v12, v16

    :cond_5
    :goto_2
    if-nez p7, :cond_9

    if-eqz v12, :cond_8

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    aput v5, p5, v4

    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    aput v5, p5, v4

    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    aput v5, p6, v4

    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    aput v5, p6, v4

    :goto_3
    move-object/from16 v15, p5

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    move-object/from16 v4, p0

    move/from16 v5, p1

    move/from16 v6, p2

    move-object/from16 v9, p4

    invoke-direct/range {v4 .. v10}, Lcom/android/launcher3/home/WorkspaceReorderController;->getDirectionVectorForDrop(IIIILandroid/view/View;[I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mDirectionVector:[I

    const/4 v7, 0x1

    aget v6, v6, v7

    aput v6, v4, v5

    goto/16 :goto_1

    :cond_7
    iget-boolean v4, v14, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->isSolution:Z

    if-eqz v4, :cond_5

    move-object v12, v14

    goto :goto_2

    :cond_8
    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p6, v7

    aput v8, p6, v6

    aput v8, p5, v5

    aput v8, p5, v4

    goto :goto_3

    :cond_9
    const/4 v13, 0x1

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    if-eqz v12, :cond_11

    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewX:I

    aput v5, p5, v4

    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewY:I

    aput v5, p5, v4

    const/4 v4, 0x0

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanX:I

    aput v5, p6, v4

    const/4 v4, 0x1

    iget v5, v12, Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;->dragViewSpanY:I

    aput v5, p6, v4

    const/4 v4, 0x1

    move/from16 v0, p7

    if-eq v0, v4, :cond_a

    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_a

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_c

    :cond_a
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1}, Lcom/android/launcher3/home/WorkspaceReorderController;->copySolutionToTempState(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;)V

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    const/4 v4, 0x2

    move/from16 v0, p7

    if-ne v0, v4, :cond_f

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->animateItemsToSolution(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;Z)V

    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_b

    const/4 v4, 0x3

    move/from16 v0, p7

    if-ne v0, v4, :cond_10

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->commitTempPlacement()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    :cond_c
    :goto_5
    const/4 v4, 0x2

    move/from16 v0, p7

    if-eq v0, v4, :cond_d

    const/4 v4, 0x3

    move/from16 v0, p7

    if-eq v0, v4, :cond_d

    if-nez v13, :cond_e

    :cond_d
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->setUseTempCoords(Z)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->requestLayout()V

    move-object/from16 v15, p5

    goto/16 :goto_0

    :cond_f
    const/4 v4, 0x0

    goto :goto_4

    :cond_10
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-direct {v0, v12, v1, v4}, Lcom/android/launcher3/home/WorkspaceReorderController;->beginOrAdjustReorderPreviewAnimations(Lcom/android/launcher3/home/WorkspaceReorderController$ItemConfiguration;Landroid/view/View;I)V

    goto :goto_5

    :cond_11
    const/4 v13, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, -0x1

    aput v8, p6, v7

    aput v8, p6, v6

    aput v8, p5, v5

    aput v8, p5, v4

    goto :goto_5
.end method

.method prepareChildForDrag(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/view/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    return-void
.end method

.method revertTempState()V
    .locals 13

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->completeAndClearReorderPreviewAnimations()V

    invoke-direct {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->isItemPlacementDirty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v10

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v10, :cond_4

    invoke-virtual {v9, v11}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    if-ne v0, v2, :cond_2

    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellX:I

    iget v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    iput v0, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->tmpCellY:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v2, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellX:I

    iget v3, v12, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->cellY:I

    const/16 v4, 0x96

    iget-object v8, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    move v6, v5

    move v7, v5

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v5}, Lcom/android/launcher3/home/WorkspaceReorderController;->setItemPlacementDirty(Z)V

    goto :goto_0
.end method

.method setReorderTarget(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 3

    const/16 v2, -0x64

    invoke-virtual {p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getOccupied()[[Z

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mOccupied:[[Z

    iget v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountX:I

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mCountY:I

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Z

    iput-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mTmpOccupied:[[Z

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x0

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mPreviousReorderDirection:[I

    const/4 v1, 0x1

    aput v2, v0, v1

    return-void
.end method

.method setUseTempCoords(Z)V
    .locals 5

    iget-object v4, p0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iput-boolean p1, v3, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method startReorder([F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;I)Z
    .locals 19

    const/4 v2, 0x0

    aget v17, p2, v2

    const/4 v2, 0x1

    aget v18, p2, v2

    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    float-to-int v4, v2

    move-object/from16 v0, p3

    iget v5, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v6, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    move-object/from16 v2, p0

    move-object/from16 v7, p5

    move-object/from16 v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/android/launcher3/home/WorkspaceReorderController;->isNearestDropLocationOccupied(IIIILandroid/view/View;[I)Z

    move-result v16

    if-nez v16, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/WorkspaceReorderController;->revertTempState()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p4

    iget-object v4, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, p2, v5

    const/4 v6, 0x1

    aget v6, p2, v6

    move-object/from16 v0, p3

    iget v7, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanX:I

    move-object/from16 v0, p3

    iget v8, v0, Lcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;->spanY:I

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    :cond_0
    :goto_0
    return v16

    :cond_1
    if-eqz p6, :cond_2

    const/4 v2, 0x3

    move/from16 v0, p6

    if-ne v0, v2, :cond_0

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v2

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderX:I

    move/from16 v0, v17

    if-ne v2, v0, :cond_3

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mLastReorderY:I

    move/from16 v0, v18

    if-eq v2, v0, :cond_0

    :cond_3
    const/4 v2, 0x2

    new-array v8, v2, [I

    const/4 v2, 0x0

    aget v2, p1, v2

    float-to-int v3, v2

    const/4 v2, 0x1

    aget v2, p1, v2

    float-to-int v4, v2

    const/4 v9, 0x0

    move-object/from16 v2, p0

    move-object/from16 v5, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p2

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/home/WorkspaceReorderController;->performReorder(IILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Landroid/view/View;[I[II)[I

    new-instance v9, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    invoke-direct/range {v9 .. v15}, Lcom/android/launcher3/home/WorkspaceReorderController$ReorderAlarmListener;-><init>(Lcom/android/launcher3/home/WorkspaceReorderController;[F[ILcom/android/launcher3/home/WorkspaceReorderController$SpanInfo;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v2, v9}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/WorkspaceReorderController;->mReorderAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v4, 0x15e

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    goto :goto_0
.end method
