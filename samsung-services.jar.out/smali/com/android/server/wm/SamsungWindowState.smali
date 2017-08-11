.class public Lcom/android/server/wm/SamsungWindowState;
.super Ljava/lang/Object;
.source "SamsungWindowState.java"

# interfaces
.implements Lcom/samsung/android/view/IWindowStateBridge;


# static fields
.field private static mNonImmersiveModePackages:[Ljava/lang/String;


# instance fields
.field mAspectRatio:F

.field mAspectRatioFrame:Landroid/graphics/Rect;

.field mForceShowBackgroundSurface:Z

.field mHideBySViewCover:Z

.field mIsConventionalMode:Z

.field mLastBlurRadius:I

.field mLastSat:I

.field mNavbarIsAlwaysEnabled:Z

.field mNonImmersive:Z

.field mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

.field mReducedScreenSpec:Landroid/view/MagnificationSpec;

.field mReducedSideTouchArea:I

.field mSystemUiVisibility:I

.field private mWin:Lcom/android/server/wm/WindowState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.tencent.mm"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.tencent.mobileqq"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.baidu.searchbox"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.baidu.searchbox_samsung"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.pingan.lifeinsurance"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "tv.xiaoka.live"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersiveModePackages:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    iput-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    return-void
.end method

.method private getLegacyBlurRadius()I
    .locals 4

    const/high16 v0, 0x43b00000    # 352.0f

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    int-to-float v2, v2

    const/high16 v3, 0x43b00000    # 352.0f

    mul-float/2addr v2, v3

    const/high16 v3, 0x44200000    # 640.0f

    div-float v0, v2, v3

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v3, 0x3ecccccd    # 0.4f

    div-float/2addr v2, v3

    mul-float/2addr v2, v0

    float-to-int v2, v2

    return v2
.end method

.method private getLegacySaturation()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    const v1, 0x3ecccccd    # 0.4f

    div-float/2addr v0, v1

    const/high16 v1, -0x3e600000    # -20.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private isNonImmersiveExceptionPackage(Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x0

    sget-object v3, Lcom/android/server/wm/SamsungWindowState;->mNonImmersiveModePackages:[Ljava/lang/String;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isNonImmersiveMode(Lcom/android/server/wm/WindowState;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v2, 0x0

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, v6, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/wm/SamsungWindowState;->isNonImmersiveExceptionPackage(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v9

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    iget-object v7, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v7, v7, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    const/16 v8, 0x80

    invoke-interface {v6, v3, v8, v7}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v6, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.samsung.android.non_immersive"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v6, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    if-le v6, v9, :cond_1

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    new-instance v7, Landroid/content/ComponentName;

    const-string/jumbo v8, "/"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aget-object v8, v8, v9

    invoke-direct {v7, v3, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v8, v8, Lcom/android/server/wm/Session;->mUid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x80

    invoke-interface {v6, v7, v9, v8}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.samsung.android.non_immersive"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    :cond_1
    :goto_0
    return v2

    :catch_0
    move-exception v4

    goto :goto_0
.end method


# virtual methods
.method public applyAspectRatio(Landroid/graphics/Rect;)Z
    .locals 12

    const/4 v11, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    const/4 v4, 0x0

    if-ge v6, v0, :cond_3

    int-to-float v8, v0

    int-to-float v9, v6

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v2, v8

    sub-int v8, v0, v2

    div-int/lit8 v8, v8, 0x2

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    add-int v9, v4, v2

    invoke-virtual {v8, v11, v4, v6, v9}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v8

    const/16 v9, 0x7d0

    if-ge v8, v9, :cond_1

    const/4 v1, 0x0

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {v8}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_4

    iget-object v8, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    :goto_2
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v8, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v8}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    invoke-interface {v8, v9, v10, v7, v5}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->applyAspectRatioFrame(Landroid/graphics/Rect;FII)V

    :cond_1
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-virtual {p1, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    const/4 v8, 0x1

    return v8

    :cond_2
    return v11

    :cond_3
    int-to-float v8, v6

    int-to-float v9, v0

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    mul-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->min(FF)F

    move-result v8

    float-to-int v3, v8

    sub-int v8, v6, v3

    div-int/lit8 v8, v8, 0x2

    invoke-static {v11, v8}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    add-int v9, v4, v3

    invoke-virtual {v8, v4, v11, v9, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v7, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_1

    :cond_5
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result v5

    goto :goto_2
.end method

.method public applyBlurEffect()V
    .locals 13

    const/4 v12, -0x2

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v8, v8, 0x40

    if-eqz v8, :cond_0

    const/4 v5, 0x1

    :goto_0
    if-eqz v5, :cond_1

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacyBlurRadius()I

    move-result v0

    :goto_1
    if-eqz v5, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/SamsungWindowState;->getLegacySaturation()I

    move-result v6

    :goto_2
    iget v8, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    if-ne v8, v0, :cond_3

    iget v8, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    if-ne v8, v6, :cond_3

    return-void

    :cond_0
    move v5, v7

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v8, :cond_4

    return-void

    :cond_4
    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v8, v8, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v8, v8, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-wide v2, v8, Landroid/view/WindowManager$LayoutParams;->dimDuration:J

    :goto_3
    invoke-static {}, Landroid/view/SurfaceEffects;->newBuilder()Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$PixEffectType;->BLUR:Landroid/view/SurfaceEffects$PixEffectType;

    invoke-virtual {v8, v9}, Landroid/view/SurfaceEffects$Effect$Builder;->setPixelEffectType(Landroid/view/SurfaceEffects$PixEffectType;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->height:I

    if-eq v8, v12, :cond_5

    iget-object v8, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v8}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v8

    iget v8, v8, Landroid/view/WindowManager$LayoutParams;->width:I

    if-ne v8, v12, :cond_6

    :cond_5
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->makeFullscreen()Landroid/view/SurfaceEffects$Effect$Builder;

    :cond_6
    if-lez v0, :cond_8

    sget-object v8, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_STAY_END:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v10, v2

    int-to-float v11, v0

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    int-to-float v10, v6

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_IN:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    :goto_4
    invoke-virtual {v1}, Landroid/view/SurfaceEffects$Effect$Builder;->build()Landroid/view/SurfaceEffects$Effect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/SurfaceEffects$Effect;->getBytes()[I

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v7, v7, Lcom/android/server/wm/WindowState;->mWinAnimator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mSurfaceController:Lcom/android/server/wm/WindowSurfaceController;

    invoke-virtual {v7, v4}, Lcom/android/server/wm/WindowSurfaceController;->startSurfaceAnimation([I)V

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    iput v6, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    return-void

    :cond_7
    const-wide/16 v2, 0xc8

    goto :goto_3

    :cond_8
    sget-object v8, Landroid/view/SurfaceEffects$AnimationMode;->ONCE_DESTROY:Landroid/view/SurfaceEffects$AnimationMode;

    invoke-virtual {v1, v8}, Landroid/view/SurfaceEffects$Effect$Builder;->setAnimationMode(Landroid/view/SurfaceEffects$AnimationMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_RADIUS:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v10, v2

    int-to-float v11, v0

    sget-object v12, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v8

    sget-object v9, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    iget v10, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    int-to-float v10, v10

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->HOLD:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v8, v9, v7, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    move-result-object v7

    sget-object v8, Landroid/view/SurfaceEffects$AnimParam;->BLUR_SATURATION:Landroid/view/SurfaceEffects$AnimParam;

    long-to-int v9, v2

    const/4 v10, 0x0

    sget-object v11, Landroid/view/SurfaceEffects$InterpMode;->SMOOTH_OUT:Landroid/view/SurfaceEffects$InterpMode;

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/SurfaceEffects$Effect$Builder;->addPixAnimation(Landroid/view/SurfaceEffects$AnimParam;IFLandroid/view/SurfaceEffects$InterpMode;)Landroid/view/SurfaceEffects$Effect$Builder;

    goto :goto_4
.end method

.method public applyNavbarAlwaysEnabled(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mNavbarIsAlwaysEnabled:Z

    if-eqz v0, :cond_0

    const v0, 0x7ffffdfd

    and-int/2addr p1, v0

    :cond_0
    return p1
.end method

.method public configureReducedScreenSpec()V
    .locals 7

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    if-nez v4, :cond_0

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v1

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v4, v4, Lcom/android/server/wm/WindowState;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mBaseDisplayRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v4, v1

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetxPct:F

    mul-float v2, v4, v5

    int-to-float v4, v0

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    sub-float v5, v6, v5

    mul-float/2addr v4, v5

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->offsetyPct:F

    mul-float v3, v4, v5

    iget-object v4, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    iget-object v5, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget v5, v5, Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;->scale:F

    invoke-virtual {v4, v5, v2, v3}, Landroid/view/MagnificationSpec;->initialize(FFF)V

    :cond_1
    return-void
.end method

.method public disableHideSViewCoverOnce(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iput-boolean p1, v0, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "--- Samsung WindowState ---"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mHideBySvc="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_0
    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "isAspectRatioWindow="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mIsConventionalMode="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string/jumbo v0, " mAspectRatio="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(F)V

    const-string/jumbo v0, " mAspectRatioFrame="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string/jumbo v0, " mForceShowBackgroundSurface="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Z)V

    :cond_1
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSystemUiVisibility="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "InputWindowHandle="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mInputWindowHandle:Lcom/android/server/input/InputWindowHandle;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_2
    const-string/jumbo v0, ""

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getAspectRatio()F
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    return v0
.end method

.method public getAspectRatioFrame()Landroid/graphics/Rect;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/SamsungWindowState;->isAspectRatioWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatioFrame:Landroid/graphics/Rect;

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    return-object v0
.end method

.method public getCoverMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x833

    if-ne v0, v1, :cond_0

    const/16 v0, 0xa

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->coverMode:I

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayId()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getDisplayId()I

    move-result v0

    return v0
.end method

.method public getReducedScreenScaleSpecLocked()Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getReducedSideTouchArea()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedSideTouchArea:I

    return v0
.end method

.method public getSystemUiVisibility()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    return v0
.end method

.method public hasFixedOrientation()Z
    .locals 3

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v2, v2, Lcom/android/server/wm/AppWindowToken;->allAppWindows:Lcom/android/server/wm/WindowList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getBridge()Lcom/samsung/android/view/IWindowStateBridge;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/view/IWindowStateBridge;->isFixedOrientation()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public hasMoved()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mHasSurface:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mContentChanged:Z

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mMovedByResize:Z

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v2, v2, Lcom/android/server/wm/WindowState;->mAnimatingExit:Z

    if-eqz v2, :cond_3

    :cond_1
    move v0, v1

    :cond_2
    :goto_0
    return v0

    :cond_3
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mFrame:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v3, v3, Lcom/android/server/wm/WindowState;->mLastFrame:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-eq v2, v3, :cond_1

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttachedWindow:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->hasMoved()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    goto :goto_0
.end method

.method public initPackageConfigurations()V
    .locals 4

    invoke-static {}, Lcom/android/server/SamsungCoreServices;->getPackageConfigurationController()Lcom/android/server/PackageConfigurationController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getReducedAppScreenParams(I)Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedScreenParams:Lcom/android/server/PackageConfigurationController$ReducedAppScreenParams;

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getReducedSideTouchArea(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mReducedSideTouchArea:I

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isNavbarIsAlwaysEnabled(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mNavbarIsAlwaysEnabled:Z

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v2

    const/16 v3, 0x7db

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v2

    const/16 v3, 0x7dd

    if-ne v2, v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(Ljava/lang/String;Z)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isConventionalMode(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    iget-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v2, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v2}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->getCurrentAspect()F

    move-result v0

    iget v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    cmpl-float v2, v2, v0

    if-ltz v2, :cond_5

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->isDefaultDisplay()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-direct {p0, v2}, Lcom/android/server/wm/SamsungWindowState;->isNonImmersiveMode(Lcom/android/server/wm/WindowState;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    :cond_3
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v2, v2, Lcom/android/server/wm/Session;->mPid:I

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->getAspectRatio(I)F

    move-result v2

    iput v2, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v2, v2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, v2, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/android/server/PackageConfigurationController;->isBackgroundSurfaceNeeded(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    goto :goto_1
.end method

.method public isAspectRatioWindow()Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v0, v0, Lcom/android/server/wm/WindowState;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mPolicy:Landroid/view/WindowManagerPolicy;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->getSamsungPolicy()Lcom/android/server/policy/SamsungWindowManagerPolicy;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/policy/SamsungWindowManagerPolicy;->isMobileKeyboardEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public isBackgroundSurfaceNeeded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mForceShowBackgroundSurface:Z

    return v0
.end method

.method public isConventionalMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mIsConventionalMode:Z

    return v0
.end method

.method public isDexCompatMode()Z
    .locals 2

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWorkspace()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mIsDexCompatEnabled:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFixedOrientation()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v1, v1, 0xc

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isHideBySViewCover()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return v0
.end method

.method public isHomeTask()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isHomeTask()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNonImmersiveWindow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wm/SamsungWindowState;->mNonImmersive:Z

    return v0
.end method

.method public isOnScreen()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isOnScreen()Z

    move-result v0

    return v0
.end method

.method public resetEffects()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastBlurRadius:I

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mLastSat:I

    return-void
.end method

.method public setHideBySViewCover(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/SamsungWindowState;->mHideBySViewCover:Z

    return-void
.end method

.method public setOwner(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "SamsungWindowState already has a WindowState."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    instance-of v0, p1, Lcom/android/server/wm/WindowState;

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "owner is not a WindowState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    check-cast p1, Lcom/android/server/wm/WindowState;

    iput-object p1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    return-void
.end method

.method public setSystemUiVisibility(I)V
    .locals 2

    iget v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    iget v1, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    and-int/2addr v0, v1

    and-int/lit8 v0, v0, 0x7

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/SamsungWindowState;->mSystemUiVisibility:I

    return-void
.end method

.method public willBeHideSViewCoverOnce()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->willBeHideSViewCoverOnce:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/SamsungWindowState;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mToken:Lcom/android/server/wm/WindowToken;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowToken;->disableHideSViewCoverOnce:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
