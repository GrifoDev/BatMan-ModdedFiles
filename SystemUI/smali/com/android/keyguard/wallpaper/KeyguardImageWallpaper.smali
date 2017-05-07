.class public Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.super Lcom/android/keyguard/wallpaper/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;,
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;,
        Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentAlpha:I

.field private mCurrentUserId:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mFileObserver:Landroid/os/FileObserver;

.field private mIsOperatorWallpaper:Z

.field private mIsSupportNavigationBar:Z

.field private mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

.field private mLastBottom:I

.field private mLastRight:I

.field private mNavigationBarHeight:I

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOldDrawMatrix:Landroid/graphics/Matrix;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field protected mReloadingBitmap:Z

.field private mSelectedUser:Landroid/os/UserHandle;

.field protected mSettingsChangedWhileReloadingBitmap:Z

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mShouldEnableScreenRotation:Z

.field private mUpdateWallpaperSequence:I

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;I)I
    .locals 0

    iput p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setWhiteBgSettings(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V
    .locals 3

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;-><init>(Landroid/content/Context;Landroid/app/IWallpaperManager;)V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    const/16 v0, 0xff

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iput v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsOperatorWallpaper:Z

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mReloadingBitmap:Z

    iput-boolean v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSettingsChangedWhileReloadingBitmap:Z

    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "wallpaper"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->isNavigationBarExist(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsSupportNavigationBar:Z

    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNavigationBarHeight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mNavigationBarHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsSupportNavigationBar:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050018

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mNavigationBarHeight:I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 11

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v8}, Landroid/graphics/Bitmap;->setDensity(I)V

    new-instance v5, Landroid/view/DisplayInfo;

    invoke-direct {v5}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDisplay:Landroid/view/Display;

    invoke-virtual {v8, v5}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    iget v2, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    iget v4, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, v5, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const-string/jumbo v8, "KeyguardImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "checkDeviceDensity deviceHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " deviceWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " deviceRotation="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bitmapWidth="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " bitmapHeight="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x1

    if-eq v3, v8, :cond_0

    const/4 v8, 0x3

    if-ne v3, v8, :cond_1

    :cond_0
    iget v2, v5, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v4, v5, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_1
    const/4 v7, 0x0

    if-ge v4, v1, :cond_2

    if-ge v2, v0, :cond_2

    int-to-float v8, v4

    int-to-float v9, v1

    div-float/2addr v8, v9

    int-to-float v9, v2

    int-to-float v10, v0

    div-float/2addr v9, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->max(FF)F

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string/jumbo v8, "KeyguardImageWallpaper"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resize scale down.:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object v6

    :cond_2
    return-object p1
.end method

.method private checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z
    .locals 22

    const/16 v19, 0x3

    move/from16 v0, v19

    new-array v9, v0, [Z

    fill-array-data v9, :array_0

    if-nez p1, :cond_0

    return-object v9

    :cond_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x3

    :try_start_0
    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v6, p2

    move/from16 v0, v16

    move/from16 v1, p2

    if-le v0, v1, :cond_2

    move/from16 v0, p2

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    :goto_0
    if-gtz v12, :cond_1

    const/4 v12, 0x1

    :cond_1
    const/16 v17, 0x0

    :goto_1
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    const/16 v18, 0x0

    :goto_2
    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v12

    goto :goto_2

    :cond_2
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_0

    :cond_3
    add-int v17, v17, v12

    goto :goto_1

    :cond_4
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_STATUS_BAR sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x3e99999a    # 0.3f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_5

    const v19, 0x3f6147ae    # 0.88f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_5

    const/16 v19, 0x1

    const/16 v20, 0x0

    aput-boolean v19, v9, v20
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_5
    :goto_3
    if-eqz p3, :cond_b

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x3

    :try_start_1
    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    move/from16 v7, p2

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsSupportNavigationBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mNavigationBarHeight:I

    move/from16 v19, v0

    sub-int v6, v6, v19

    :cond_6
    sub-int v19, v6, p2

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_8

    sub-int v19, v6, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    :goto_4
    if-gtz v12, :cond_7

    const/4 v12, 0x1

    :cond_7
    const/16 v17, 0x0

    :goto_5
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_a

    move/from16 v18, p2

    :goto_6
    move/from16 v0, v18

    if-ge v0, v6, :cond_9

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v12

    goto :goto_6

    :cond_8
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_4

    :cond_9
    add-int v17, v17, v12

    goto :goto_5

    :cond_a
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_BODY sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x3e99999a    # 0.3f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_b

    const v19, 0x3f6147ae    # 0.88f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_b

    const/16 v19, 0x1

    const/16 v20, 0x1

    aput-boolean v19, v9, v20
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_b
    :goto_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsSupportNavigationBar:Z

    move/from16 v19, v0

    if-eqz v19, :cond_10

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v19, 0x3

    :try_start_2
    move/from16 v0, v19

    new-array v8, v0, [F

    const/4 v10, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mNavigationBarHeight:I

    move/from16 v19, v0

    sub-int v7, v6, v19

    sub-int v19, v6, v7

    move/from16 v0, v16

    move/from16 v1, v19

    if-le v0, v1, :cond_d

    sub-int v19, v6, v7

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    :goto_8
    if-gtz v12, :cond_c

    const/4 v12, 0x1

    :cond_c
    const/16 v17, 0x0

    :goto_9
    move/from16 v0, v17

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    move/from16 v18, v7

    :goto_a
    move/from16 v0, v18

    if-ge v0, v6, :cond_e

    move-object/from16 v0, p1

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v8}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/16 v19, 0x1

    aget v19, v8, v19

    add-float v13, v13, v19

    const/16 v19, 0x2

    aget v19, v8, v19

    add-float v14, v14, v19

    add-int/lit8 v10, v10, 0x1

    add-int v18, v18, v12

    goto :goto_a

    :cond_d
    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x42c80000    # 100.0f

    div-float v19, v19, v20

    move/from16 v0, v19

    float-to-int v12, v0

    goto :goto_8

    :cond_e
    add-int v17, v17, v12

    goto :goto_9

    :cond_f
    int-to-float v0, v10

    move/from16 v19, v0

    div-float v11, v13, v19

    int-to-float v0, v10

    move/from16 v19, v0

    div-float v15, v14, v19

    const-string/jumbo v19, "KeyguardImageWallpaper"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "INDEX_WHITE_BG_KEYGUARD_NAVIGATION_BAR sat="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, ", val="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v19, 0x3e99999a    # 0.3f

    cmpg-float v19, v11, v19

    if-gez v19, :cond_10

    const v19, 0x3f6147ae    # 0.88f

    cmpl-float v19, v15, v19

    if-ltz v19, :cond_10

    const/16 v19, 0x1

    const/16 v20, 0x2

    aput-boolean v19, v9, v20
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_10
    :goto_b
    return-object v9

    :catch_0
    move-exception v5

    goto :goto_b

    :catch_1
    move-exception v5

    goto/16 :goto_7

    :catch_2
    move-exception v5

    goto/16 :goto_3

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 13

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v9

    if-eqz v9, :cond_1

    :cond_0
    const/4 v9, 0x0

    return-object v9

    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    div-int/lit8 v9, v8, 0x2

    int-to-float v0, v9

    div-int/lit8 v9, v3, 0x2

    int-to-float v1, v9

    const/4 v7, 0x0

    const/4 v2, 0x0

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    mul-int/2addr v9, v8

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    mul-int/2addr v10, v3

    if-le v9, v10, :cond_4

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    int-to-float v10, v3

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    :goto_0
    iput v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mMetricsHeight="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " mMetricsWidth="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v7, v9, v4

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    int-to-float v9, v9

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    div-float v2, v9, v4

    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v7, v9

    sub-float v5, v0, v9

    const/4 v9, 0x0

    cmpg-float v9, v5, v9

    if-gez v9, :cond_2

    const/4 v5, 0x0

    :cond_2
    const/high16 v9, 0x40000000    # 2.0f

    div-float v9, v2, v9

    sub-float v6, v1, v9

    const/4 v9, 0x0

    cmpg-float v9, v6, v9

    if-gez v9, :cond_3

    const/4 v6, 0x0

    :cond_3
    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "widthOrigin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "heightOrigin = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "scale = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCroppedScale:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "centerX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "centerY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startX = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "startY = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "width = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "KeyguardImageWallpaper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "height = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-nez v9, :cond_5

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v8, v9, :cond_5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    if-ne v3, v9, :cond_5

    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "It doesn\'t need to crop bitmap"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_4
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    int-to-float v9, v9

    int-to-float v10, v8

    div-float/2addr v9, v10

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float v4, v9, v10

    goto/16 :goto_0

    :cond_5
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_7

    :cond_6
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Math.round(width) < 1 || Math.round(height) < 1 || mMatricsWidth < 1 || mMatricsHeight < 1"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_7
    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsWidth:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    iget v9, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mMetricsHeight:I

    const/4 v10, 0x1

    if-lt v9, v10, :cond_6

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-gt v9, v8, :cond_8

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    add-int/2addr v9, v10

    if-le v9, v3, :cond_9

    :cond_8
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Calculated crop size error"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v9, 0x0

    return-object v9

    :cond_9
    const-string/jumbo v9, "KeyguardImageWallpaper"

    const-string/jumbo v10, "Cropping..."

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v12

    invoke-static {p1, v9, v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v9

    return-object v9
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    invoke-static {v4}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(I)Ljava/io/File;

    move-result-object v1

    invoke-static {v4, v3}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(ILandroid/app/WallpaperManager$SubUserWallpaperChecker;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private init()Z
    .locals 9

    const/4 v8, -0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v5, 0x0

    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "init()"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mCache == null || mCache.isRecycled()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-ne v3, v4, :cond_2

    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput v8, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    return v5

    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getWidth()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingLeft:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingRight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingTop:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mPaddingBottom:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    if-nez v3, :cond_4

    :cond_3
    const-string/jumbo v3, "KeyguardImageWallpaper"

    const-string/jumbo v4, "mViewWidth == 0 || mViewHeight == 0"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    mul-int/2addr v4, v5

    if-le v3, v4, :cond_5

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    :goto_0
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v0, v3, v6

    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    int-to-float v4, v4

    mul-float/2addr v4, v2

    sub-float/2addr v3, v4

    mul-float v1, v3, v6

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    iput v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    iput v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginScale:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v4, v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBitmapWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mBitmapHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mViewWidth = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mViewHeight = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "scale = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dx = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "KeyguardImageWallpaper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "dy = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->invalidate()V

    const/4 v3, 0x1

    return v3

    :cond_5
    iget v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    mul-float v2, v3, v7

    goto/16 :goto_0
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v1, v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, p2

    float-to-int v0, v2

    const/4 v2, 0x1

    invoke-static {p1, v1, v0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2
.end method

.method private setMDMFileObserver(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "observing path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_1
    new-instance v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$3;

    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$3;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method private setWhiteBgSettings(Landroid/graphics/Bitmap;)V
    .locals 14

    const/4 v13, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x3

    new-array v2, v10, [Z

    fill-array-data v2, :array_0

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v4

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v5

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardNavigationBar()Z

    move-result v3

    iget v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    int-to-float v10, v10

    const/high16 v11, 0x3f800000    # 1.0f

    mul-float/2addr v10, v11

    iget v11, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCroppedScale:F

    div-float/2addr v10, v11

    float-to-int v0, v10

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v6

    sget-boolean v10, Lcom/android/keyguard/KeyguardRune;->SUPPORT_WHITE_WALLPAPER_AS_DEFAULT:Z

    if-eqz v10, :cond_5

    iget-boolean v7, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsOperatorWallpaper:Z

    :goto_0
    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "wallpaperTransparent="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v6, v9, :cond_0

    if-eqz v7, :cond_1

    :cond_0
    if-ne v6, v13, :cond_6

    move v1, v8

    :goto_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->checkWhiteLockscreenWallpaper(Landroid/graphics/Bitmap;IZ)[Z

    move-result-object v2

    :cond_1
    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oldValStatusBar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", newValStatusBar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-boolean v12, v2, v8

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oldValWallpaper="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", newValWallpaper="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-boolean v12, v2, v9

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v10, "KeyguardImageWallpaper"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oldValNavigationBar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", newValNavigationBar="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-boolean v12, v2, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-boolean v10, v2, v8

    if-eq v4, v10, :cond_2

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v11

    aget-boolean v10, v2, v8

    if-eqz v10, :cond_7

    move v10, v9

    :goto_2
    invoke-virtual {v11, v10}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardStatusBar(I)V

    :cond_2
    aget-boolean v10, v2, v9

    if-eq v5, v10, :cond_3

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v11

    aget-boolean v10, v2, v9

    if-eqz v10, :cond_8

    move v10, v9

    :goto_3
    invoke-virtual {v11, v10}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardWallpaper(I)V

    :cond_3
    iget-boolean v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsSupportNavigationBar:Z

    if-eqz v10, :cond_4

    aget-boolean v10, v2, v13

    if-eq v3, v10, :cond_4

    iget-object v10, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v10

    aget-boolean v11, v2, v13

    if-eqz v11, :cond_9

    :goto_4
    invoke-virtual {v10, v9}, Lcom/android/keyguard/util/SettingsHelper;->setWhiteKeyguardNavigationBar(I)V

    :cond_4
    return-void

    :cond_5
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_6
    move v1, v9

    goto/16 :goto_1

    :cond_7
    move v10, v8

    goto :goto_2

    :cond_8
    move v10, v8

    goto :goto_3

    :cond_9
    move v9, v8

    goto :goto_4

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private updateVignettingEffect(Landroid/graphics/Bitmap;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-direct {v3, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V

    iput-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v1

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    if-eqz v3, :cond_2

    if-eqz p1, :cond_2

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardStatusBar()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    move v0, v2

    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p1, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->applyBlendedFilter(Landroid/graphics/Bitmap;Landroid/view/View;)V

    :goto_2
    return-void

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mKeyguardVignetting:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;

    invoke-virtual {v2, p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$KeyguardEffectViewVignetting;->resetBlendedFilter(Landroid/view/View;)V

    goto :goto_2
.end method

.method private updateWallpaper()V
    .locals 5

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() START"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSelectedUser:Landroid/os/UserHandle;

    new-instance v2, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;-><init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;ILandroid/os/UserHandle;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-virtual {v2, v3, v4}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$2;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    const-string/jumbo v2, "KeyguardImageWallpaper"

    const-string/jumbo v3, "updateWallpaper() END"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->cleanUp()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public loadBitmap(ILandroid/os/UserHandle;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    .locals 14

    const/4 v5, 0x0

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/keyguard/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v12

    if-eqz v12, :cond_3

    const-string/jumbo v11, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v11}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setMDMFileObserver(Ljava/lang/String;)V

    if-eqz v6, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v12

    if-eqz v12, :cond_1

    :try_start_0
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-direct {v10, v12, v11}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    if-eqz v10, :cond_0

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    if-eqz v12, :cond_0

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    if-eqz v12, :cond_0

    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "load MDM wallpaper!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v9}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    return-object v12

    :catch_0
    move-exception v3

    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "Can\'t load MDM wallpaper!"

    invoke-static {v12, v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "file problem!"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p2, :cond_4

    :try_start_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    :goto_1
    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v7}, Landroid/app/WallpaperManager;->getWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsOperatorWallpaper:Z

    if-eqz v5, :cond_5

    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v12

    const/4 v13, 0x0

    invoke-static {v12, v13, v8}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v9

    :goto_2
    iget-boolean v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    if-nez v12, :cond_2

    invoke-direct {p0, v9}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->cropBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v9}, Landroid/graphics/Bitmap;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    :cond_2
    :goto_3
    if-eqz v9, :cond_8

    invoke-direct {p0, v9}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->setWhiteBgSettings(Landroid/graphics/Bitmap;)V

    invoke-static {v9}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;)Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :cond_3
    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v12, :cond_1

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v12}, Landroid/os/FileObserver;->stopWatching()V

    const/4 v12, 0x0

    iput-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    goto :goto_0

    :cond_4
    move v7, p1

    goto :goto_1

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v9

    if-nez v9, :cond_6

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v13, 0x2

    invoke-static {v12, v13}, Landroid/app/WallpaperManager;->getDefaultWallpaperID(Landroid/content/Context;I)I

    move-result v2

    iget-object v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    goto :goto_2

    :cond_6
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mIsOperatorWallpaper:Z
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v4

    :try_start_3
    const-string/jumbo v12, "KeyguardImageWallpaper"

    const-string/jumbo v13, "Can\'t decode file"

    invoke-static {v12, v13, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :cond_7
    if-eqz v9, :cond_2

    :try_start_4
    invoke-virtual {v9}, Landroid/graphics/Bitmap;->recycle()V

    move-object v9, v1

    goto :goto_3

    :cond_8
    invoke-static {}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;->fail()Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$LoaderResult;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v12

    :catchall_0
    move-exception v12

    invoke-static {v5}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v12
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string/jumbo v3, "lockscreen_wallpaper_transparent"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mFileObserver:Landroid/os/FileObserver;

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mCache == null || mCache.isRecycled()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v0, :cond_3

    :cond_2
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "mBitmapWidth == 0 || mBitmapHeight == 0"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_6
    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const/16 v1, 0xff

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mOldDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    add-int/lit8 v0, v0, 0xc

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentAlpha:I

    const-wide/16 v0, 0x32

    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->postInvalidateDelayed(J)V

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-super/range {p0 .. p5}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->onLayout(ZIIII)V

    if-eqz p1, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mStatusBarHeight:I

    if-eq v0, p5, :cond_1

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    if-ne v0, p4, :cond_0

    iget v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    if-eq v0, p5, :cond_1

    :cond_0
    const-string/jumbo v0, "KeyguardImageWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLayout called init() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->init()Z

    iput p4, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastRight:I

    iput p5, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mLastBottom:I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateVignettingEffect(Landroid/graphics/Bitmap;)V

    :cond_1
    return-void
.end method

.method public update()V
    .locals 4

    invoke-super {p0}, Lcom/android/keyguard/wallpaper/SystemUIWallpaper;->update()V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    const-string/jumbo v1, "KeyguardImageWallpaper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update userId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mCurrentUserId:I

    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->updateWallpaper()V

    return-void
.end method
