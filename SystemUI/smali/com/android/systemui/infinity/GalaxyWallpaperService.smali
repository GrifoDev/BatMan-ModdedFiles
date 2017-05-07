.class public abstract Lcom/android/systemui/infinity/GalaxyWallpaperService;
.super Lcom/android/systemui/infinity/OpenGLES2WallpaperService;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GalaxyWallpaperService$1;,
        Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;,
        Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;
    }
.end annotation


# static fields
.field private static ACTION_AOD_BG_OFF:Ljava/lang/String;

.field private static AOD_OFF_DELAY:J

.field private static HOME_WALLPAPER:I

.field private static LOCK_WALLPAPER:I


# instance fields
.field public final AUTO_RESET_WITH_ANIMATION:Z

.field private mAODBgOffIntent:Landroid/app/PendingIntent;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mBroadcastReceiverRegistered:Z

.field private mCurrentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

.field private mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPlugged:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

.field private mVisible:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->AOD_OFF_DELAY:J

    return-wide v0
.end method

.method static synthetic -get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    return-object v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->HOME_WALLPAPER:I

    return v0
.end method

.method static synthetic -get3()I
    .locals 1

    sget v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->LOCK_WALLPAPER:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mCurrentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/opengl/GLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    return v0
.end method

.method static synthetic -get9(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/infinity/GalaxyWallpaperService;Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mCurrentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mVisible:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->isDeviceProvisionedInSettingsDb()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->hide(I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onScreenBlack()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->setAODBgOffIntent(J)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->setHomeParticleAlpha()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->setLockParticleAlpha()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->show(I)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->useSensor(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->HOME_WALLPAPER:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->LOCK_WALLPAPER:I

    const-string/jumbo v0, "com.android.systemui.infinity.ACTION_AOD_BG_OFF"

    sput-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->AOD_OFF_DELAY:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->AUTO_RESET_WITH_ANIMATION:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mCurrentMode:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    new-instance v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;-><init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private hide(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/GalaxyRenderer;->hide(I)V

    :cond_0
    return-void
.end method

.method private isDeviceProvisionedInSettingsDb()Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "device_provisioned"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private listenForBroadcasts(Z)V
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mBroadcastReceiverRegistered:Z

    goto :goto_0
.end method

.method private onScreenBlack()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x1f4

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->wakeLock(J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onScreenBlack()V

    :cond_0
    return-void
.end method

.method private setAODBgOffIntent(J)V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPlugged:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "GalaxyWallpaper"

    const-string/jumbo v1, "setAODBgOffIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v2, p1

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private setHomeParticleAlpha()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->setHomeParticleAlpha()V

    :cond_0
    return-void
.end method

.method private setLockParticleAlpha()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->setLockParticleAlpha()V

    :cond_0
    return-void
.end method

.method private show(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/GalaxyRenderer;->show(I)V

    :cond_0
    return-void
.end method

.method private useSensor(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->beginSensing()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->pauseSensing()V

    goto :goto_0
.end method

.method private wakeLock(J)V
    .locals 3

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "wakeLock : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method getNewRenderer()Landroid/opengl/GLSurfaceView$Renderer;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onDestroy()V

    :cond_0
    new-instance v0, Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getWallpaperTheme()Lcom/android/systemui/infinity/theme/ThemeInterface;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;-><init>(Landroid/content/Context;Lcom/android/systemui/infinity/theme/ThemeInterface;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onCreate()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    return-object v0
.end method

.method protected abstract getWallpaperTheme()Lcom/android/systemui/infinity/theme/ThemeInterface;
.end method

.method onAODBgOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x26c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->wakeLock(J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onAODBgOff()V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->onCreate()V

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v1, "GalaxyWallpaper"

    const/16 v2, 0x80

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/systemui/infinity/GalaxyWallpaperService;->ACTION_AOD_BG_OFF:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/high16 v3, 0x10000000

    invoke-static {v0, v2, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mAODBgOffIntent:Landroid/app/PendingIntent;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;-><init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mEngine:Landroid/service/wallpaper/WallpaperService$Engine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onDestroy()V

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->listenForBroadcasts(Z)V

    invoke-super {p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService;->onDestroy()V

    return-void
.end method

.method onDeviceUnlocked()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onDeviceUnlocked()V

    :cond_0
    return-void
.end method

.method onScreenOff()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x834

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->wakeLock(J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->onScreenOff(Z)V

    :cond_0
    return-void
.end method

.method onScreenOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->onScreenOn(Z)V

    :cond_0
    return-void
.end method

.method public resetParticle(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x26c

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->wakeLock(J)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService;->mRenderer:Lcom/android/systemui/infinity/GalaxyRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyRenderer;->onAutoReset()V

    :cond_0
    return-void
.end method

.method public setEdgeLightningColor(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "edge_lighting_wallpaper_color"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEdgeLightningColor - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
