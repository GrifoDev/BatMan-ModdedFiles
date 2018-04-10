.class public Lcom/android/server/am/FreeformStackController;
.super Ljava/lang/Object;
.source "FreeformStackController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/FreeformStackController$1;,
        Lcom/android/server/am/FreeformStackController$2;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field public static final DEBUG_DEX_COMPAT:Z = false

.field private static final TAG:Ljava/lang/String; = "FreeformStackController"


# instance fields
.field private final mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private final mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

.field private mCoolDownFreeformRequested:Z

.field private mDecorCaptionWindowHeight:I

.field private final mDexCompatTaskDefaultSize:Landroid/graphics/Point;

.field private mDexLabsEnabled:Z

.field private mDexLabsPolicyChanged:Z

.field private final mDisplayInfo:Landroid/view/DisplayInfo;

.field private final mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

.field mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

.field private mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

.field private final mH:Landroid/os/Handler;

.field private mIsDesktopMode:Z

.field mIsMinimizingAllTask:Z

.field private mMaxFreeformDefaultCnt:I

.field private mMaxFreeformOverWrittenCnt:I

.field private final mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

.field private mMinimizeMaxCount:I

.field private final mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

.field private mMinimizedFreeformForToggleList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/TaskRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

.field final mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

.field private final mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field final mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

.field private final mTmpPoint:Landroid/graphics/Point;

.field private final mTmpRect:Landroid/graphics/Rect;

.field private final mTmpRect2:Landroid/graphics/Rect;

.field private final mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/FreeformStackController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/FreeformStackController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/am/FreeformStackController;)Lcom/android/server/am/ActivityStackSupervisor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/FreeformStackController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/FreeformStackController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/FreeformStackController;->setCoolDownFreeformRequestedLocked(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/am/MultiWindowManagerService;)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    iput v2, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    iput v2, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z

    new-instance v0, Lcom/android/server/am/FreeformStackController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformStackController$1;-><init>(Lcom/android/server/am/FreeformStackController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/FreeformStackController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/FreeformStackController$2;-><init>(Lcom/android/server/am/FreeformStackController;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iput-object p3, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    iget-object v0, v0, Lcom/android/server/am/MultiWindowManagerService;->mH:Lcom/android/server/am/MultiWindowManagerService$H;

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v0, Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-direct {v0, p1}, Lcom/android/server/am/FreeformMinimizeServiceBinder;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getFreeformStackWindowController()Lcom/android/server/wm/FreeformStackWindowController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    iget-object v0, p2, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->getScreenFreezeAnimationController()Lcom/android/server/wm/ScreenFreezeAnimationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/MultiWindowManagerService;->getMultiWindowEnableController()Lcom/android/server/am/MultiWindowEnableController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/FreeformStackController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    return-void
.end method

.method private ensureAllTasksRunningInDexLocked(Z)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    :goto_0
    if-ltz v2, :cond_2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v5, v6, -0x1

    :goto_1
    if-ltz v5, :cond_1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iput-boolean p1, v4, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    iget-boolean v6, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_0

    xor-int/lit8 v6, p1, 0x1

    if-eqz v6, :cond_0

    iput-boolean v9, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    iget v8, v4, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v6, v7, v8}, Lcom/android/server/wm/TaskWindowContainerController;->setDexCompatMode(ZI)V

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;
    .locals 13

    const/4 v9, 0x0

    const/high16 v12, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/4 v10, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v2, v8, Landroid/graphics/Point;->x:I

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v8, Landroid/graphics/Point;->y:I

    invoke-static {p2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->convertToConfigurationOrientation(I)I

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getOrientationFromTaskBounds()I

    move-result v5

    :cond_0
    iget v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    packed-switch v8, :pswitch_data_0

    const-string/jumbo v8, "FreeformStackController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "getSupportScreenBounds: Illegal UiMode="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/TaskRecord;->mDexCompatUiMode:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ", tid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :pswitch_0
    if-ne v5, v11, :cond_2

    invoke-virtual {v0, v10, v10, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-boolean v8, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v8, :cond_1

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    add-int/2addr v8, v9

    iput v8, v0, Landroid/graphics/Rect;->bottom:I

    :cond_1
    return-object v0

    :cond_2
    invoke-virtual {v0, v10, v10, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_1
    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v8, v8, Landroid/graphics/Point;->x:I

    iget-object v9, p1, Lcom/android/server/am/TaskRecord;->mDexCompatCustomSize:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ne v5, v11, :cond_3

    invoke-virtual {v0, v10, v10, v6, v4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v10, v10, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :pswitch_2
    if-ne v5, v11, :cond_4

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v8

    iget v8, v8, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    const v9, 0x3f666666    # 0.9f

    mul-float/2addr v8, v9

    add-float/2addr v8, v12

    float-to-int v3, v8

    mul-int v8, v3, v2

    div-int/2addr v8, v1

    int-to-float v8, v8

    add-float/2addr v8, v12

    float-to-int v7, v8

    invoke-virtual {v0, v10, v10, v7, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    return-object v9

    :cond_5
    return-object v9

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;
    .locals 8

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v7

    if-eqz v7, :cond_4

    if-eqz p2, :cond_4

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, p1}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v5, v7, -0x1

    :goto_0
    if-ltz v5, :cond_4

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    if-eqz p3, :cond_1

    iget-boolean v7, v4, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    :cond_0
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_1
    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v0, v7, -0x1

    :goto_1
    if-ltz v0, :cond_0

    iget-object v7, v4, Lcom/android/server/am/TaskRecord;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityRecord;

    iget-object v7, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-boolean v7, v2, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    iget v7, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v7, :cond_2

    return-object v2

    :cond_2
    move-object v1, v2

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-object v1
.end method

.method private initGameManagerService()V
    .locals 3

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v2, :cond_0

    const-string/jumbo v2, "gamemanager"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/samsung/android/game/IGameManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/game/IGameManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private isDesktopModeLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-com_android_server_am_FreeformStackController_19369(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private minimizeMaxCountingFreeformLocked()V
    .locals 13

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    const/4 v0, 0x0

    iget v9, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    if-lez v9, :cond_1

    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v9, v3, :cond_4

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v2, v9, -0x1

    :goto_1
    if-ltz v2, :cond_3

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/TaskRecord;

    iget v9, v4, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v9, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v9

    if-nez v9, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    if-le v0, v3, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v12, v12}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    invoke-virtual {v8, v12}, Lcom/android/server/am/ActivityRecord;->setVisibility(Z)V

    iget v9, v4, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v1, v9, v11}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    goto :goto_2

    :cond_3
    if-le v0, v3, :cond_4

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v10, 0x103012b

    invoke-direct {v7, v9, v10}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v11, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v12

    const v11, 0x1040386

    invoke-virtual {v9, v11, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$2;

    invoke-direct {v10, v7, v6}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    return-void
.end method

.method private setCoolDownFreeformRequestedLocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    return-void
.end method

.method private setLatestDexBounds()V
    .locals 6

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    iget-object v4, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_0

    new-instance v4, Landroid/graphics/Rect;

    iget-object v5, v1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    :goto_1
    iput-object v4, v1, Lcom/android/server/am/TaskRecord;->mLastDeXBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private updateDisplayInfoLocked()V
    .locals 4

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v2, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    :cond_0
    return-void
.end method

.method private updateFreeformMaxCount()V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x10e0109

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    :goto_0
    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformDefaultCnt:I

    return-void

    :cond_0
    const v1, 0x10e010a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    goto :goto_0
.end method


# virtual methods
.method public addGrantPermissionComponent(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/FreeformStackWindowController;->addGrantPermissionComponent(Ljava/lang/String;)V

    return-void
.end method

.method adjustLaunchingTaskPositioner()V
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->isAttached()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->isAttachedLocked()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/server/am/ActivityStack;->mActivityContainer:Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;

    iget-object v3, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityContainer;->mActivityDisplay:Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;

    iget-object v0, v3, Lcom/android/server/am/ActivityStackSupervisor$ActivityDisplay;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2, v0}, Lcom/android/server/am/LaunchingTaskPositioner;->setDisplay(Landroid/view/Display;)V

    invoke-virtual {v2, v5}, Lcom/android/server/am/LaunchingTaskPositioner;->configure(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method applyDexCompatConfigurationLocked(Lcom/android/server/am/ActivityRecord;Landroid/content/res/Configuration;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;)V
    .locals 12

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v9

    if-eqz v9, :cond_2

    if-eqz p3, :cond_2

    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v9, :cond_2

    const/4 v3, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v8

    :goto_1
    if-eqz v8, :cond_1

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->dexCompatEnabled:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    iget v9, v9, Landroid/content/res/Configuration;->orientation:I

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v3, 0x2

    :cond_1
    if-eqz v1, :cond_5

    invoke-virtual {v8}, Lcom/android/server/am/TaskRecord;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    invoke-virtual {p2, v9}, Landroid/content/res/Configuration;->updateFromDexCompatTaskConfig(Landroid/content/res/Configuration;)I

    :goto_2
    const/4 v9, 0x2

    iput v9, p2, Landroid/content/res/Configuration;->dexCompatEnabled:I

    :cond_2
    return-void

    :cond_3
    iget-object v9, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v10, 0x2

    const/4 v11, 0x1

    invoke-direct {p0, v10, v9, v11}, Lcom/android/server/am/FreeformStackController;->getTopActivityByPackageLocked(ILjava/lang/String;Z)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    goto :goto_0

    :cond_4
    const/4 v8, 0x0

    goto :goto_1

    :cond_5
    const/4 v9, 0x1

    if-ne v3, v9, :cond_6

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->x:I

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->y:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    :goto_3
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->x:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v5, v9

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    iget v10, p2, Landroid/content/res/Configuration;->densityDpi:I

    mul-int/2addr v9, v10

    int-to-float v9, v9

    const v10, 0x3bcccccd    # 0.00625f

    mul-float/2addr v9, v10

    float-to-int v4, v9

    iget v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v9}, Landroid/content/res/Configuration;->resetScreenLayout(I)I

    move-result v7

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v5, p2, Landroid/content/res/Configuration;->screenWidthDp:I

    iput v4, p2, Landroid/content/res/Configuration;->screenHeightDp:I

    iput v6, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iput v3, p2, Landroid/content/res/Configuration;->orientation:I

    invoke-static {v7, v2, v6}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v9

    iput v9, p2, Landroid/content/res/Configuration;->screenLayout:I

    goto :goto_2

    :cond_6
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mTmpPoint:Landroid/graphics/Point;

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v10, v10, Landroid/graphics/Point;->y:I

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v11, v11, Landroid/graphics/Point;->x:I

    invoke-virtual {v9, v10, v11}, Landroid/graphics/Point;->set(II)V

    goto :goto_3
.end method

.method applyDexCompatToAppWindow(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowManagerService;->setWindowCompatMode(Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method applyFreeformMinimizePolicyLocked(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(I)Z

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->minimizeMaxCountingFreeformLocked()V

    goto :goto_0
.end method

.method canMaximizeLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getRootActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v5, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_1

    iget-object v1, v4, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_0
    if-eqz v1, :cond_3

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    const/4 v0, -0x1

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.samsung.android.sdk.multiwindow.maxWidth"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v5, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v6, "com.samsung.android.sdk.multiwindow.maxHeight"

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-gt v3, v7, :cond_0

    if-le v2, v7, :cond_3

    :cond_0
    return v8

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget v5, v1, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-nez v5, :cond_3

    return v8

    :cond_3
    const/4 v5, 0x1

    return v5
.end method

.method checkLaunchPolicyLocked(Landroid/content/pm/ActivityInfo;)Z
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v9

    iget-object v10, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v9, v10, p1}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    and-int/lit8 v9, v3, 0x20

    if-eqz v9, :cond_2

    const/4 v6, 0x1

    :goto_0
    and-int/lit8 v9, v3, 0x40

    if-eqz v9, :cond_3

    const/4 v5, 0x1

    :goto_1
    and-int/lit16 v9, v3, 0x80

    if-eqz v9, :cond_4

    const/4 v4, 0x1

    :goto_2
    const v9, 0x8000

    and-int/2addr v9, v3

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    :goto_3
    if-nez v6, :cond_0

    if-nez v5, :cond_0

    if-eqz v4, :cond_8

    :cond_0
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {p1, v9}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_4
    const v8, 0x10405bf

    if-eqz v5, :cond_7

    const v8, 0x10405c1

    :cond_1
    :goto_5
    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v9, v8, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v12

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    const/4 v5, 0x0

    goto :goto_1

    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_5
    const/4 v1, 0x0

    goto :goto_3

    :cond_6
    const-string/jumbo v2, ""

    goto :goto_4

    :cond_7
    if-eqz v4, :cond_1

    const v8, 0x10405c0

    goto :goto_5

    :cond_8
    if-eqz v1, :cond_9

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v9, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x10405c2

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v9, p0, Lcom/android/server/am/FreeformStackController;->mH:Landroid/os/Handler;

    new-instance v10, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$1;

    invoke-direct {v10, p0, v7}, Lcom/android/server/am/-$Lambda$9C8UtzmPcG9cNLrd5f-LWGOcA4M$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v11

    :cond_9
    return v11
.end method

.method cleanUpWaitingProcessIfNeededLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz p1, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    if-eqz v4, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_0

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    monitor-enter v5

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v0, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-ne p1, v1, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_3
    monitor-exit v5

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    iput-object v7, v1, Lcom/android/server/am/ProcessRecord;->waitingKillByClosingFreeform:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ProcessRecord;->setSchedGroup:I

    if-gtz v4, :cond_4

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->curReceivers:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "closing-freeformTask"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "closing-freeformTask-byWaiting"

    iput-object v4, v1, Lcom/android/server/am/ProcessRecord;->waitingToKill:Ljava/lang/String;

    goto :goto_2

    :cond_5
    return-void
.end method

.method dumpLocked(Ljava/io/PrintWriter;Z)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mMaxFreeformOverWrittenCnt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mCoolDownFreeformRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->dumpLocked(Ljava/io/PrintWriter;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    mIsDesktopMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " semDesktopModeEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "    CompatDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " CaptionHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method forceClearMinimizeIfNeededLocked(Lcom/android/server/am/TaskRecord;)V
    .locals 9

    const/4 v8, 0x2

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget v6, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    if-ge v5, v6, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    if-ne v3, p1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget v5, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v6, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v5, v6, :cond_1

    iget v5, v3, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1

    add-int/lit8 v2, v2, 0x1

    iget v5, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    if-le v2, v5, :cond_1

    const-string/jumbo v5, "FreeformStackController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "forceClearMinimizeIfNeededLocked tr="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v8}, Lcom/android/server/am/TaskRecord;->setHiddenState(I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method getDexBoundsFromRecentTaskLocked(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 10

    const/4 v9, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isFreeform()Z

    move-result v6

    if-eqz v6, :cond_5

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsLaunchingDexFullscreenFreeform:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "FreeformStackController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "getBoundsInDeXFromRecentTasks: return null, reason=launchFullscreen tid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v9

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6}, Lcom/android/server/am/RecentTasks;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_5

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-virtual {v6, v0}, Lcom/android/server/am/RecentTasks;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->getBaseIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget v6, v3, Lcom/android/server/am/TaskRecord;->userId:I

    iget v7, p1, Lcom/android/server/am/TaskRecord;->userId:I

    if-ne v6, v7, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v6

    if-nez v6, :cond_1

    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mRunningInDex:Z

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/am/TaskRecord;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    if-nez v6, :cond_1

    iget-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-eqz v6, :cond_3

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->left:I

    iget-object v7, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    invoke-virtual {v4, v6, v7}, Landroid/graphics/Rect;->offsetTo(II)V

    invoke-static {v4}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    :cond_3
    iget-boolean v6, v3, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iput-boolean v6, p1, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v6, :cond_4

    new-instance v4, Landroid/graphics/Rect;

    iget-object v6, v3, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v4, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-static {v4}, Lcom/android/server/am/TaskRecord;->validateBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v6

    return-object v6

    :cond_4
    return-object v9

    :cond_5
    return-object v9
.end method

.method getIndexOfFreeformStackLocked(Ljava/util/ArrayList;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;)I"
        }
    .end annotation

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    :goto_0
    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isFreeformStack()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    :cond_0
    return v1

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method getMinimizeServiceBinder()Lcom/android/server/am/FreeformMinimizeServiceBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    return-object v0
.end method

.method getSupportScreenBounds(Lcom/android/server/am/TaskRecord;)Landroid/graphics/Rect;
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    const/4 v0, -0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityRecord;->getWindowContainerController()Lcom/android/server/wm/AppWindowContainerController;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowContainerController;->getOrientation()I

    move-result v0

    :cond_0
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/FreeformStackController;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v3

    return-object v3

    :cond_1
    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget-object v3, v2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v3, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    goto :goto_0

    :cond_2
    return-object v4
.end method

.method isAllFreeformTaskHiddenLocked(Lcom/android/server/am/TaskRecord;)Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/TaskRecord;

    if-eqz p1, :cond_1

    if-eq v2, p1, :cond_0

    :cond_1
    iget v4, v2, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v4, :cond_0

    return v6

    :cond_2
    const/4 v4, 0x1

    return v4

    :cond_3
    return v6
.end method

.method public isAppToBlockFloatingMultiWindows(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isDexCompatConfigurationTargetLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/ActivityRecord;)Z
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz p1, :cond_5

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService$Lifecycle;->getService()Lcom/android/server/desktopmode/DesktopModeService;

    move-result-object v0

    if-eqz v0, :cond_5

    const/4 v1, 0x0

    if-nez p2, :cond_2

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    :cond_0
    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2

    :cond_2
    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    if-nez v3, :cond_3

    invoke-virtual {v0, p1, v4}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v3

    iput v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    :cond_3
    iget v1, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_0

    iget v3, p2, Lcom/android/server/am/ActivityRecord;->processAppLaunchPolicy:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    invoke-virtual {p2}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0, p1, v3}, Lcom/android/server/desktopmode/DesktopModeService;->getLaunchPolicyForPackage(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ActivityInfo;)I

    move-result v1

    goto :goto_0

    :cond_5
    return v2
.end method

.method isDexLabsPolicyChanged()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method isGamePackage(Ljava/lang/String;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->initGameManagerService()V

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mGameManagerService:Lcom/samsung/android/game/IGameManagerService;

    invoke-interface {v3, p1}, Lcom/samsung/android/game/IGameManagerService;->identifyGamePackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_1
    :goto_0
    if-ne v1, v2, :cond_2

    :goto_1
    return v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method isVisibleFullScreenGameLocked()Z
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    sget-boolean v7, Lcom/samsung/android/framework/feature/MultiWindowFeatures;->FREEFORM_ON_GAMEMODE:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStackSupervisor;->getStacks()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v3, v7, -0x1

    :goto_0
    if-ltz v3, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityStack;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    if-eq v7, v5, :cond_0

    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v7

    const/4 v8, 0x3

    if-ne v7, v8, :cond_2

    :cond_0
    invoke-virtual {v2}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v7, v1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/server/am/FreeformStackController;->isGamePackage(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v7, v7, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v7}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v0

    const/4 v7, 0x5

    if-eq v0, v7, :cond_1

    if-eqz v0, :cond_1

    :goto_1
    return v5

    :cond_1
    move v5, v6

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    return v6
.end method

.method synthetic lambda$-com_android_server_am_FreeformStackController_36292(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method synthetic lambda$-com_android_server_am_FreeformStackController_36730(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method loadResources()V
    .locals 4

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeMaxCount:I

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateFreeformMaxCount()V

    const v1, 0x1050141

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/am/FreeformStackController;->mDecorCaptionWindowHeight:I

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDexCompatTaskDefaultSize:Landroid/graphics/Point;

    const v2, 0x1050079

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v3, 0x1050078

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Point;->set(II)V

    return-void
.end method

.method minimizeAllTasksInFreeformLocked()Z
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(I)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(I)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/am/FreeformStackController;->minimizeAllTasksInFreeformLocked(IZ)Z

    move-result v0

    return v0
.end method

.method minimizeAllTasksInFreeformLocked(IZ)Z
    .locals 16

    const/4 v2, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    if-lez p1, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    :cond_0
    const/4 v9, 0x0

    const-string/jumbo v13, "FreeformStackController"

    const-string/jumbo v14, "minimizeAllTasksInFreeform is calling"

    invoke-static {v13, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v5

    xor-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->topRunningActivityLocked()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_e

    move v7, v8

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v13

    xor-int/lit8 v1, v13, 0x1

    if-eqz v1, :cond_1

    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->deferSurfaceLayout()V

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->clear()V

    if-eqz v5, :cond_2

    invoke-static {v12}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    :cond_2
    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_c

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/TaskRecord;

    const/4 v6, 0x0

    if-eqz v5, :cond_5

    if-nez p2, :cond_4

    if-nez v2, :cond_5

    :cond_4
    iget v13, v10, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5
    if-eqz v2, :cond_6

    if-eq v10, v2, :cond_3

    :cond_6
    invoke-virtual {v10}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v13

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13, v10}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v13

    if-eqz v13, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v13}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v13

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_7
    throw v13

    :cond_8
    :try_start_1
    iget v13, v10, Lcom/android/server/am/TaskRecord;->mHiddenState:I

    if-nez v13, :cond_3

    const-string/jumbo v14, "FreeformStackController"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v8, :cond_b

    const-string/jumbo v13, "minimize, "

    :goto_1
    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    iget v13, v10, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v3, v13, v8}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v6

    or-int/2addr v9, v6

    if-eqz v7, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v14, "FFAC"

    const-string/jumbo v15, "Minimize"

    invoke-virtual {v13, v14, v15}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    :cond_a
    if-eqz v5, :cond_3

    xor-int/lit8 v13, v6, 0x1

    if-eqz v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_b
    const-string/jumbo v13, "moveback, "
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_c
    if-eqz v1, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/WindowManagerService;->continueSurfaceLayout()V

    :cond_d
    :goto_2
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/android/server/am/FreeformStackController;->mExcludeMinimizingTask:Lcom/android/server/am/TaskRecord;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/server/am/FreeformStackController;->mIsMinimizingAllTask:Z

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v13, "com.samsung.android.knox.container.LOCK_SECUREFOLDER"

    invoke-direct {v4, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v13, "userid"

    const/4 v14, -0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v13, "isHomeActivity"

    const/4 v14, 0x1

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string/jumbo v13, "componentName"

    const-string/jumbo v14, "minimizeAllTasksInFreeformLocked"

    invoke-virtual {v4, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    sget-object v14, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v13, v4, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v9

    :cond_e
    if-eqz v3, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/FreeformStackController;->toggleFreeformState()V

    goto :goto_2
.end method

.method moveFreeformStackToFront(Ljava/util/ArrayList;I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/ActivityStack;",
            ">;I)I"
        }
    .end annotation

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityStack;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    if-eq v0, v3, :cond_1

    move p2, v2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v4, v3, Lcom/android/server/am/ActivityStack;->mStackId:I

    invoke-static {v4}, Landroid/app/ActivityManager$StackId;->isAlwaysOnTop(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 p2, v2, -0x1

    :cond_0
    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/am/ActivityStack;->topTask()Lcom/android/server/am/TaskRecord;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/StackWindowController;->positionChildAtTop(Lcom/android/server/wm/TaskWindowContainerController;Z)V

    :cond_1
    return p2
.end method

.method moveTaskToBackLocked(IZ)Z
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityStackSupervisor;->anyTaskForIdLocked(I)Lcom/android/server/am/TaskRecord;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityStackSupervisor;->isLockedTask(Lcom/android/server/am/TaskRecord;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->showLockTaskToast()V

    return v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/ActivityStack;->moveTaskToBackLocked(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->isDesktopModeLocked()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    const-string/jumbo v2, "FFAC"

    const-string/jumbo v3, "Minimize"

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v2
.end method

.method moveTaskToFreeformStackLocked(Lcom/android/server/am/TaskRecord;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x1

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getWindowContainerController()Lcom/android/server/wm/TaskWindowContainerController;

    move-result-object v6

    invoke-virtual {v6, p2}, Lcom/android/server/wm/TaskWindowContainerController;->canMoveToFreeformStack(Landroid/graphics/Rect;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v4

    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iput-object v5, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :goto_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerPerformance;->getBooster()Lcom/android/server/am/ActivityManagerPerformance;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5, v8}, Lcom/android/server/am/ActivityManagerPerformance;->onActivityRelaunchLocked(Lcom/android/server/am/ActivityRecord;Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget v7, p1, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {v6, v7, v10, v8}, Lcom/android/server/am/ActivityManagerService;->moveTaskToStack(IIZ)V

    new-array v3, v10, [Ljava/lang/String;

    const-string/jumbo v6, "FFBY"

    aput-object v6, v3, v9

    const-string/jumbo v6, "FFEP"

    aput-object v6, v3, v8

    new-array v2, v10, [Ljava/lang/String;

    aput-object p3, v2, v9

    iget-object v6, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_1

    iget-object v5, p1, Lcom/android/server/am/TaskRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_1
    aput-object v5, v2, v8

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v3, v2}, Lcom/android/server/am/MultiWindowManagerService;->logMultiWindowBehavior([Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v5, v11}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_2

    if-ne v4, v8, :cond_5

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v5, v8, v9}, Lcom/android/server/am/MultiWindowManagerService;->moveDockedTasksToFullscreenStack(ZZ)V

    :cond_2
    :goto_1
    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v10}, Lcom/android/server/am/ActivityManagerService;->setFocusedStack(I)V

    :cond_3
    return-void

    :cond_4
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, p2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v6, p1, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v11, v9}, Lcom/android/server/am/ActivityManagerService;->moveTasksToFullscreenStack(IZ)V

    goto :goto_1
.end method

.method readGrantPermissionComponents()V
    .locals 15

    const/4 v14, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.content.pm.action.REQUEST_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/content/Intent;

    const-string/jumbo v10, "android.intent.action.MANAGE_PERMISSIONS"

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    invoke-interface {v10}, Landroid/content/pm/IPackageManager;->getPermissionControllerPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v11

    iget v11, v11, Landroid/content/pm/UserInfo;->id:I

    const/4 v12, 0x0

    const v13, 0x10400

    invoke-interface {v10, v0, v12, v13, v11}, Landroid/content/pm/IPackageManager;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_0

    new-instance v4, Landroid/content/ComponentName;

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v10, v11}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_1
    const-string/jumbo v10, "com.android.systemui/com.android.systemui.recents.RecentsActivity"

    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lcom/android/server/am/FreeformStackController;->mStackWindowController:Lcom/android/server/wm/FreeformStackWindowController;

    invoke-virtual {v10, v6}, Lcom/android/server/wm/FreeformStackWindowController;->setGrantPermissionComponents(Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v10

    const-string/jumbo v11, "CscFeature_Framework_ConfigAppListToBlockFloatingMultiWindows"

    invoke-virtual {v10, v11, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string/jumbo v10, ":"

    invoke-virtual {v2, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    const/4 v10, 0x0

    array-length v12, v11

    :goto_1
    if-ge v10, v12, :cond_2

    aget-object v3, v11, v10

    iget-object v13, p0, Lcom/android/server/am/FreeformStackController;->mAppsToBlockFloatingMultiWindows:Ljava/util/ArrayList;

    invoke-virtual {v13, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method registerBroadcastReceiver()V
    .locals 6

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v2, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeAllReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v4, "android.permission.MANAGE_ACTIVITY_STACKS"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "android.intent.action.COOLDOWN_FREEFORM"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/FreeformStackController;->mCoolDownFreeformReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public removeToggleFreeformList(Lcom/android/server/am/TaskRecord;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resetToggleFreeformList()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method restoreFullscreenStateLocked(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v3, 0x0

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mRecentTasks:Lcom/android/server/am/RecentTasks;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v4

    if-eqz v4, :cond_0

    if-eq v5, p2, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isFreeformStack()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isRecentsStack()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isPinnedStack()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Lcom/android/server/am/ActivityStack;->isDockedStack()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isHomeTask()Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :cond_1
    :goto_0
    const-string/jumbo v7, "FreeformStackController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState: task="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " moveHomeStackToFront="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_5

    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->moveHomeStackTaskToTop(Ljava/lang/String;)Z

    :goto_1
    return-void

    :cond_2
    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v8, 0x3

    invoke-virtual {v7, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityStack;->shouldBeVisible(Lcom/android/server/am/ActivityRecord;)I

    move-result v7

    if-ne v7, v10, :cond_3

    const/4 v2, 0x1

    :goto_2
    invoke-virtual {v5}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v7

    if-nez v7, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    const-string/jumbo v7, "FreeformStackController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "restoreFullscreenState: docked visible, full task is unresizable, tr="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    goto :goto_2

    :cond_5
    iget-object v7, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "restoreFullscreenState("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/android/server/am/ActivityStack;->moveToFront(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {p2, v7}, Lcom/android/server/am/TaskRecord;->setTaskToReturnTo(I)V

    goto :goto_1
.end method

.method rotateFreeformTaskLocked(Lcom/android/server/am/ActivityRecord;)V
    .locals 12

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-boolean v8, v7, Lcom/android/server/am/TaskRecord;->mIsDexCompatEnabled:Z

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v4, 0x0

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_2

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    iget-object v9, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    if-le v8, v9, :cond_3

    :cond_2
    const/4 v4, 0x1

    :cond_3
    invoke-direct {p0, v7, v4}, Lcom/android/server/am/FreeformStackController;->getSupportScreenBounds(Lcom/android/server/am/TaskRecord;I)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/MultiWindowManagerService;->getBaseDisplaySize()Landroid/graphics/Point;

    move-result-object v1

    iget v8, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    sub-int/2addr v8, v9

    div-int/lit8 v5, v8, 0x2

    const/4 v6, 0x0

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    if-eqz v8, :cond_4

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v5, v8, Landroid/graphics/Rect;->left:I

    iget-object v8, v7, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget v6, v8, Landroid/graphics/Rect;->top:I

    :cond_4
    invoke-virtual {v0, v5, v6}, Landroid/graphics/Rect;->offsetTo(II)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v8, v0, Landroid/graphics/Rect;->left:I

    if-gez v8, :cond_8

    iget v8, v0, Landroid/graphics/Rect;->left:I

    neg-int v2, v8

    :cond_5
    :goto_0
    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-gez v8, :cond_9

    iget v8, v0, Landroid/graphics/Rect;->top:I

    neg-int v3, v8

    :cond_6
    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_7
    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v9, 0x12

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const-string/jumbo v9, "rotate_freeform"

    const/4 v10, 0x2

    invoke-virtual {v8, v11, v10, v9}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    iget-object v8, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v9, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v8, v9, v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    return-void

    :cond_8
    iget v8, v0, Landroid/graphics/Rect;->right:I

    iget v9, v1, Landroid/graphics/Point;->x:I

    if-le v8, v9, :cond_5

    iget v8, v1, Landroid/graphics/Point;->x:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    sub-int v2, v8, v9

    goto :goto_0

    :cond_9
    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    iget v9, v1, Landroid/graphics/Point;->y:I

    if-le v8, v9, :cond_6

    iget v8, v1, Landroid/graphics/Point;->y:I

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v3, v8, v9

    goto :goto_1
.end method

.method setFreeformStackPolicyVisibility(Z)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/am/ActivityStack;->mWindowContainerController:Lcom/android/server/wm/StackWindowController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/StackWindowController;->setStackPolicyVisibility(Z)V

    :cond_0
    return-void
.end method

.method setMaxVisibleFreeformCountLocked(I)V
    .locals 4

    const/4 v0, -0x1

    if-lez p1, :cond_0

    :goto_0
    iput p1, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    const-string/jumbo v1, "FreeformStackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMaxVisibleFreeformCount: mMaxFreeformOverWrittenCnt="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/am/FreeformStackController;->mMaxFreeformOverWrittenCnt:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", caller="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x5

    invoke-static {v3}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v0}, Lcom/android/server/am/FreeformStackController;->applyFreeformMinimizePolicyLocked(I)V

    return-void

    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method shouldKeepTranslucentWindowLocked(Lcom/android/server/am/ActivityRecord;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/android/server/am/ActivityRecord;->isFreeform()Z

    move-result v2

    if-nez v2, :cond_0

    iget-boolean v2, p1, Lcom/android/server/am/ActivityRecord;->isRelaunching:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimationController;->getFreeformRelaunchAnimState()I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method shouldSetTaskToReturnToHomeLocked(II)Z
    .locals 2

    invoke-static {p1, p2}, Lcom/samsung/android/multiwindow/MultiWindowManager$Utils;->isFreeformMaximizing(II)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mHomeStack:Lcom/android/server/am/ActivityStack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityStack;->isVisibleBehindFreeformStack(Lcom/android/server/am/ActivityRecord;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toggleFreeformState()V
    .locals 9

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    new-instance v8, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mMinimizedFreeformForToggleList:Ljava/util/ArrayList;

    invoke-direct {v8, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v8}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/TaskRecord;

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStackId()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v6

    invoke-virtual {v1}, Lcom/android/server/am/TaskRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v0

    if-eqz v6, :cond_1

    iget-object v4, v6, Lcom/android/server/am/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    :goto_1
    const-string/jumbo v5, "toggleFreeformState"

    const/4 v2, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActivityStack;->moveTaskToFrontLocked(Lcom/android/server/am/TaskRecord;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v4, v3

    goto :goto_1

    :cond_2
    return-void
.end method

.method toggleFullscreenModeLocked(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/TaskRecord;)V
    .locals 9

    const/4 v8, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isFreeform()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    iget-boolean v0, p2, Lcom/android/server/am/TaskRecord;->mFullscreen:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v3, p2, Lcom/android/server/am/TaskRecord;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    :goto_0
    if-nez v3, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityStackSupervisor;->getStack(I)Lcom/android/server/am/ActivityStack;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getTaskPositioner()Lcom/android/server/am/LaunchingTaskPositioner;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/am/ActivityStack;->getAllTasks()Ljava/util/ArrayList;

    move-result-object v2

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/LaunchingTaskPositioner;->getDefaultTaskBounds(Lcom/android/server/am/TaskRecord;Ljava/util/ArrayList;Landroid/graphics/Rect;Landroid/content/pm/ActivityInfo$WindowLayout;Z)V

    :cond_0
    :goto_1
    const-string/jumbo v0, "FreeformStackController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "toggleFullscreenModeLocked: tr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", targetBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, v5}, Lcom/android/server/wm/WindowManagerService;->prepareAppTransition(IZ)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mScreenFreezeAnimController:Lcom/android/server/wm/ScreenFreezeAnimationController;

    const-string/jumbo v1, "toggle_fullscreen_freeform"

    invoke-virtual {v0, v4, v8, v1}, Lcom/android/server/wm/ScreenFreezeAnimationController;->setFreeformRelaunchAnimState(Ljava/util/ArrayList;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1, v3}, Lcom/android/server/wm/MultiWindowManagerInternal;->resizeTaskWithRelaunchAnim(Landroid/view/IApplicationToken;Landroid/graphics/Rect;)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/TaskRecord;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateDisplayInfoLocked()V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->appHeight:I

    invoke-virtual {v0, v5, v5, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->appWidth:I

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    iput v1, v2, Landroid/graphics/Rect;->left:I

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v7, p2, Lcom/android/server/am/TaskRecord;->mBounds:Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/FreeformStackController;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {v0, v7}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p2, v7}, Lcom/android/server/am/TaskRecord;->setLastBoundsForMetaKeyInteractionLocked(Landroid/graphics/Rect;)V

    goto/16 :goto_1
.end method

.method updateDesktopModeIfNeededLocked()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->isDesktopModeLocked()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eq v1, v0, :cond_0

    iput-boolean v0, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    const-string/jumbo v1, "FreeformStackController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onConfigurationChanged, DesktopMode enabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMultiWindowService:Lcom/android/server/am/MultiWindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/MultiWindowManagerService;->updateMultiInstanceCountIfNeededLocked()V

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v2, "desktop_on"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->unbindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/am/FreeformStackController;->ensureAllTasksRunningInDexLocked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->initGameManagerService()V

    iget-object v2, p0, Lcom/android/server/am/FreeformStackController;->mEnabledController:Lcom/android/server/am/MultiWindowEnableController;

    const-string/jumbo v3, "MultiWindowManager"

    iget-boolean v1, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    if-eqz v1, :cond_2

    const-string/jumbo v1, "Desktop On"

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/am/FreeformStackController;->mIsDesktopMode:Z

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/am/MultiWindowEnableController;->setMultiWindowForceEnabledForUser(Ljava/lang/String;Ljava/lang/String;ZI)V

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->updateFreeformMaxCount()V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreeformStackController;->mMinimizeServiceBinder:Lcom/android/server/am/FreeformMinimizeServiceBinder;

    const-string/jumbo v2, "desktop_off"

    invoke-virtual {v1, v2}, Lcom/android/server/am/FreeformMinimizeServiceBinder;->bindMinimizeContainerServiceIfNeeded(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/am/FreeformStackController;->ensureAllTasksRunningInDexLocked(Z)V

    invoke-direct {p0}, Lcom/android/server/am/FreeformStackController;->setLatestDexBounds()V

    goto :goto_0

    :cond_2
    const-string/jumbo v1, "Desktop Off"

    goto :goto_1
.end method

.method updateDexLabsPolicy(Z)V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "labs_resizable_window_enabled"

    invoke-static {v4, v5, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v5, "launch_policy_developer_enabled"

    invoke-static {v4, v5, v6}, Lcom/android/server/desktopmode/DesktopModeSettings;->getSettings(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v6, p0, Lcom/android/server/am/FreeformStackController;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    if-nez v0, :cond_1

    move v2, v1

    :goto_0
    if-eq v3, v2, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsEnabled:Z

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :try_start_1
    iput-boolean v5, p0, Lcom/android/server/am/FreeformStackController;->mDexLabsPolicyChanged:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
.end method
