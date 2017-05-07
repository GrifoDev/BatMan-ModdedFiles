.class public Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;
.super Landroid/widget/FrameLayout;
.source "KeyguardAnimatedWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/wallpaper/SystemUIWallpaperBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;
    }
.end annotation


# instance fields
.field private mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

.field private mContext:Landroid/content/Context;

.field private mDeviceDensity:F

.field private mDeviceHeight:F

.field private mDeviceWidth:F

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mHeightRatio:F

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field private mPackageDensity:F

.field private mPackageHeight:F

.field private mPackageName:Ljava/lang/String;

.field private mPackageWidth:F

.field private mScreenOn:Z

.field private mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWidthRatio:F


# direct methods
.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZII)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v3, 0x44200000    # 640.0f

    const/high16 v2, 0x43b40000    # 360.0f

    const/high16 v0, 0x40800000    # 4.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-boolean v4, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iput-boolean v4, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mWidthRatio:F

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mHeightRatio:F

    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    iput-boolean p3, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    invoke-direct {p0, p2}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method private getDevicePixelX(F)F
    .locals 2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mWidthRatio:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private getDevicePixelY(F)F
    .locals 2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mHeightRatio:F

    mul-float/2addr p1, v0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    div-float/2addr v0, v1

    mul-float/2addr v0, p1

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method private init(Ljava/lang/String;)V
    .locals 13

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    const-string/jumbo v10, "KeyguardAnimatedWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "XmlName = animation;Default package name = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/high16 v10, -0x1000000

    invoke-virtual {p0, v10}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->setBackgroundColor(I)V

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "display"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/hardware/display/DisplayManager;

    iput-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplay:Landroid/view/Display;

    iget-object v11, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v10, v11}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v10, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v1, v2, Landroid/view/DisplayInfo;->rotation:I

    const-string/jumbo v10, "KeyguardAnimatedWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "deviceRotation="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    if-le v10, v11, :cond_1

    const/4 v10, 0x1

    if-eq v1, v10, :cond_0

    const/4 v10, 0x3

    if-ne v1, v10, :cond_1

    :cond_0
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    :cond_1
    const-string/jumbo v10, "KeyguardAnimatedWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mMetricsWidth = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "KeyguardAnimatedWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mMetricsHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v10}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object v0

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, v10}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-result-object v10

    iput-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v7

    invoke-virtual {v7}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_4
    move-exception v3

    invoke-virtual {v3}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_5
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_6
    move-exception v9

    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "cleanUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->removeAllViews()V

    return-void
.end method

.method public handleTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onPause() - screenTurnedOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onResume() - screenTurningOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "view - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mScreenOn:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0
.end method

.method public parseAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;
    .locals 35
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v31, 0x0

    const/4 v13, 0x0

    const/16 v26, 0x0

    const/16 v34, 0x0

    const/16 v33, -0x2

    const/16 v21, -0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewWidth:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mViewHeight:I

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    div-float/2addr v5, v6

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    :goto_0
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mDeviceWidth="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mDeviceHeight="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v26

    const-string/jumbo v5, "animation"

    const-string/jumbo v6, "xml"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v34

    if-nez v34, :cond_3

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    const-string/jumbo v6, "null xml returned"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5

    :cond_0
    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    invoke-static/range {p2 .. p2}, Lcom/android/keyguard/wallpaper/theme/DensityUtil;->getScreenHeight(Landroid/content/Context;)I

    move-result v5

    int-to-float v5, v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceWidth:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float v16, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceHeight:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float v15, v5, v6

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    int-to-float v5, v5

    cmpl-float v5, v16, v5

    if-eqz v5, :cond_1

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    int-to-float v5, v5

    div-float v5, v5, v16

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mWidthRatio:F

    :cond_1
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    int-to-float v5, v5

    cmpl-float v5, v15, v5

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v15

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mHeightRatio:F

    :cond_2
    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deviceWidthPixel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mWidthRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mWidthRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deviceHeightPixel="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", mHeightRatio="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mHeightRatio:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    new-instance v5, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-direct {v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;-><init>()V

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v19

    const/16 v32, 0x0

    :goto_1
    const/4 v5, 0x1

    move/from16 v0, v19

    if-eq v0, v5, :cond_e3

    if-nez v19, :cond_5

    :cond_4
    :goto_2
    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v19

    goto :goto_1

    :cond_5
    const/4 v5, 0x2

    move/from16 v0, v19

    if-ne v0, v5, :cond_d3

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v28

    const-string/jumbo v5, "screen"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_3
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "width"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageWidth: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageWidth:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_4
    add-int/lit8 v22, v22, 0x1

    goto :goto_3

    :cond_7
    const-string/jumbo v5, "height"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageHeight: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageHeight:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const-string/jumbo v5, "density"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mPackageDensity: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageDensity:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_9
    const-string/jumbo v5, "view"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    new-instance v31, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;

    move-object/from16 v0, v31

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;-><init>(Landroid/content/Context;)V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_5
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "img"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    move-object/from16 v0, v26

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v17

    if-nez v32, :cond_b

    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    check-cast v17, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsWidth:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mMetricsHeight:I

    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaledImageBitmap(Landroid/graphics/drawable/BitmapDrawable;II)V

    :cond_a
    :goto_6
    add-int/lit8 v22, v22, 0x1

    goto :goto_5

    :cond_b
    move-object/from16 v0, v31

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_c
    const-string/jumbo v5, "x"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setX(F)V

    goto :goto_6

    :cond_d
    const-string/jumbo v5, "y"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setY(F)V

    goto :goto_6

    :cond_e
    const-string/jumbo v5, "width"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v33, v0

    goto :goto_6

    :cond_f
    const-string/jumbo v5, "height"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    float-to-int v0, v5

    move/from16 v21, v0

    goto :goto_6

    :cond_10
    const-string/jumbo v5, "pivotX"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotX(F)V

    goto/16 :goto_6

    :cond_11
    const-string/jumbo v5, "pivotY"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setPivotY(F)V

    goto/16 :goto_6

    :cond_12
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setAlpha(F)V

    goto/16 :goto_6

    :cond_13
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleX(F)V

    goto/16 :goto_6

    :cond_14
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setScaleY(F)V

    goto/16 :goto_6

    :cond_15
    const-string/jumbo v5, "scene"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1a

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_7
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "type"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_16

    const-string/jumbo v5, "snow"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_17

    new-instance v27, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/SnowView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    :cond_16
    :goto_8
    add-int/lit8 v22, v22, 0x1

    goto :goto_7

    :cond_17
    const-string/jumbo v5, "rain"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_18

    new-instance v25, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/RainView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_18
    const-string/jumbo v5, "leaf"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_19

    new-instance v23, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;

    move-object/from16 v0, v23

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/LeafView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_19
    const-string/jumbo v5, "flower"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    new-instance v20, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;

    move-object/from16 v0, v20

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FlowerView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addScene(Lcom/android/keyguard/wallpaper/theme/LockscreenCallback;)V

    const/4 v5, -0x1

    const/4 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_8

    :cond_1a
    const-string/jumbo v5, "rotate"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_9
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_1b
    :goto_a
    add-int/lit8 v22, v22, 0x1

    goto :goto_9

    :cond_1c
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_a

    :cond_1d
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_a

    :cond_1e
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1f

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_a

    :cond_1f
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_20

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_a

    :cond_20
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_a

    :cond_21
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_23

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_22

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_a

    :cond_22
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_23
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_24
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_25
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_26
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1b

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_a

    :cond_27
    const-string/jumbo v5, "parabola"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_37

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_b
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "key"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_28
    :goto_c
    add-int/lit8 v22, v22, 0x1

    goto :goto_b

    :cond_29
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_c

    :cond_2a
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_c

    :cond_2b
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_c

    :cond_2c
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_c

    :cond_2d
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2e

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_c

    :cond_2e
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2f

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_c

    :cond_2f
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_c

    :cond_30
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_31

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_c

    :cond_31
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_33

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_32
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_33
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_35

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_34
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_35
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_36

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_36
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_c

    :cond_37
    const-string/jumbo v5, "sinX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_48

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_d
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "key"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_39

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_38
    :goto_e
    add-int/lit8 v22, v22, 0x1

    goto :goto_d

    :cond_39
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3a

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_e

    :cond_3a
    const-string/jumbo v5, "xFrom"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3b

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_e

    :cond_3b
    const-string/jumbo v5, "xTo"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_e

    :cond_3c
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_e

    :cond_3d
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3e

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_e

    :cond_3e
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_e

    :cond_3f
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_40

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_e

    :cond_40
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_41

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_e

    :cond_41
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_42

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_e

    :cond_42
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_44

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_43

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_43
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_44
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_46

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_45

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_45
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_46
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_47

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_47
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_38

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_e

    :cond_48
    const-string/jumbo v5, "sinY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_59

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_f
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "key"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->key:F

    :cond_49
    :goto_10
    add-int/lit8 v22, v22, 0x1

    goto :goto_f

    :cond_4a
    const-string/jumbo v5, "adjust"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->adjust:F

    goto :goto_10

    :cond_4b
    const-string/jumbo v5, "yFrom"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_10

    :cond_4c
    const-string/jumbo v5, "yTo"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_10

    :cond_4d
    const-string/jumbo v5, "yOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4e

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->yOffSet:F

    goto :goto_10

    :cond_4e
    const-string/jumbo v5, "xOffSet"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->xOffSet:F

    goto :goto_10

    :cond_4f
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_50

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_10

    :cond_50
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_10

    :cond_51
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_52

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_10

    :cond_52
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_53

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_10

    :cond_53
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_55

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_54

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_54
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_55
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_57

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_56
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_57
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_58

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_58
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_10

    :cond_59
    const-string/jumbo v5, "round"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_69

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_11
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "r"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->r:F

    :cond_5a
    :goto_12
    add-int/lit8 v22, v22, 0x1

    goto :goto_11

    :cond_5b
    const-string/jumbo v5, "a"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_12

    :cond_5c
    const-string/jumbo v5, "b"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_12

    :cond_5d
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5e

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_12

    :cond_5e
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_12

    :cond_5f
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_60

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_12

    :cond_60
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_12

    :cond_61
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_12

    :cond_62
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_63

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_12

    :cond_63
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_64
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_65
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_67

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_66

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_66
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_67
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_68

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_68
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5a

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_12

    :cond_69
    const-string/jumbo v5, "ellipse"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7a

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_13
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "ra"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6b

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->ra:F

    :cond_6a
    :goto_14
    add-int/lit8 v22, v22, 0x1

    goto :goto_13

    :cond_6b
    const-string/jumbo v5, "rb"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->rb:F

    goto :goto_14

    :cond_6c
    const-string/jumbo v5, "a"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->a:F

    goto :goto_14

    :cond_6d
    const-string/jumbo v5, "b"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mDeviceDensity:F

    mul-float/2addr v5, v6

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->b:F

    goto :goto_14

    :cond_6e
    const-string/jumbo v5, "fromDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6f

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    goto :goto_14

    :cond_6f
    const-string/jumbo v5, "toDegrees"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_70

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_14

    :cond_70
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_71

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto/16 :goto_14

    :cond_71
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_72

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto/16 :goto_14

    :cond_72
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_73

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto/16 :goto_14

    :cond_73
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_74

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto/16 :goto_14

    :cond_74
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_76

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_75

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_75
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_76
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_78

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_77

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_77
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_78
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_79

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_79
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6a

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_14

    :cond_7a
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_87

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_15
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromAlpha"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7c

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_7b
    :goto_16
    add-int/lit8 v22, v22, 0x1

    goto :goto_15

    :cond_7c
    const-string/jumbo v5, "toAlpha"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7d

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_16

    :cond_7d
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7e

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_16

    :cond_7e
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_16

    :cond_7f
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_16

    :cond_80
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_81

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_16

    :cond_81
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_83

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_82

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_16

    :cond_82
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_83
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_85

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_84

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_84
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_85
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_86

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_86
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7b

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_16

    :cond_87
    const-string/jumbo v5, "translateX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_94

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_17
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromXDelta"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_89

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_88
    :goto_18
    add-int/lit8 v22, v22, 0x1

    goto :goto_17

    :cond_89
    const-string/jumbo v5, "toXDelta"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8a

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelX(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_18

    :cond_8a
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_18

    :cond_8b
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_18

    :cond_8c
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8d

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_18

    :cond_8d
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8e

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_18

    :cond_8e
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_90

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8f

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_18

    :cond_8f
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_90
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_92

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_91

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_91
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_92
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_93

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_93
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_18

    :cond_94
    const-string/jumbo v5, "translateY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a1

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_19
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromYDelta"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_96

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_95
    :goto_1a
    add-int/lit8 v22, v22, 0x1

    goto :goto_19

    :cond_96
    const-string/jumbo v5, "toYDelta"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_97

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->getDevicePixelY(F)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1a

    :cond_97
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_98

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1a

    :cond_98
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_99

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1a

    :cond_99
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9a

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1a

    :cond_9a
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9b

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1a

    :cond_9b
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9d

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9c

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1a

    :cond_9c
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9d
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9f

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9e

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9e
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_9f
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a0

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a0
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_95

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1a

    :cond_a1
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ae

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_1b
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromXScale"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a3

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_a2
    :goto_1c
    add-int/lit8 v22, v22, 0x1

    goto :goto_1b

    :cond_a3
    const-string/jumbo v5, "toXScale"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a4

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1c

    :cond_a4
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a5

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1c

    :cond_a5
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1c

    :cond_a6
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a7

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1c

    :cond_a7
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a8

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1c

    :cond_a8
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_aa

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a9

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1c

    :cond_a9
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_aa
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ac

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_ab

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_ab
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_ac
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ad

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_ad
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a2

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1c

    :cond_ae
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bb

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_1d
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "fromYScale"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b0

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->from:F

    :cond_af
    :goto_1e
    add-int/lit8 v22, v22, 0x1

    goto :goto_1d

    :cond_b0
    const-string/jumbo v5, "toYScale"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b1

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->to:F

    goto :goto_1e

    :cond_b1
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b2

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_1e

    :cond_b2
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b3

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_1e

    :cond_b3
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b4

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_1e

    :cond_b4
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b5

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_1e

    :cond_b5
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b7

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b6

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto :goto_1e

    :cond_b6
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b7
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b9

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b8

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b8
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_b9
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ba

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_ba
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_af

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1e

    :cond_bb
    const-string/jumbo v5, "ImageResource"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c8

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_1f
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "length"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bd

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->length:I

    :cond_bc
    :goto_20
    add-int/lit8 v22, v22, 0x1

    goto :goto_1f

    :cond_bd
    const-string/jumbo v5, "image"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_be

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewId:I

    goto :goto_20

    :cond_be
    const-string/jumbo v5, "duration"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bf

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->duration:J

    goto :goto_20

    :cond_bf
    const-string/jumbo v5, "repeatCount"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c0

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatCount:I

    goto :goto_20

    :cond_c0
    const-string/jumbo v5, "repeatMode"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c1

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->repeatMode:I

    goto :goto_20

    :cond_c1
    const-string/jumbo v5, "delay"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c2

    invoke-static/range {v30 .. v30}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->delay:J

    goto :goto_20

    :cond_c2
    const-string/jumbo v5, "accelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c4

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c3

    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c3
    new-instance v5, Landroid/view/animation/AccelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c4
    const-string/jumbo v5, "decelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c6

    const-string/jumbo v5, "default"

    move-object/from16 v0, v30

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c5

    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c5
    new-instance v5, Landroid/view/animation/DecelerateInterpolator;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v5, v6}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c6
    const-string/jumbo v5, "accelerateDecelerateInterpolator"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c7

    new-instance v5, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v5}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c7
    const-string/jumbo v5, "normalSpeed"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_bc

    const/4 v5, 0x0

    iput-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->interpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_20

    :cond_c8
    const-string/jumbo v5, "frame"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cb

    const/4 v13, 0x0

    new-instance v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;

    invoke-direct {v13}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;-><init>()V

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    const/16 v22, 0x0

    :goto_21
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    const-string/jumbo v5, "top"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ca

    move/from16 v0, v29

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    :cond_c9
    :goto_22
    add-int/lit8 v22, v22, 0x1

    goto :goto_21

    :cond_ca
    const-string/jumbo v5, "minInterval"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c9

    move/from16 v0, v29

    iput v0, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    goto :goto_22

    :cond_cb
    const-string/jumbo v5, "item"

    move-object/from16 v0, v28

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v14

    if-eqz v13, :cond_4

    const/16 v22, 0x0

    :goto_23
    move/from16 v0, v22

    if-ge v0, v14, :cond_4

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v34

    move/from16 v1, v22

    invoke-interface {v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v30

    const-string/jumbo v5, "KeyguardAnimatedWallpaper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "item name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " count:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "frameSize"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cd

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_cc
    :goto_24
    add-int/lit8 v22, v22, 0x1

    goto :goto_23

    :cond_cd
    const-string/jumbo v5, "image"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_ce

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    const-string/jumbo v6, "drawable"

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_ce
    const-string/jumbo v5, "background"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cf

    const-string/jumbo v5, "drawable"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, v26

    move-object/from16 v1, v30

    invoke-virtual {v0, v1, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    goto :goto_24

    :cond_cf
    const-string/jumbo v5, "x"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d0

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_d0
    const-string/jumbo v5, "y"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d1

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    :cond_d1
    const-string/jumbo v5, "scale"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d2

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_d2
    const-string/jumbo v5, "startIndex"

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_cc

    iget-object v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_24

    :cond_d3
    const/4 v5, 0x3

    move/from16 v0, v19

    if-ne v0, v5, :cond_4

    invoke-interface/range {v34 .. v34}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v18

    const-string/jumbo v5, "view"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d5

    if-nez v32, :cond_d4

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setX(F)V

    const/4 v5, 0x0

    move-object/from16 v0, v31

    invoke-virtual {v0, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setY(F)V

    const/16 v33, -0x1

    const/16 v21, -0x1

    :cond_d4
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    move/from16 v2, v33

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    add-int/lit8 v32, v32, 0x1

    const/16 v33, -0x2

    const/16 v21, -0x2

    goto/16 :goto_2

    :cond_d5
    const-string/jumbo v5, "rotate"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d6

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "rotation"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d6
    const-string/jumbo v5, "parabola"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d7

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "parabola"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d7
    const-string/jumbo v5, "sinX"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d8

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinX"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d8
    const-string/jumbo v5, "sinY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d9

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "sinY"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_d9
    const-string/jumbo v5, "round"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_da

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "round"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_da
    const-string/jumbo v5, "ellipse"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_db

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ellipse"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_db
    const-string/jumbo v5, "alpha"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dc

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "alpha"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_dc
    const-string/jumbo v5, "translateX"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_dd

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "x"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_dd
    const-string/jumbo v5, "translateY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_de

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "y"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_de
    const-string/jumbo v5, "scaleX"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_df

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleX"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_df
    const-string/jumbo v5, "scaleY"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "scaleY"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_e0
    const-string/jumbo v5, "ImageResource"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e2

    if-eqz v31, :cond_e1

    move-object/from16 v0, v31

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;->setApkContext(Landroid/content/Context;)V

    :cond_e1
    if-eqz v13, :cond_4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    const-string/jumbo v6, "ImageResource"

    move-object/from16 v0, v31

    invoke-virtual {v13, v0, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->buildAnimation(Lcom/android/keyguard/wallpaper/theme/xmlparser/FrameImageView;Ljava/lang/String;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addAnimation(Landroid/animation/ValueAnimator;)V

    goto/16 :goto_2

    :cond_e2
    const-string/jumbo v5, "frame"

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const/4 v4, 0x0

    if-eqz v13, :cond_4

    new-instance v4, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;

    iget v6, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->backgroundId:I

    iget-object v7, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v8, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->frameSize:Ljava/util/ArrayList;

    iget-object v9, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->x:Ljava/util/ArrayList;

    iget-object v10, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->y:Ljava/util/ArrayList;

    iget-object v11, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->scale:Ljava/util/ArrayList;

    iget-object v12, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->startIndex:Ljava/util/ArrayList;

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v12}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->top:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setTop(I)V

    iget v5, v13, Lcom/android/keyguard/wallpaper/theme/xmlparser/Animation;->minInterval:I

    invoke-virtual {v4, v5}, Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;->setMinInterval(I)V

    const/4 v5, -0x2

    const/4 v6, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v6}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v5, v4}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->addSprite(Lcom/android/keyguard/wallpaper/theme/xmlparser/Frame;)V

    goto/16 :goto_2

    :cond_e3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    return-object v5
.end method

.method public playAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "playAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->playAnimation()V

    goto :goto_0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "stopAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mComplexAnimation:Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;

    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/theme/xmlparser/ComplexAnimation;->stopAnimation()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 3

    const-string/jumbo v1, "KeyguardAnimatedWallpaper"

    const-string/jumbo v2, "update New Animation wallpaper!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->cleanUp()V

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    goto :goto_0
.end method
