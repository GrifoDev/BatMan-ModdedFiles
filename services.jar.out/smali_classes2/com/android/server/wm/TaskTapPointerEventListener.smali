.class public Lcom/android/server/wm/TaskTapPointerEventListener;
.super Ljava/lang/Object;
.source "TaskTapPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicy$PointerEventListener;


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mIsDesktopMode:Z

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field private mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

.field private mNeedsToRestoreDefaultIcon:Z

.field private mPointerIconType:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private mTapOutsideTaskMessageSent:Z

.field private final mTmpExcludeRegion:Landroid/graphics/Region;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTouchExcludePointerRegion:Landroid/graphics/Region;

.field private final mTouchExcludeRegion:Landroid/graphics/Region;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    iput-boolean v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    new-instance v0, Landroid/graphics/Region;

    invoke-direct {v0}, Landroid/graphics/Region;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    iput-object p1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    return-void
.end method

.method static synthetic lambda$-com_android_server_wm_TaskTapPointerEventListener_15248(IILcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x961

    if-ne v0, v1, :cond_0

    iget v0, p2, Lcom/android/server/wm/WindowState;->mViewVisibility:I

    if-nez v0, :cond_0

    iget-object v0, p2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    invoke-virtual {v0, p0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method


# virtual methods
.method onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    sget-boolean v0, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual {v0}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method onDisplayReady()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getMultiWindowManagerPolicy()Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isDesktopModeLocked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    iget-object v1, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    return-void
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 24

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->semGetDisplayId()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v21

    move/from16 v0, v20

    move/from16 v1, v21

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v17

    const/16 v20, 0x3

    move/from16 v0, v17

    move/from16 v1, v20

    if-eq v0, v1, :cond_3

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    const/4 v13, 0x1

    :goto_0
    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    :goto_1
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v20, :cond_7

    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_GESTURE:Z

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-object/from16 v20, v0

    if-eqz v20, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    if-eqz v20, :cond_7

    if-nez v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    monitor-enter p0

    :try_start_0
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v20

    if-nez v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    if-eqz v13, :cond_6

    const/16 v20, 0x272f

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    :cond_2
    return-void

    :cond_3
    const/4 v13, 0x1

    goto :goto_0

    :cond_4
    const/4 v13, 0x0

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    goto :goto_1

    :cond_6
    const/16 v20, 0x1f

    goto :goto_2

    :catchall_0
    move-exception v20

    monitor-exit p0

    throw v20

    :cond_7
    and-int/lit16 v0, v5, 0xff

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    :goto_3
    return-void

    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    monitor-enter p0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v20, v0

    if-eqz v20, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_a

    invoke-virtual {v15}, Landroid/graphics/Region;->setEmpty()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v11, v0, Lcom/android/server/wm/WindowManagerService;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz v11, :cond_a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_a

    invoke-virtual {v11}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_8

    invoke-virtual {v11, v15}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    :cond_8
    iget-object v0, v11, Lcom/android/server/wm/WindowState;->mChildren:Lcom/android/server/wm/WindowList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_9
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowState;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lcom/android/server/wm/WindowState;->getTouchableRegion(Landroid/graphics/Region;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    sget-object v21, Landroid/graphics/Region$Op;->UNION:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->op(Landroid/graphics/Region;Landroid/graphics/Region$Op;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v20

    monitor-exit p0

    throw v20

    :cond_a
    :try_start_2
    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Landroid/graphics/Region;->contains(II)Z

    move-result v20

    if-nez v20, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v21, v0

    if-eqz v13, :cond_c

    const/16 v20, 0x272f

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_b
    :goto_6
    monitor-exit p0

    goto/16 :goto_3

    :cond_c
    const/16 v20, 0x1f

    goto :goto_5

    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v18, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v20

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Lcom/android/server/wm/WindowHashMap;

    move-object/from16 v21, v0

    monitor-enter v21

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2, v13}, Lcom/android/server/wm/DisplayContent;->findTaskForResizePoint(IIZ)Lcom/android/server/wm/Task;

    move-result-object v16

    const/4 v10, 0x1

    if-eqz v16, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_11

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    move/from16 v20, v0

    if-eqz v20, :cond_e

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_f

    const/16 v20, 0x3e8

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    :goto_7
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    :cond_e
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    :cond_f
    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_10

    const/16 v10, 0x4e21

    goto :goto_7

    :cond_10
    const/16 v10, 0x3e8

    goto :goto_7

    :cond_11
    if-eqz v16, :cond_16

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->hasFullScreenWindowLocked()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    move-result v20

    if-nez v20, :cond_12

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    :cond_12
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v20

    if-nez v20, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v20

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_16

    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mNeedsToRestoreDefaultIcon:Z

    const/16 v8, 0x8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-ge v0, v1, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_18

    const/16 v10, 0x3f9

    :cond_13
    :goto_8
    sget-boolean v20, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_SUPPORT:Z

    if-eqz v20, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    xor-int/lit8 v20, v20, 0x1

    if-eqz v20, :cond_16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v20

    if-eqz v20, :cond_16

    const/16 v20, 0x2

    move/from16 v0, v17

    move/from16 v1, v20

    if-ne v0, v1, :cond_14

    packed-switch v10, :pswitch_data_0

    :cond_14
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    :goto_a
    if-eqz v14, :cond_20

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v22, 0x8b2

    move/from16 v0, v20

    move/from16 v1, v22

    if-eq v0, v1, :cond_15

    iget v0, v14, Landroid/view/WindowManager$LayoutParams;->type:I

    move/from16 v20, v0

    const/16 v22, 0x96b

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_20

    :cond_15
    :goto_b
    const/16 v10, 0x3e8

    :cond_16
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_24

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mIsDesktopMode:Z

    move/from16 v20, v0

    if-eqz v20, :cond_23

    if-eqz v16, :cond_23

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v20

    if-nez v20, :cond_21

    const/16 v20, 0x3e8

    invoke-static/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    move/from16 v0, v20

    if-eq v0, v10, :cond_17

    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_17
    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    :cond_18
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_19

    const/16 v10, 0x3f8

    goto/16 :goto_8

    :cond_19
    const/16 v10, 0x3f6

    goto/16 :goto_8

    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v18

    move/from16 v1, v20

    if-le v0, v1, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, 0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_1b

    const/16 v10, 0x3f8

    goto/16 :goto_8

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    add-int/lit8 v20, v20, -0x8

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_1c

    const/16 v10, 0x3f9

    goto/16 :goto_8

    :cond_1c
    const/16 v10, 0x3f6

    goto/16 :goto_8

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-lt v0, v1, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_13

    :cond_1e
    const/16 v10, 0x3f7

    goto/16 :goto_8

    :pswitch_0
    const/16 v10, 0x4e28

    goto/16 :goto_9

    :pswitch_1
    const/16 v10, 0x4e29

    goto/16 :goto_9

    :pswitch_2
    const/16 v10, 0x4e26

    goto/16 :goto_9

    :pswitch_3
    const/16 v10, 0x4e27

    goto/16 :goto_9

    :cond_1f
    const/4 v14, 0x0

    goto/16 :goto_a

    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v20, v0

    new-instance v22, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;

    move-object/from16 v0, v22

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/android/server/wm/-$Lambda$VfkKftoECGhnUF1ihmlBQ7jNYQU;-><init>(II)V

    const/16 v23, 0x1

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/DisplayContent;->forAllWindows(Lcom/android/internal/util/ToBooleanFunction;Z)Z

    move-result v20

    if-nez v20, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mMultiWindowPolicy:Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/samsung/android/multiwindow/MultiWindowManagerPolicy;->isQuickPanelExpanded()Z

    move-result v20

    if-eqz v20, :cond_16

    goto/16 :goto_b

    :cond_21
    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v12

    monitor-enter p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/graphics/Region;->setEmpty()V

    if-eqz v12, :cond_22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    sget-object v23, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->op(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTmpExcludeRegion:Landroid/graphics/Region;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result v20

    if-eqz v20, :cond_22

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    :cond_22
    :try_start_9
    monitor-exit p0

    invoke-static {v10}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector$Utils;->convertDesktopMouseIcon(I)I

    move-result v10

    :cond_23
    move-object/from16 v0, p0

    iput v10, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    move-object/from16 v22, v0

    const/16 v23, 0x37

    move-object/from16 v0, v20

    move/from16 v1, v23

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/wm/WindowManagerService$H;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_24
    :goto_c
    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_3

    :catchall_2
    move-exception v20

    :try_start_a
    monitor-exit p0

    throw v20
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :catchall_3
    move-exception v20

    monitor-exit v21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v20

    :cond_25
    :try_start_b
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mPointerIconType:I

    move/from16 v22, v0

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_c

    :sswitch_2
    monitor-enter p0

    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/wm/TaskTapPointerEventListener;->mTapOutsideTaskMessageSent:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/wm/TaskTapPointerEventListener;->mService:Lcom/android/server/wm/WindowManagerService;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/server/wm/MultiWindowManagerInternal;->mH:Lcom/android/server/wm/MultiWindowManagerInternal$H;

    const/16 v20, 0x12f

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->removeMessages(I)V

    const/16 v20, 0x12e

    move/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    goto/16 :goto_6

    :catchall_4
    move-exception v20

    monitor-exit p0

    throw v20

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x3f6
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskTapPointerEventListener;->setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V

    return-void
.end method

.method setTouchExcludeRegion(Landroid/graphics/Region;Landroid/graphics/Region;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludeRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p1}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    invoke-virtual {v0, p2}, Landroid/graphics/Region;->set(Landroid/graphics/Region;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/TaskTapPointerEventListener;->mTouchExcludePointerRegion:Landroid/graphics/Region;

    invoke-virtual {v0}, Landroid/graphics/Region;->setEmpty()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
