.class final Lcom/android/server/am/MultiWindowManagerService$H;
.super Landroid/os/Handler;
.source "MultiWindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MultiWindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "H"
.end annotation


# static fields
.field public static final NOTIFY_ACTIVITY_STACK_ATTACHED:I = 0x1

.field public static final NOTIFY_ACTIVITY_STACK_DETACHED:I = 0x2

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_ONE_APP_FAIL_TOAST:I = 0xd1

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_OTHER_WORKSPACE_FAIL_TOAST:I = 0xd4

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_SECURE_FOLDER_FAIL_TOAST:I = 0xd3

.field public static final NOTIFY_ADD_APPPAIR_SHORTCUT_TWO_APP_FAIL_TOAST:I = 0xd2

.field public static final NOTIFY_APPLY_FREEFORM_MINIMIZE_POLICY:I = 0x68

.field public static final NOTIFY_AUTO_RESIZE_STATE_CHANGED:I = 0xca

.field public static final NOTIFY_DOCKED_STACK_MINIMIZED_CHANGED:I = 0xcd

.field public static final NOTIFY_DOCKED_TASK_TO_BACK_TRANSITION_FINISHED:I = 0xd0

.field public static final NOTIFY_FOCUS_STACK_CHANGED:I = 0xc9

.field public static final NOTIFY_FREEFORM_MINIMIZE_STATE_CHANGED:I = 0x65

.field public static final NOTIFY_FREEFORM_WINDOW_ANIMATION_END:I = 0x66

.field public static final NOTIFY_MULTIWINDOW_ENABLE_CHANGED:I = 0xcb

.field public static final NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM:I = 0x69

.field public static final NOTIFY_SCREEN_FREEZE_ANIMATION_FINISHED:I = 0xcc

.field public static final NOTIFY_SNAP_WINDOW_DISMISSED:I = 0xce

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE:I = 0xcf

.field public static final SCHEDULE_INITIALIZE_PAIRACTIVITY_MODE_DURATON:I = 0x7d0

.field public static final SCHEDULE_MINIMIZE_ALL:I = 0x67


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MultiWindowManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 54

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_0
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v9, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move-object/from16 v0, v20

    iget v10, v0, Lcom/android/internal/os/SomeArgs;->argi3:I

    move-object/from16 v0, v20

    iget-object v6, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v8, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v34, 0x0

    :goto_1
    move/from16 v0, v34

    move/from16 v1, v18

    if-ge v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface/range {v5 .. v10}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onStateChanged(Landroid/graphics/Rect;ILandroid/content/ComponentName;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    add-int/lit8 v34, v34, 0x1

    goto :goto_1

    :catch_0
    move-exception v29

    :try_start_2
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "onStateChanged, RemoteException occured"

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_1
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    monitor-exit v13

    goto :goto_0

    :sswitch_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    move/from16 v52, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v47, v0

    check-cast v47, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v18

    const/16 v34, 0x0

    :goto_4
    move/from16 v0, v34

    move/from16 v1, v18

    if-ge v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/multiwindow/IMultiWindowCallback;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    move/from16 v0, v52

    move-object/from16 v1, v47

    invoke-interface {v5, v7, v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowCallback;->onAnimationEnd(IILandroid/graphics/Rect;)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_5
    add-int/lit8 v34, v34, 0x1

    goto :goto_4

    :catch_1
    move-exception v29

    :try_start_6
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "onAnimationEnd, RemoteException occured"

    invoke-static {v12, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_2
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get2(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_3

    :sswitch_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked()Z

    goto/16 :goto_0

    :sswitch_3
    move-object/from16 v0, p1

    iget v7, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12, v7}, Lcom/android/server/am/FreeformStackController;->applyFreeformMinimizePolicyLocked(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_2
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_4
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NOTIFY_ACTIVITY_STACK_ATTACHED, stackId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", displayId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v12, 0x2

    move/from16 v0, v45

    if-ne v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v12

    const-string/jumbo v13, "freeform attached"

    invoke-virtual {v12, v13}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_5
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v23, v0

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_4

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "NOTIFY_ACTIVITY_STACK_DETACHED, stackId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v45

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", displayId="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, v23

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v12, 0x2

    move/from16 v0, v45

    if-ne v0, v12, :cond_5

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/FreeformStackController;->getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;

    move-result-object v12

    const-string/jumbo v13, "freeform detached"

    invoke-virtual {v12, v13}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x3

    move/from16 v0, v45

    if-ne v0, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get5(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ScreenFreezeAnimationManager;

    move-result-object v12

    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Lcom/android/server/am/ScreenFreezeAnimationManager;->setSkipScreenFreezeAnimation(Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_3
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v12

    if-eqz v12, :cond_7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v14, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v14
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    move/from16 v0, v38

    invoke-virtual {v12, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v46

    check-cast v46, Lcom/android/server/am/ProcessRecord;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    monitor-exit v14

    invoke-static {}, Lcom/android/server/am/MultiWindowManagerService;->-get0()Z

    move-result v12

    if-eqz v12, :cond_6

    const-string/jumbo v12, "MultiWindowManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "NOTIFY_PROCESS_KILL_BY_CLOSING_FREEFORM, pid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, v38

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ",targetProc="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, v46

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    if-eqz v46, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get3(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/FreeformStackController;

    move-result-object v12

    const/4 v14, 0x1

    move-object/from16 v0, v46

    invoke-virtual {v12, v0, v14}, Lcom/android/server/am/FreeformStackController;->cleanUpWaitingProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_7
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_4
    move-exception v12

    :try_start_d
    monitor-exit v14

    throw v12
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    :catchall_5
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_e
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v31, v0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_6
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :try_start_f
    move-object/from16 v0, v35

    move/from16 v1, v31

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onFocusStackChanged(I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_f} :catch_2
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    :goto_7
    add-int/lit8 v34, v34, 0x1

    goto :goto_6

    :catch_2
    move-exception v29

    :try_start_10
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onFocusStackChanged event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_7

    :catchall_6
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_8
    :try_start_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    goto/16 :goto_3

    :sswitch_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_12
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Lcom/android/internal/os/SomeArgs;

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    move/from16 v21, v0

    move-object/from16 v0, v20

    iget v12, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_9

    const/16 v40, 0x1

    :goto_8
    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    move-object/from16 v28, v0

    check-cast v28, Landroid/graphics/Rect;

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    move-object/from16 v33, v0

    check-cast v33, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_9
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_a

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    :try_start_13
    move-object/from16 v0, v35

    move/from16 v1, v21

    move-object/from16 v2, v28

    move-object/from16 v3, v33

    move/from16 v4, v40

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onAutoResizeStateChanged(ILandroid/graphics/Rect;Landroid/graphics/Rect;Z)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_13} :catch_3
    .catchall {:try_start_13 .. :try_end_13} :catchall_7

    :goto_a
    add-int/lit8 v34, v34, 0x1

    goto :goto_9

    :cond_9
    const/16 v40, 0x0

    goto :goto_8

    :catch_3
    move-exception v29

    :try_start_14
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering Auto-Resize state change event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    goto :goto_a

    :catchall_7
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_a
    :try_start_15
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_7

    goto/16 :goto_3

    :sswitch_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_16
    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v14, 0x1

    if-ne v12, v14, :cond_b

    const/16 v37, 0x1

    :goto_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_c
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    :try_start_17
    move-object/from16 v0, v35

    move/from16 v1, v37

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onMultiWindowEnableChanged(Z)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_17 .. :try_end_17} :catch_4
    .catchall {:try_start_17 .. :try_end_17} :catchall_8

    :goto_d
    add-int/lit8 v34, v34, 0x1

    goto :goto_c

    :cond_b
    const/16 v37, 0x0

    goto :goto_b

    :catch_4
    move-exception v29

    :try_start_18
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onMultiWindowEnableChanged event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto :goto_d

    :catchall_8
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_c
    :try_start_19
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_8

    goto/16 :goto_3

    :sswitch_a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_1a
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_e
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_9

    :try_start_1b
    invoke-interface/range {v35 .. v35}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onScreenFreezeAnimationFinished()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_9

    :goto_f
    add-int/lit8 v34, v34, 0x1

    goto :goto_e

    :catch_5
    move-exception v29

    :try_start_1c
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onScreenFreezeAnimationFinished event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    goto :goto_f

    :catchall_9
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_d
    :try_start_1d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_9

    goto/16 :goto_3

    :sswitch_b
    const/16 v42, 0x0

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->arg1:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_10

    const/16 v36, 0x1

    :goto_10
    const/16 v25, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_1e
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v26

    if-eqz v26, :cond_f

    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v50

    if-eqz v50, :cond_f

    invoke-virtual/range {v50 .. v50}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v51

    if-eqz v51, :cond_f

    invoke-virtual/range {v51 .. v51}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v41

    if-eqz v41, :cond_e

    move-object/from16 v0, v41

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v42, v0
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_a

    :cond_e
    const/16 v25, 0x1

    :cond_f
    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_1f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_11
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_b

    :try_start_20
    move-object/from16 v0, v35

    move/from16 v1, v36

    move/from16 v2, v25

    move-object/from16 v3, v42

    invoke-interface {v0, v1, v2, v3}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onDockedStackMinimizedChanged(ZZLandroid/content/pm/ActivityInfo;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_20} :catch_6
    .catchall {:try_start_20 .. :try_end_20} :catchall_b

    :goto_12
    add-int/lit8 v34, v34, 0x1

    goto :goto_11

    :cond_10
    const/16 v36, 0x0

    goto :goto_10

    :catchall_a
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :catch_6
    move-exception v29

    :try_start_21
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onDockedStackMinimizedChanged event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_b

    goto :goto_12

    :catchall_b
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_11
    :try_start_22
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_b

    goto/16 :goto_3

    :sswitch_c
    sget-boolean v12, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->SNAP_WINDOW_SUPPORT:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v13

    monitor-enter v13

    :try_start_23
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v44

    const/16 v34, 0x0

    :goto_13
    move/from16 v0, v34

    move/from16 v1, v44

    if-ge v0, v1, :cond_12

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v35

    check-cast v35, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_c

    :try_start_24
    move-object/from16 v0, v35

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Lcom/samsung/android/multiwindow/IMultiWindowEventListener;->onSnapWindowDismissed(Ljava/lang/String;)V
    :try_end_24
    .catch Landroid/os/RemoteException; {:try_start_24 .. :try_end_24} :catch_7
    .catchall {:try_start_24 .. :try_end_24} :catchall_c

    :goto_14
    add-int/lit8 v34, v34, 0x1

    goto :goto_13

    :catch_7
    move-exception v29

    :try_start_25
    const-string/jumbo v12, "MultiWindowManager"

    const-string/jumbo v14, "Error delivering onSnapWindowDismissed event."

    move-object/from16 v0, v29

    invoke-static {v12, v14, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_c

    goto :goto_14

    :catchall_c
    move-exception v12

    monitor-exit v13

    throw v12

    :cond_12
    :try_start_26
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get4(Lcom/android/server/am/MultiWindowManagerService;)Landroid/os/RemoteCallbackList;

    move-result-object v12

    invoke-virtual {v12}, Landroid/os/RemoteCallbackList;->finishBroadcast()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    goto/16 :goto_3

    :sswitch_d
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    monitor-enter v13

    :try_start_27
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v14, 0x3

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, v27

    invoke-static {v12, v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v32

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    const/4 v14, 0x0

    move-object/from16 v0, v32

    invoke-static {v12, v0, v14}, Lcom/android/server/am/MultiWindowManagerService;->-wrap0(Lcom/android/server/am/MultiWindowManagerService;Lcom/android/server/am/ActivityStack;Z)V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_d

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_d
    move-exception v12

    monitor-exit v13

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_e
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v53

    monitor-enter v53

    :try_start_28
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get6(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityStackSupervisor;

    move-result-object v12

    const/4 v13, 0x3

    invoke-virtual {v12, v13}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    move-result-object v24

    if-nez v24, :cond_13

    monitor-exit v53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_13
    :try_start_29
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v48

    const/4 v12, 0x0

    move-object/from16 v0, v48

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/TaskRecord;
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_e

    if-nez v11, :cond_14

    monitor-exit v53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_14
    :try_start_2a
    invoke-virtual {v11}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    move-result-object v19

    if-nez v19, :cond_15

    monitor-exit v53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_15
    :try_start_2b
    const-string/jumbo v17, "dockedTaskToBack"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x2

    const/4 v15, 0x0

    const/16 v16, 0x0

    invoke-virtual/range {v11 .. v17}, Lcom/android/server/am/TaskRecord;->reparent(IZIZZLjava/lang/String;)Z
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_e

    monitor-exit v53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    :catchall_e
    move-exception v12

    monitor-exit v53

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v12

    :sswitch_f
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const v12, 0x10405b9

    invoke-virtual {v14, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_10
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v22, v0

    check-cast v22, Landroid/os/Bundle;

    const-string/jumbo v12, "dockedAppLabel"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v12, "fullAppLabel"

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    aput-object v30, v14, v15

    const/4 v15, 0x1

    aput-object v43, v14, v15

    const v15, 0x10405ba

    invoke-virtual {v13, v15, v14}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_11
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v13}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v13

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x10405bc

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :sswitch_12
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v13, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/am/MultiWindowManagerService$H;->this$0:Lcom/android/server/am/MultiWindowManagerService;

    invoke-static {v12}, Lcom/android/server/am/MultiWindowManagerService;->-get1(Lcom/android/server/am/MultiWindowManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v12

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const/4 v12, 0x1

    new-array v15, v12, [Ljava/lang/Object;

    move-object/from16 v0, p1

    iget-object v12, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    const v12, 0x10405bb

    invoke-virtual {v14, v12, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static {v13, v12, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v49

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual/range {v49 .. v49}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_4
        0x2 -> :sswitch_5
        0x65 -> :sswitch_0
        0x66 -> :sswitch_1
        0x67 -> :sswitch_2
        0x68 -> :sswitch_3
        0x69 -> :sswitch_6
        0xc9 -> :sswitch_7
        0xca -> :sswitch_8
        0xcb -> :sswitch_9
        0xcc -> :sswitch_a
        0xcd -> :sswitch_b
        0xce -> :sswitch_c
        0xcf -> :sswitch_d
        0xd0 -> :sswitch_e
        0xd1 -> :sswitch_f
        0xd2 -> :sswitch_10
        0xd3 -> :sswitch_11
        0xd4 -> :sswitch_12
    .end sparse-switch
.end method
