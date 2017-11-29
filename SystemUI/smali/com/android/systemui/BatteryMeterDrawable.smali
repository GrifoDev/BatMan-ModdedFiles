.class public Lcom/android/systemui/BatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterDrawable$1;,
        Lcom/android/systemui/BatteryMeterDrawable$2;,
        Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimOffset:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryFrameDarkColor:I

.field private mBatteryFrameLightColor:I

.field private mBatteryFramePaint:Landroid/graphics/Paint;

.field private mBatteryHealth:I

.field private mBatteryLevelBackgroundDarkColor:I

.field private mBatteryLevelBackgroundLightColor:I

.field private mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

.field private mBatteryLevelColor:I

.field private mBatteryLevelPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltDarkColor:I

.field private mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

.field private mBatteryLightningBoltLightColor:I

.field private mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

.field private mBatteryOnline:I

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStatus:I

.field private mBlinkingNeeded:Z

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private mBoltFrameHeight:F

.field private mBoltFrameTop:F

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private final mClipPath:Landroid/graphics/Path;

.field private mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeBoltColor:I

.field private mDarkModeFillColor:I

.field private mDarkModePowerSupplyingColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidString:Ljava/lang/String;

.field private final mInvalidTextPaint:Landroid/graphics/Paint;

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mIsDesktopMode:Z

.field private mIsShowBatteryIcon:Z

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeBoltColor:I

.field private mLightModeFillColor:I

.field private mLightModePowerSupplyingColor:I

.field private mListening:Z

.field private mOldDarkIntensity:F

.field private mPlugType:I

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPostInvalidateHandler:Landroid/os/Handler;

.field private mPowerSaveEnabled:Z

.field private mPowerSupply:Z

.field private mPowerSupplyFrameHeight:F

.field private mPowerSupplyFrameTop:F

.field private final mPowerSupplyingFrame:Landroid/graphics/RectF;

.field private final mPowerSupplyingPaint:Landroid/graphics/Paint;

.field private final mPowerSupplyingPath:Landroid/graphics/Path;

.field private final mPowerSupplyingPoints:[F

.field private final mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/BatteryMeterDrawable;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/BatteryMeterDrawable;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/systemui/BatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/systemui/BatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v6, -0x1

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const-string/jumbo v6, "X"

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    const/4 v6, 0x1

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    const/4 v6, 0x0

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$1;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$1;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    new-instance v6, Lcom/android/systemui/BatteryMeterDrawable$2;

    invoke-direct {v6, p0}, Lcom/android/systemui/BatteryMeterDrawable$2;-><init>(Lcom/android/systemui/BatteryMeterDrawable;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f110027

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    const v6, 0x7f110028

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    const v6, 0x7f0f0510

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0c0072

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000d

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000e

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e000f

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    const-string/jumbo v6, "sans-serif-condensed"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    const v7, -0x17cbf7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    const-string/jumbo v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v6, 0x7f0b0097

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b0098

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    new-instance v6, Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlusPoints:[F

    const v6, 0x7f0b00ea

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v6, 0x7f0b00eb

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    const v6, 0x7f0b00ed

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v6, 0x7f0b00ee

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    const v6, 0x7f0b009a

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v6, 0x7f0b009b

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v6, 0x7f0b0098

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    const v6, 0x7f0b0099

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    const v7, 0x7f0b009c

    invoke-virtual {p1, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v5}, Lcom/android/systemui/BatteryMeterDrawable;->loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const v6, 0x7f0b009c

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    const v6, 0x7f0b009d

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_SEC_BATTERY_GUI:Z

    if-eqz v6, :cond_4

    iget-boolean v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0667

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0668

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    const/4 v10, 0x0

    const-string v11, "battery_color_main"

    invoke-static {v11, v10}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v11

    if-nez v11, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->update_battery_colors()V

    :goto_0
    const v6, 0x7f0b0189

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    const v6, 0x7f0b0188

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameDarkColor:I

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    const v6, 0x7f0b018b

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    const v6, 0x7f0b018a

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    const v6, 0x7f0b018d

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    const v6, 0x7f0b018c

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    return-void

    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v0, :cond_0

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01f8

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d01f7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->update_battery_colors()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d034a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0349

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->update_battery_colors()V

    goto :goto_1
.end method

.method private getBackgroundColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBackgroundColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBackgroundColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private getColorForDarkIntensity(FII)I
    .locals 3

    invoke-static {}, Landroid/animation/ArgbEvaluator;->getInstance()Landroid/animation/ArgbEvaluator;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getColorForLevel(I)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    if-ge v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    aget v2, v3, v1

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-gt p1, v2, :cond_2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_SEC_BATTERY_GUI:Z

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    return v3

    :cond_0
    iget v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    return v3

    :cond_1
    return v0

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_3
    return v0
.end method

.method private getFillColor(F)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v0

    return v0
.end method

.method private static getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    const/4 v1, 0x0

    const/4 v4, 0x0

    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    const/high16 v2, -0x1000000

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setDither(Z)V

    const/high16 v2, 0x41200000    # 10.0f

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    sget-object v2, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v5, p5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/Matrix;

    invoke-direct {v7}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {p5, v7}, Landroid/graphics/LinearGradient;->getLocalMatrix(Landroid/graphics/Matrix;)Z

    int-to-float v2, p2

    div-float/2addr v2, v9

    int-to-float v3, p3

    div-float/2addr v3, v9

    invoke-virtual {v7, p4, v2, v3}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    invoke-virtual {p5, v7}, Landroid/graphics/LinearGradient;->setLocalMatrix(Landroid/graphics/Matrix;)V

    invoke-virtual {p1, v4, v4, p2, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    int-to-float v3, p2

    int-to-float v4, p3

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v8, v1, v6}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v8
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f110029

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f11002a

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private static loadPowerSupplyingPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v5, 0x7f11002b

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_1
    return-object v4
.end method

.method private postInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateChargingAnimLevel()I
    .locals 6

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v1, :cond_0

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/2addr v0, v1

    const/16 v1, 0x60

    if-lt v0, v1, :cond_1

    const/16 v0, 0x64

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1f4

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    add-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mAnimOffset:I

    goto :goto_1
.end method

.method private updateShowPercent()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "status_bar_show_battery_percent"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public disableShowPercent()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mShowPercent:Z

    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 62

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_3

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x7

    if-ne v7, v8, :cond_2

    :cond_0
    const/4 v7, 0x1

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    sget-object v7, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "battery icon blink..."

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    const-wide/16 v8, 0x3e8

    const/4 v10, 0x1

    invoke-virtual {v7, v10, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mIsShowBatteryIcon:Z

    if-nez v7, :cond_4

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/16 v8, 0x8

    if-eq v7, v8, :cond_0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    const/4 v8, 0x6

    if-eq v7, v8, :cond_0

    :cond_3
    const/4 v7, 0x0

    move-object/from16 v0, p0

    iput-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBlinkingNeeded:Z

    :cond_4
    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_SEC_BATTERY_GUI:Z

    if-eqz v7, :cond_13

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205fd

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    move-object/from16 v0, v33

    invoke-virtual {v0, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v33

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v45

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v43

    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v45

    move/from16 v1, v43

    invoke-static {v0, v1, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v42

    new-instance v28, Landroid/graphics/Canvas;

    move-object/from16 v0, v28

    move-object/from16 v1, v42

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v33

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    new-instance v44, Landroid/graphics/Rect;

    invoke-direct/range {v44 .. v44}, Landroid/graphics/Rect;-><init>()V

    div-int/lit8 v30, v45, 0x2

    div-int/lit8 v31, v43, 0x2

    move/from16 v58, v31

    move/from16 v23, v31

    move/from16 v36, v30

    move/from16 v56, v30

    move/from16 v35, v31

    :goto_0
    if-lez v35, :cond_5

    move-object/from16 v0, v42

    move/from16 v1, v30

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_9

    :cond_5
    move/from16 v35, v31

    :goto_1
    move/from16 v0, v35

    move/from16 v1, v43

    if-ge v0, v1, :cond_6

    move-object/from16 v0, v42

    move/from16 v1, v30

    move/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_a

    :cond_6
    move/from16 v35, v30

    :goto_2
    if-lez v35, :cond_7

    move-object/from16 v0, v42

    move/from16 v1, v35

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_b

    :cond_7
    move/from16 v35, v30

    :goto_3
    move/from16 v0, v35

    move/from16 v1, v45

    if-ge v0, v1, :cond_8

    add-int/lit8 v56, v56, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v35

    move/from16 v2, v31

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->getPixel(II)I

    move-result v7

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    const/16 v8, 0xff

    if-lt v7, v8, :cond_c

    :cond_8
    move-object/from16 v0, v44

    move/from16 v1, v36

    move/from16 v2, v58

    move/from16 v3, v56

    move/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    move/from16 v37, v0

    const/4 v7, -0x1

    move/from16 v0, v37

    if-ne v0, v7, :cond_d

    return-void

    :cond_9
    add-int/lit8 v58, v58, -0x1

    add-int/lit8 v35, v35, -0x1

    goto :goto_0

    :cond_a
    add-int/lit8 v23, v23, 0x1

    add-int/lit8 v35, v35, 0x1

    goto :goto_1

    :cond_b
    add-int/lit8 v36, v36, -0x1

    add-int/lit8 v35, v35, -0x1

    goto :goto_2

    :cond_c
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    :cond_d
    move/from16 v0, v37

    int-to-float v7, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v19, v7, v8

    const/16 v7, 0x60

    move/from16 v0, v37

    if-lt v0, v7, :cond_10

    const/high16 v19, 0x3f800000    # 1.0f

    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v7, :cond_11

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    :goto_5
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    mul-float v7, v7, v19

    float-to-int v0, v7

    move/from16 v39, v0

    new-instance v40, Landroid/graphics/Rect;

    invoke-direct/range {v40 .. v40}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v44

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v24, v7, v39

    move-object/from16 v0, v44

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v44

    iget v8, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v44

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, v40

    move/from16 v1, v24

    invoke-virtual {v0, v7, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v40

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v38, Landroid/graphics/Rect;

    invoke-direct/range {v38 .. v38}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, v44

    iget v7, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, v44

    iget v8, v0, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, v44

    iget v9, v0, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, v38

    move/from16 v1, v24

    invoke-virtual {v0, v7, v8, v9, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v38

    invoke-virtual {v0, v1, v7}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, v33

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v7, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_12

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    const/4 v8, 0x4

    if-eq v7, v8, :cond_12

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0205fe

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    const/4 v7, 0x4

    new-array v11, v7, [I

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x0

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x1

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x2

    aput v7, v11, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    const/4 v8, 0x3

    aput v7, v11, v8

    const/4 v7, 0x4

    new-array v12, v7, [F

    const/4 v7, 0x0

    const/4 v8, 0x0

    aput v7, v12, v8

    move/from16 v0, v39

    int-to-float v7, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x1

    aput v7, v12, v8

    move/from16 v0, v39

    int-to-float v7, v0

    invoke-virtual/range {v44 .. v44}, Landroid/graphics/Rect;->height()I

    move-result v8

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/4 v8, 0x2

    aput v7, v12, v8

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x3

    aput v7, v12, v8

    new-instance v6, Landroid/graphics/LinearGradient;

    const/4 v7, 0x0

    move-object/from16 v0, v44

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v8, v8

    const/4 v9, 0x0

    move-object/from16 v0, v44

    iget v10, v0, Landroid/graphics/Rect;->top:I

    int-to-float v10, v10

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v6 .. v13}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v16, v0

    const/16 v17, 0x0

    move-object/from16 v18, v6

    invoke-static/range {v13 .. v18}, Lcom/android/systemui/BatteryMeterDrawable;->getLinearGradientDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;IIFLandroid/graphics/LinearGradient;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v29

    if-eqz v29, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, v29

    invoke-virtual {v0, v9, v10, v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_f
    :goto_6
    return-void

    :cond_10
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v37

    if-gt v0, v7, :cond_e

    const/16 v19, 0x0

    goto/16 :goto_4

    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v7

    goto/16 :goto_5

    :cond_12
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v37

    if-gt v0, v7, :cond_f

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v60, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f    # 0.48f

    mul-float v61, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_6

    :cond_13
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f120024

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v57

    if-eqz v57, :cond_14

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateChargingAnimLevel()I

    move-result v37

    :goto_7
    const/4 v7, -0x1

    move/from16 v0, v37

    if-ne v0, v7, :cond_15

    return-void

    :cond_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    move/from16 v37, v0

    goto :goto_7

    :cond_15
    move/from16 v0, v37

    int-to-float v7, v0

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v32, v7, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    move/from16 v34, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    const v8, 0x3f27b961

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v59, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    sub-int v7, v7, v59

    div-int/lit8 v55, v7, 0x2

    move/from16 v0, v34

    int-to-float v7, v0

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v7, v8

    float-to-int v0, v7

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move/from16 v0, v59

    int-to-float v10, v0

    move/from16 v0, v34

    int-to-float v13, v0

    invoke-virtual {v7, v8, v9, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v55

    int-to-float v8, v0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/graphics/RectF;->offset(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move/from16 v0, v59

    int-to-float v9, v0

    const/high16 v10, 0x3e800000    # 0.25f

    mul-float/2addr v9, v10

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    int-to-float v9, v9

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    move/from16 v0, v59

    int-to-float v13, v0

    const/high16 v15, 0x3e800000    # 0.25f

    mul-float/2addr v13, v15

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    sub-float/2addr v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    move/from16 v0, v27

    int-to-float v15, v0

    add-float/2addr v13, v15

    invoke-virtual {v7, v8, v9, v10, v13}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    move/from16 v0, v27

    int-to-float v9, v0

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v7, :cond_17

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    :goto_8
    invoke-virtual {v8, v7}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v7, 0x60

    move/from16 v0, v37

    if-lt v0, v7, :cond_18

    const/high16 v32, 0x3f800000    # 1.0f

    :cond_16
    :goto_9
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v32, v7

    if-nez v7, :cond_19

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v0, v7, Landroid/graphics/RectF;->top:F

    move/from16 v41, v0

    :goto_a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_INVALID_CHARGING_STRING:Z

    if-eqz v7, :cond_1a

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v7, :cond_1a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    if-nez v7, :cond_1a

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v60, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f    # 0.48f

    mul-float v61, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :cond_17
    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-direct {v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForLevel(I)I

    move-result v7

    goto/16 :goto_8

    :cond_18
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v37

    if-gt v0, v7, :cond_16

    const/16 v32, 0x0

    goto/16 :goto_9

    :cond_19
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    const/high16 v9, 0x3f800000    # 1.0f

    sub-float v9, v9, v32

    mul-float/2addr v8, v9

    add-float v41, v7, v8

    goto/16 :goto_a

    :cond_1a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v7, :cond_1b

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    :cond_1b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    move/from16 v0, v41

    iput v0, v7, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v9, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v7, :cond_22

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupply:Z

    if-eqz v7, :cond_22

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40900000    # 4.5f

    div-float/2addr v8, v9

    add-float v52, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameTop:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v8, v9

    add-float v54, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40e00000    # 7.0f

    div-float/2addr v8, v9

    sub-float v53, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyFrameHeight:F

    const/high16 v9, 0x40a00000    # 5.0f

    div-float/2addr v8, v9

    sub-float v51, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v52

    if-nez v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v54

    if-eqz v7, :cond_1d

    :cond_1c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    move/from16 v0, v52

    move/from16 v1, v54

    move/from16 v2, v53

    move/from16 v3, v51

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const/4 v13, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v35, 0x2

    :goto_b
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    array-length v7, v7

    move/from16 v0, v35

    if-ge v0, v7, :cond_20

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    aget v9, v9, v35

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    add-int/lit8 v13, v35, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v35, v35, 0x2

    goto :goto_b

    :cond_1d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v53

    if-nez v7, :cond_1c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v51

    if-nez v7, :cond_1c

    :goto_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v7, v41

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    div-float v50, v7, v8

    const/4 v7, 0x0

    move/from16 v0, v50

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v50

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v50, v7

    if-gtz v7, :cond_21

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1e
    :goto_d
    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    const/16 v47, 0x0

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_f

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v7, :cond_1f

    :cond_1f
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCriticalLevel:I

    move/from16 v0, v37

    if-gt v0, v7, :cond_29

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v60, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f    # 0.48f

    mul-float v61, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6

    :cond_20
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPoints:[F

    const/4 v13, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    :cond_21
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_d

    :cond_22
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v7, :cond_28

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v7, :cond_23

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v7, :cond_28

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_28

    :cond_23
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    add-float v21, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameTop:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    const/high16 v9, 0x40c00000    # 6.0f

    div-float/2addr v8, v9

    add-float v26, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    sub-float v25, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrameHeight:F

    const/high16 v9, 0x41200000    # 10.0f

    div-float/2addr v8, v9

    sub-float v20, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpl-float v7, v7, v21

    if-nez v7, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    cmpl-float v7, v7, v26

    if-eqz v7, :cond_25

    :cond_24
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    move/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v25

    move/from16 v3, v20

    invoke-virtual {v7, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v13, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v35, 0x2

    :goto_e
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    array-length v7, v7

    move/from16 v0, v35

    if-ge v0, v7, :cond_26

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    aget v9, v9, v35

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v13, v35, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v35, v35, 0x2

    goto :goto_e

    :cond_25
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    cmpl-float v7, v7, v25

    if-nez v7, :cond_24

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    cmpl-float v7, v7, v20

    if-nez v7, :cond_24

    :goto_f
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    sub-float v7, v7, v41

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    div-float v22, v7, v8

    const/4 v7, 0x0

    move/from16 v0, v22

    invoke-static {v0, v7}, Ljava/lang/Math;->max(FF)F

    move-result v7

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v7, v8}, Ljava/lang/Math;->min(FF)F

    move-result v22

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v22, v7

    if-gtz v7, :cond_27

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_10
    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_INVALID_CHARGING_STRING:Z

    if-eqz v7, :cond_1e

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v7, :cond_1e

    sget-boolean v7, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v7, :cond_1e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1e

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v60, v7, v8

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v7, v8

    const v8, 0x3ef5c28f    # 0.48f

    mul-float v61, v7, v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidString:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move/from16 v1, v60

    move/from16 v2, v61

    invoke-virtual {v0, v7, v1, v2, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_d

    :cond_26
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v10, 0x0

    aget v9, v9, v10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v10}, Landroid/graphics/RectF;->width()F

    move-result v10

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPoints:[F

    const/4 v13, 0x1

    aget v10, v10, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    mul-float/2addr v10, v13

    add-float/2addr v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_f

    :cond_27
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v9, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto/16 :goto_10

    :cond_28
    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v7, :cond_1e

    goto/16 :goto_d

    :cond_29
    if-eqz v46, :cond_f

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/BatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v47

    move/from16 v2, v48

    move/from16 v3, v49

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_6
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZIIIIZ)V
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    if-ne v1, p1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    if-eq v1, p2, :cond_9

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz p3, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-eq p3, v1, :cond_1

    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Battery icon update - Charging"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    if-ne v1, p4, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    if-eq v1, p5, :cond_a

    :cond_2
    const/4 v0, 0x1

    :cond_3
    :goto_1
    iput p4, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryStatus:I

    iput p5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryHealth:I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-eqz v1, :cond_5

    if-nez v0, :cond_4

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    if-eq v1, p6, :cond_b

    const/4 v0, 0x1

    :cond_4
    :goto_2
    iput p6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryOnline:I

    :cond_5
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v1, :cond_7

    if-nez v0, :cond_6

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    if-eq v1, p7, :cond_c

    const/4 v0, 0x1

    :cond_6
    :goto_3
    iput p7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPlugType:I

    :cond_7
    sget-object v1, Lcom/android/systemui/BatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isSomethingChanged - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPostInvalidateHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_8
    return-void

    :cond_9
    iget-boolean v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mCharging:Z

    if-ne v1, p3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    goto :goto_2

    :cond_c
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public scaleBatteryMeterDrawable()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0667

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0668

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    :goto_0
    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/android/systemui/BatteryMeterDrawable;->setBounds(IIII)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01f8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d01f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v1, p4, p2

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    sub-int v1, p3, p1

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWidth:I

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_SEC_BATTERY_GUI:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0485

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v2

    mul-float v0, v1, v2

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v1, v1

    iput v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mWarningTextHeight:F

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_INCOMPATIBLE_CHARGER_CHECK:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mInvalidTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float v0, v1, v2

    goto :goto_0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 9

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    cmpl-float v6, p1, v6

    if-nez v6, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getBackgroundColor(F)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/systemui/BatteryMeterDrawable;->getFillColor(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIconTint:I

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeBoltColor:I

    iget v8, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeBoltColor:I

    invoke-direct {p0, p1, v7, v8}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_USB_TYPE_C:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mPowerSupplyingPaint:Landroid/graphics/Paint;

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModePowerSupplyingColor:I

    iget v8, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModePowerSupplyingColor:I

    invoke-direct {p0, p1, v7, v8}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    iput v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mChargeColor:I

    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_SEC_BATTERY_GUI:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameLightColor:I

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFrameDarkColor:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v3}, Landroid/graphics/Paint;->setColor(I)V

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelColor:I

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundLightColor:I

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundDarkColor:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLevelBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setColor(I)V

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v4

    iget v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkColor:I

    iget v7, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightColor:I

    invoke-direct {p0, p1, v6, v7}, Lcom/android/systemui/BatteryMeterDrawable;->getColorForDarkIntensity(FII)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltDarkPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryLightningBoltLightPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColor(I)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->invalidateSelf()V

    iput p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    return-void
.end method

.method public setDesktopMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mIsDesktopMode:Z

    return-void
.end method

.method public startListening()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v4, 0x0

    const-string v5, "battery_color_main"

    invoke-static {v5, v4}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "battery_color"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "battery_color_dark"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateShowPercent()V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mSettingObserver:Lcom/android/systemui/BatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public updateBatteryColor()V
    .locals 9

    const/4 v8, 0x0

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f110027

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v5, 0x7f110028

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterDrawable;->updateKnoxCustomStatusBarBatteryColours()V

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    mul-int/lit8 v5, v0, 0x2

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    invoke-virtual {v3, v2, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v7

    aput v7, v5, v6

    iget-object v5, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v6, v2, 0x2

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v1, v2, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public updateKnoxCustomStatusBarBatteryColours()V
    .locals 12

    const/4 v9, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v10, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/keyguard/KnoxStateMonitor;->getBatteryLevelColourItem()Lcom/samsung/android/knox/custom/StatusbarIconItem;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/StatusbarIconItem;->getAttributeColourArray()[Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;

    move-result-object v5

    if-eqz v5, :cond_2

    array-length v10, v5

    if-lez v10, :cond_2

    array-length v10, v5

    new-array v7, v10, [I

    array-length v10, v5

    new-array v6, v10, [I

    const/4 v4, 0x0

    array-length v10, v5

    :goto_0
    if-ge v9, v10, :cond_0

    aget-object v3, v5, v9

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getAttribute()I

    move-result v11

    aput v11, v7, v4

    invoke-virtual {v3}, Lcom/samsung/android/knox/custom/StatusbarIconItem$AttributeColour;->getColour()I

    move-result v11

    aput v11, v6, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    array-length v8, v5

    :cond_1
    :goto_1
    if-eqz v5, :cond_3

    move v0, v8

    mul-int/lit8 v9, v8, 0x2

    new-array v9, v9, [I

    iput-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v0, :cond_3

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    aget v11, v7, v2

    aput v11, v9, v10

    iget-object v9, p0, Lcom/android/systemui/BatteryMeterDrawable;->mColors:[I

    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v10, v10, 0x1

    aget v11, v6, v2

    aput v11, v9, v10

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v5, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method

.method public update_battery_colors()V
    .locals 7

    const/4 v5, 0x0

    const-string v6, "battery_color_main"

    invoke-static {v6, v5}, Lcom/android/wubydax/GearUtils;->getDbIntForKey(Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/BatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const v3, -0x1

    const-string/jumbo v2, "battery_color"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mLightModeFillColor:I

    const v3, -0xddddde

    const-string/jumbo v2, "battery_color_dark"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mDarkModeFillColor:I

    iget v0, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    const v3, -0x1

    int-to-float v3, v3

    iput v3, p0, Lcom/android/systemui/BatteryMeterDrawable;->mOldDarkIntensity:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterDrawable;->setDarkIntensity(F)V

    :goto_0
    return-void
.end method
