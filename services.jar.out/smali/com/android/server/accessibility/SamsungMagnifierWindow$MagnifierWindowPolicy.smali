.class final Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;
.super Ljava/lang/Object;
.source "SamsungMagnifierWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/accessibility/SamsungMagnifierWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MagnifierWindowPolicy"
.end annotation


# static fields
.field private static final BORDER_SIZE_DP:F = 4.0f

.field public static mDeviceType:Ljava/lang/String;


# instance fields
.field private WINDOW_SIZE_TABLE_HEIGHT:[I

.field private WINDOW_SIZE_TABLE_WIDTH:[I

.field private mBorderSize:I

.field private mCloseBoundOnScreen:Landroid/graphics/Rect;

.field private mCloseSize:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mDisplaySizeValue:Ljava/lang/String;

.field private mFrameWidthHeight:I

.field private mHandleBoundOnScreen:Landroid/graphics/Rect;

.field private mHandleSize:Landroid/graphics/Rect;

.field private mHorizontalLockButtonRect:Landroid/graphics/Rect;

.field private mIsCloseMode:Z

.field private mIsMovingMode:Z

.field private mLowerSideTouchOnFrame:Landroid/graphics/Rect;

.field private mMagnificationSpec:Landroid/view/MagnificationSpec;

.field private mMovingStarted_X:F

.field private mMovingStarted_Y:F

.field private mOrientation:I

.field private mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

.field private mQuickOptionBottomMargin:I

.field private mQuickOptionLeftRightMargin:I

.field private mQuickOptionSize:I

.field private mScale:F

.field private mUpperSideTouchOnFrame:Landroid/graphics/Rect;

.field private mWindowBoundOnScreen:Landroid/graphics/Rect;

.field private mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

.field private mWindowSize:I

.field private mWindowSizeButtonRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    const/4 v9, -0x1

    const/high16 v8, -0x40800000    # -1.0f

    const/4 v10, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    filled-new-array {v10, v10, v10, v10, v10}, [I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    filled-new-array {v10, v10, v10, v10, v10}, [I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iput v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    iput-boolean v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    iput-boolean v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    iput v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    iput v10, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/util/DisplayMetrics;

    invoke-direct {v7}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-static {}, Landroid/view/MagnificationSpec;->obtain()Landroid/view/MagnificationSpec;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v8, v7, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput v8, v7, Landroid/view/MagnificationSpec;->offsetY:F

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v10, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105012d

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x105012f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050135

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050133

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050134

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    new-instance v7, Landroid/graphics/Rect;

    add-int v8, v0, v2

    add-int v9, v1, v2

    invoke-direct {v7, v10, v10, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_size_forced"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050131

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v4, v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050130

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v3, v7

    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7, v10, v10, v4, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x1050132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->init(Landroid/content/Context;)Z

    return-void
.end method

.method public static isRTL(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit16 v0, v1, 0xc0

    const/16 v1, 0x80

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0

    :cond_0
    const-string/jumbo v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    sget-object v1, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    if-eqz v1, :cond_1

    sget-object v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDeviceType:Ljava/lang/String;

    const-string/jumbo v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    :cond_1
    return v0
.end method


# virtual methods
.method public getBorderSize()I
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    return v0
.end method

.method public getMagnificationSpec()Landroid/view/MagnificationSpec;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    return-object v0
.end method

.method public getMovingStartedX()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    return v0
.end method

.method public getMovingStartedY()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return v0
.end method

.method public getOriginalScreenBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    return v0
.end method

.method public getWindowBoundOnScreen()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getWindowSizeHeight()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getWindowSizeWidth()I
    .locals 2

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    iget v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    aget v0, v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)Z
    .locals 12

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "display_size_forced"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    :cond_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init : screen resolution is changed = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplaySizeValue:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    iget v8, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v7, v8, :cond_1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "init : But orientation or screen size are not changed"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x0

    return v7

    :cond_1
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "init orientation : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v0, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, v0, Landroid/content/res/Configuration;->orientation:I

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const-string/jumbo v7, "window"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v7, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow;->-get0()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mDisplayMetrics : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v9}, Landroid/util/DisplayMetrics;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    const/high16 v8, 0x40800000    # 4.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v7

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v7

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v8, "mobile_keyboard"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x3

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-int v8, v5

    const/4 v9, 0x4

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x3

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x4

    aput v8, v7, v9

    :goto_1
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-ltz v7, :cond_2

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetY:F

    const/4 v8, 0x0

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v7, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v8, v8

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v8, v9

    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    :goto_2
    const/4 v7, 0x1

    return v7

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isTablet()Z

    move-result v7

    if-nez v7, :cond_5

    iget v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOrientation:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fe199999999999aL    # 0.55

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    aput v8, v7, v9

    goto :goto_1

    :cond_5
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-double v8, v5

    const-wide v10, 0x3feb333333333333L    # 0.85

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_WIDTH:[I

    float-to-int v8, v5

    const/4 v9, 0x2

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x0

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fd3d70a3d70a3d7L    # 0.31

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x1

    aput v8, v7, v9

    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->WINDOW_SIZE_TABLE_HEIGHT:[I

    float-to-double v8, v2

    const-wide v10, 0x3fd70a3d70a3d70aL    # 0.36

    mul-double/2addr v8, v10

    double-to-int v8, v8

    const/4 v9, 0x2

    aput v8, v7, v9

    goto/16 :goto_1

    :cond_6
    iget-object v7, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v7, v7, Landroid/view/MagnificationSpec;->offsetX:F

    iget-object v8, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget v8, v8, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p0, v7, v8}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateMagnificationSpec(FF)V

    goto/16 :goto_2
.end method

.method public isCloseMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    return v0
.end method

.method public isMovingMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    return v0
.end method

.method public isOnCloseBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnHandle(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnHorizontalLockBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnLowerSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindow(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnMagnifierWindowWithQuickOption(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isOnMagnifierWindowWithoutBorder(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnUpperSide(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public isOnWindowSizeBtn(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    return v0
.end method

.method public setCloseMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsCloseMode:Z

    return-void
.end method

.method public setMovingMode(ZFF)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mIsMovingMode:Z

    iput p2, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_X:F

    iput p3, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMovingStarted_Y:F

    return-void
.end method

.method public setScale(F)Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWindowSize(I)Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    if-eq p1, v0, :cond_0

    iput p1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSize:I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public updateBoundOnScreen()V
    .locals 24

    const/4 v12, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mBorderSize:I

    move/from16 v21, v0

    mul-int/lit8 v20, v21, 0x5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v7, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v6, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1120096

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v0, v5, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v0

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050153

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v15

    float-to-int v0, v15

    move/from16 v21, v0

    add-int v7, v7, v21

    :cond_0
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v21

    div-int/lit8 v9, v21, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v21

    div-int/lit8 v8, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v13, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v17, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v19, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v4, v21, v8

    if-gez v13, :cond_2

    const/4 v12, 0x0

    sub-int v16, v17, v13

    :goto_1
    if-gez v19, :cond_4

    const/16 v18, 0x0

    sub-int v3, v4, v19

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    sub-int v22, v12, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    sub-int v22, v18, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int v22, v16, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int v22, v3, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v12, 0x4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v18, 0x4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v16, -0x4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowBoundOnScreenWithoutBorder:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v3, -0x4

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->isRTL(Landroid/content/Context;)Z

    move-result v21

    if-eqz v21, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v22, v0

    sub-int v22, v12, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    sub-int v22, v18, v20

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mUpperSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mFrameWidthHeight:I

    move/from16 v22, v0

    sub-int v22, v3, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mLowerSideTouchOnFrame:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int v22, v3, v20

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    add-int v21, v12, v16

    div-int/lit8 v11, v21, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    sub-int v22, v11, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v3, -0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    div-int/lit8 v22, v22, 0x2

    add-int v22, v22, v11

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    add-int/lit8 v22, v3, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHandleSize:Landroid/graphics/Rect;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v23, v0

    div-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeWidth()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v9, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->getWindowSizeHeight()I

    move-result v21

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mScale:F

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    mul-float v22, v22, v23

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v8, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v13, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetX:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v17, v21, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    sub-int v19, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Landroid/view/MagnificationSpec;->offsetY:F

    move/from16 v21, v0

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v4, v21, v8

    if-gez v13, :cond_7

    const/4 v12, 0x0

    sub-int v16, v17, v13

    :goto_4
    if-gez v19, :cond_9

    const/16 v18, 0x0

    sub-int v3, v4, v19

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v12, v0, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mOriginalScreenBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    const v22, 0x1050151

    invoke-virtual/range {v21 .. v22}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    float-to-int v0, v14

    move/from16 v21, v0

    add-int v6, v6, v21

    goto/16 :goto_0

    :cond_2
    move/from16 v0, v17

    if-le v0, v7, :cond_3

    move/from16 v16, v7

    sub-int v21, v17, v7

    sub-int v12, v13, v21

    goto/16 :goto_1

    :cond_3
    move v12, v13

    move/from16 v16, v17

    goto/16 :goto_1

    :cond_4
    if-le v4, v6, :cond_5

    move v3, v6

    sub-int v21, v4, v6

    sub-int v18, v19, v21

    goto/16 :goto_2

    :cond_5
    move/from16 v18, v19

    move v3, v4

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v16

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseBoundOnScreen:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mCloseSize:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v22, v0

    add-int v22, v22, v18

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v22, v0

    add-int v22, v22, v12

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v23, v0

    add-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mWindowSizeButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move/from16 v0, v18

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionSize:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v23, v0

    sub-int v22, v22, v23

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionLeftRightMargin:I

    move/from16 v22, v0

    sub-int v22, v16, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mHorizontalLockButtonRect:Landroid/graphics/Rect;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mQuickOptionBottomMargin:I

    move/from16 v22, v0

    sub-int v22, v18, v22

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Landroid/graphics/Rect;->bottom:I

    goto/16 :goto_3

    :cond_7
    move/from16 v0, v17

    if-le v0, v7, :cond_8

    move/from16 v16, v7

    sub-int v21, v17, v7

    sub-int v12, v13, v21

    goto/16 :goto_4

    :cond_8
    move v12, v13

    move/from16 v16, v17

    goto/16 :goto_4

    :cond_9
    if-le v4, v6, :cond_a

    move v3, v6

    sub-int v21, v4, v6

    sub-int v18, v19, v21

    goto/16 :goto_5

    :cond_a
    move/from16 v18, v19

    move v3, v4

    goto/16 :goto_5
.end method

.method public updateMagnificationSpec(FF)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iget-object v1, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    iput v1, v0, Landroid/view/MagnificationSpec;->offsetY:F

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->updateBoundOnScreen()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p1, v0, Landroid/view/MagnificationSpec;->offsetX:F

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/SamsungMagnifierWindow$MagnifierWindowPolicy;->mMagnificationSpec:Landroid/view/MagnificationSpec;

    iput p2, v0, Landroid/view/MagnificationSpec;->offsetY:F

    goto :goto_1
.end method
