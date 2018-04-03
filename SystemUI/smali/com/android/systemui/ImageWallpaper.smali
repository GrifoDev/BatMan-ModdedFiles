.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$DrawableEngine;,
        Lcom/android/systemui/ImageWallpaper$ExtractColor;
    }
.end annotation


# static fields
.field public static final WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

.field private static mIsSupportHomeWallpaperTiltEffect:Z


# instance fields
.field mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

.field mIsHwAccelerated:Z

.field private mLastKeyboard:I

.field private mNewKeyboard:I

.field private mTiltChanged:Z

.field mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperTiltSettingEnabled:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/ImageWallpaper;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/ImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/ImageWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/ImageWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    return p1
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    const-string/jumbo v1, "SEC_FLOATING_FEATURE_LOCKSCREEN_CONFIG_WALLPAPER_STYLE"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "INCONSISTENCY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mNewKeyboard:I

    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mLastKeyboard:I

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperTiltSettingEnabled:Z

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mTiltChanged:Z

    return-void
.end method

.method public static isInterruptGyroSensorSupported(Landroid/content/Context;)Z
    .locals 3

    const-string/jumbo v2, "sensor"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    if-eqz v1, :cond_0

    const v2, 0x1002b

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "ImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "engine visible:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v2}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->isVisible()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/ImageWallpaper;->WPAPER_SUPPORT_INCONSISTENCY_WALLPAPER:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsHwAccelerated:Z

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->isInterruptGyroSensorSupported(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/ImageWallpaper;->mIsSupportHomeWallpaperTiltEffect:Z

    const-string/jumbo v0, "desktopmode"

    invoke-virtual {p0, v0}, Lcom/android/systemui/ImageWallpaper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    return-object v0
.end method

.method public onTrimMemory(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngine:Lcom/android/systemui/ImageWallpaper$DrawableEngine;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$DrawableEngine;->trimMemory(I)V

    :cond_0
    return-void
.end method
