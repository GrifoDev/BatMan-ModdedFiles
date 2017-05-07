.class public Lcom/android/server/wm/ScreenFreezeAnimation;
.super Ljava/lang/Object;
.source "ScreenFreezeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final FREEZE_LAYER:I = 0x1e8481

.field public static final MW_ANIMATION_FREEFORM_RESIZED:I = 0x3

.field public static final MW_ANIMATION_SNAP_WINDOW_TRANSFORM:I = 0x4

.field public static final MW_ANIMATION_SPLIT_RESIZED:I = 0x1

.field public static final MW_ANIMATION_SPLIT_SWITCHED:I = 0x2

.field public static final MW_ANIMATION_UNSET:I = -0x1

.field private static final STATE_ANIM_READY:I = 0x1

.field private static final STATE_ANIM_RUNNING:I = 0x2

.field private static final STATE_ANIM_TIMEOUT:I = 0x3

.field private static final STATE_FREEZING_SCREEN:I = 0x0

.field private static final STATE_INITIALIZING:I = -0x1

.field static final TAG:Ljava/lang/String; = "ScreenFreezeAnimation"


# instance fields
.field mAnimRunning:Z

.field mAnimation:Landroid/view/animation/Animation;

.field final mContext:Landroid/content/Context;

.field private mFreezeAnimState:I

.field mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

.field private final mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

.field mNextScreenFreezeAnimation:I

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field final mSession:Landroid/view/SurfaceSession;

.field mStartTime:J

.field mTargetAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field mTransformation:Landroid/view/animation/Transformation;

.field mWaitForRecents:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/SurfaceSession;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/MultiWindowManagerInternal;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iput-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iput-object p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iput-object p3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    return-void
.end method

.method private setScreenFreezeAnimation(I)Z
    .locals 9

    const/4 v2, -0x1

    const/4 v8, 0x1

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v0, :cond_0

    return v5

    :cond_0
    if-eq p1, v8, :cond_1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xc9

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return v8

    :cond_2
    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMultiWindowManagerInternal:Lcom/android/server/wm/IMultiWindowManagerInternalBridge;

    const/16 v1, 0xca

    move-object v4, v3

    move v6, v5

    move-object v7, v3

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IMultiWindowManagerInternalBridge;->loadMultiWindowTransitionLocked(IILandroid/graphics/Rect;Landroid/graphics/Rect;ZZLandroid/view/animation/Animation;)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v0}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v1, v1, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v3, v3, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v4, v4, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    return v8

    :cond_5
    return v5
.end method


# virtual methods
.method public clearScreenFreezAnimation()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->kill()V

    iput-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    :cond_1
    iput-boolean v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-boolean v3, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iput v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    iput v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/MultiWindowManagerInternal;->notifyScreenFreezeAnimationFinished()V

    return-void
.end method

.method public createFreezeSurface(ZII)V
    .locals 16

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "Layer for Screenshot or ScreenFreeze can\'t be under 0"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayInfoLocked()Landroid/view/DisplayInfo;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mBridge:Lcom/android/server/wm/IWindowManagerServiceBridge;

    invoke-interface {v2}, Lcom/android/server/wm/IWindowManagerServiceBridge;->isKnoxDesktopModeLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    if-eqz v2, :cond_2

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    :cond_2
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_0
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v9, v2, 0x4

    :goto_1
    :try_start_0
    new-instance v2, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mSession:Landroid/view/SurfaceSession;

    iget v8, v13, Landroid/view/DisplayInfo;->layerStack:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v11, 0x0

    move/from16 v10, p1

    move/from16 v12, p2

    invoke-direct/range {v2 .. v12}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;-><init>(Landroid/view/SurfaceSession;IIIIIIZII)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;
    :try_end_0
    .catch Landroid/view/Surface$OutOfResourcesException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget v3, v13, Landroid/view/DisplayInfo;->layerStack:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerStackForSurface(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    move/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setLayerForSurface(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    invoke-virtual {v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->show()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v2}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v15, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    return-void

    :cond_4
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_0

    :cond_5
    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_6

    iget v2, v13, Landroid/view/DisplayInfo;->rotation:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_7

    :cond_6
    iget v6, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    :goto_3
    iget v9, v13, Landroid/view/DisplayInfo;->rotation:I

    goto :goto_1

    :cond_7
    iget v6, v13, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v7, v13, Landroid/view/DisplayInfo;->logicalHeight:I

    goto :goto_3

    :catch_0
    move-exception v14

    const-string/jumbo v2, "ScreenFreezeAnimation"

    const-string/jumbo v3, "Unable to allocate screen freeze surface"

    invoke-static {v2, v3, v14}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public executeScreenFreezeAniamtion()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationSet()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->setAnimationReady()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_0
    return-void
.end method

.method getScreenFreezeAnimation()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    return v0
.end method

.method goodToGo()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method public handleMultiWindowTransitionReady()I
    .locals 8

    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-nez v6, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isTimeout()Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->getScreenFreezeAnimation()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->goodToGo()V

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mInternal:Lcom/android/server/wm/MultiWindowManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/MultiWindowManagerInternal;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v6, -0x1

    if-eq v1, v6, :cond_5

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->okToDisplay()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->setScreenFreezeAnimation(I)Z

    :goto_0
    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    const/4 v2, 0x3

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v6

    const/4 v7, 0x1

    iput-boolean v7, v6, Lcom/android/server/wm/DisplayContent;->layoutNeeded:Z

    :cond_1
    return v2

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v0, :cond_0

    if-eqz v3, :cond_0

    iget-object v6, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->allDrawn:Z

    if-nez v6, :cond_3

    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingDisplayed:Z

    if-eqz v6, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v6, v5, Lcom/android/server/wm/AppWindowToken;->startingMoved:Z

    if-nez v6, :cond_3

    const/4 v3, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->clearScreenFreezAnimation()V

    goto :goto_0
.end method

.method public isAnimating()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isAnimationReady()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationRunning()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAnimationSet()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isFreezingScreen()Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method isTimeout()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method prepare()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    :cond_0
    return-void
.end method

.method setAnimationReady()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    return-void
.end method

.method setApplicationDrawn(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->mTask:Lcom/android/server/wm/Task;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inHomeStack()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wm/AppWindowToken;->appToken:Landroid/view/IApplicationToken;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.android.systemui/.recents"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mWaitForRecents:Z

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/ScreenFreezeAnimation;->executeScreenFreezeAniamtion()V

    goto :goto_0
.end method

.method public setScreenFreezeAnimation(Ljava/util/ArrayList;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;I)V"
        }
    .end annotation

    const/16 v6, 0x7d0

    const/4 v5, 0x1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    return-void

    :cond_1
    const/4 v1, -0x1

    const/4 v0, -0x1

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    goto :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit16 v4, v4, 0x3e8

    add-int/lit8 v1, v4, -0x1

    move v0, v1

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v5, v1, v1}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/AppWindowToken;

    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    invoke-interface {v4, v6}, Landroid/view/WindowManagerPolicy;->windowTypeToLayerLw(I)I

    move-result v4

    mul-int/lit16 v4, v4, 0x2710

    add-int/lit16 v1, v4, 0x3e8

    add-int/lit8 v0, v1, 0x1

    iput p2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mNextScreenFreezeAnimation:I

    invoke-virtual {p0, v5, v1, v0}, Lcom/android/server/wm/ScreenFreezeAnimation;->createFreezeSurface(ZII)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method setTimeout()V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeAnimState:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTargetAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public stepAnimationLocked(J)Z
    .locals 3

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    if-nez v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    return v1

    :cond_1
    iget-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    if-nez v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimRunning:Z

    iput-wide p1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mStartTime:J

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v1, p1, p2}, Landroid/view/animation/Animation;->setStartTime(J)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1}, Landroid/view/animation/Transformation;->clear()V

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mAnimation:Landroid/view/animation/Animation;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, p1, p2, v2}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mFreezeSurface:Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;

    iget-object v2, p0, Lcom/android/server/wm/ScreenFreezeAnimation;->mTransformation:Landroid/view/animation/Transformation;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenFreezeAnimation$ScreenFreezeSurface;->setAnimationTransform(Landroid/view/animation/Transformation;)V

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "ScreenFreezeSurface"

    return-object v0
.end method
