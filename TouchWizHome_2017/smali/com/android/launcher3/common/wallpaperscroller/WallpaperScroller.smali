.class public Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;
.super Ljava/lang/Object;
.source "WallpaperScroller.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;,
        Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;,
        Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltValue;
    }
.end annotation


# static fields
.field private static final EASING_VALUE:F = 0.333f

.field private static final TAG:Ljava/lang/String; = "WallpaperScroller"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGyroListener:Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsRunning:Z

.field private mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

.field private mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mIsRunning:Z

    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;-><init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)V

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mGyroListener:Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

    iput-object p1, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;)Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    return-object v0
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mIsRunning:Z

    return v0
.end method

.method public pause()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WallpaperScroller"

    const-string v1, "WallpaperScroller pause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->supportScontext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->pauseSContext()V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    invoke-static {v0, v2, v2}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$300(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FF)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mIsRunning:Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->pauseSensor()V

    goto :goto_0
.end method

.method public resume(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string v0, "WallpaperScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperScroller resume : init "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    invoke-static {v0, v3, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$300(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FF)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->supportScontext(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->resumeSContext()V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mIsRunning:Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->resumeSensor()V

    goto :goto_0
.end method

.method public setWindowToken(Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "WallpaperScroller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperScroller set window token : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    invoke-static {v0, p1}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$400(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;Landroid/os/IBinder;)V

    :cond_0
    return-void
.end method

.method public shutdown()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "WallpaperScroller"

    const-string v1, "WallpaperScroller shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mGyroListener:Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->unregisterListener(Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$500(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;)V

    iput-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    iput-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    invoke-static {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->access$600(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;)V

    iput-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    :cond_2
    return-void
.end method

.method public start(Z)V
    .locals 8

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const-string v0, "WallpaperScroller"

    const-string v2, "WallpaperScroller start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    if-nez v0, :cond_0

    const-string v0, "WallpaperScroller"

    const-string v2, "WallpaperThread start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v7

    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    iget-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v7}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;-><init>(Landroid/content/Context;Landroid/app/WallpaperManager;)V

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mThread:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;

    invoke-virtual {v0}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$WallpaperThread;->start()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_1

    const-string v0, "WallpaperScroller"

    const-string v2, "HandlerThread start"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const-string v2, "WallpaperScrollerHandlerThread"

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    iget-object v2, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, p0, v2, v3}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;-><init>(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;Landroid/os/Looper;Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$1;)V

    iput-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mTiltUpdateHandler:Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;

    move v2, v1

    move v3, v1

    move v4, v1

    move v6, v5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;->access$100(Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller$TiltUpdateHandler;FFFFFF)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/wallpaperscroller/WallpaperScroller;->mGyroListener:Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

    invoke-static {v0, p1}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->registerListener(Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;Z)V

    return-void
.end method
