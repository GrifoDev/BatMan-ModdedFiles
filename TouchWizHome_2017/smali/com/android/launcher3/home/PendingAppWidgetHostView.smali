.class public Lcom/android/launcher3/home/PendingAppWidgetHostView;
.super Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.source "PendingAppWidgetHostView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final MIN_SATUNATION:F = 0.7f

.field private static final SETUP_ICON_SIZE_FACTOR:F = 0.4f


# instance fields
.field private mCenterDrawable:Landroid/graphics/drawable/Drawable;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mDefaultView:Landroid/view/View;

.field private final mDisabledForSafeMode:Z

.field private mDrawableSizeChanged:Z

.field private mIcon:Landroid/graphics/Bitmap;

.field private final mIconLookupIntent:Landroid/content/Intent;

.field private final mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private final mPaint:Landroid/text/TextPaint;

.field private final mRect:Landroid/graphics/Rect;

.field private mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mSetupTextLayout:Landroid/text/Layout;

.field private final mStartState:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/LauncherAppWidgetInfo;Z)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v0, p2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    iput v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mStartState:I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iput-boolean p3, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    const v0, 0x7f0200d3

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->setBackgroundResource(I)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090124

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->setElevation(F)V

    return-void
.end method

.method private updateDrawableBounds()V
    .locals 25

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getPaddingTop()I

    move-result v21

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getPaddingBottom()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getPaddingLeft()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getPaddingRight()I

    move-result v20

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090125

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getWidth()I

    move-result v2

    sub-int v2, v2, v19

    sub-int v2, v2, v20

    mul-int/lit8 v3, v17, 0x2

    sub-int v5, v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v21

    sub-int v2, v2, v18

    mul-int/lit8 v3, v17, 0x2

    sub-int v11, v2, v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_1

    iget-object v2, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v15

    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v23

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move/from16 v0, v23

    move/from16 v1, v23

    invoke-virtual {v2, v3, v4, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    sub-int/2addr v3, v4

    div-int/lit8 v3, v3, 0x2

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getHeight()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    sub-int/2addr v4, v6

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Rect;->offsetTo(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v5, v11}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v13, v2

    const v22, 0x3fe66666    # 1.8f

    invoke-static {v5, v11}, Ljava/lang/Math;->max(II)I

    move-result v15

    mul-float v2, v13, v22

    int-to-float v3, v15

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2

    int-to-float v2, v15

    div-float v13, v2, v22

    :cond_2
    iget-object v2, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v13, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v10, v2

    new-instance v2, Landroid/text/StaticLayout;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08016a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mPaint:Landroid/text/TextPaint;

    sget-object v6, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/4 v9, 0x1

    invoke-direct/range {v2 .. v9}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v2, v0

    int-to-float v3, v10

    mul-float v3, v3, v22

    add-float/2addr v2, v3

    iget-object v3, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getDrawablePadding()I

    move-result v3

    int-to-float v3, v3

    add-float v16, v2, v3

    int-to-float v2, v11

    cmpg-float v2, v16, v2

    if-gez v2, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int v2, v2, v24

    iget-object v3, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getDrawablePadding()I

    move-result v3

    sub-int/2addr v2, v3

    sub-int/2addr v2, v10

    div-int/lit8 v14, v2, 0x2

    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v10, v10}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getWidth()I

    move-result v3

    sub-int/2addr v3, v10

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3, v14}, Landroid/graphics/Rect;->offset(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v19, v17

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    const v4, 0x3ecccccd    # 0.4f

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v21, v17

    iput v3, v2, Landroid/graphics/Rect;->top:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    const v4, 0x3ecccccd    # 0.4f

    int-to-float v6, v10

    mul-float/2addr v4, v6

    float-to-int v4, v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    add-int v3, v19, v17

    iput v3, v2, Landroid/graphics/Rect;->left:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v12, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getDrawablePadding()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->top:I

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getHeight()I

    move-result v2

    sub-int/2addr v2, v10

    div-int/lit8 v14, v2, 0x2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    goto/16 :goto_1
.end method

.method private updateSettingColor()V
    .locals 5

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    const/16 v3, 0x14

    invoke-static {v2, v3}, Lcom/android/launcher3/util/BitmapUtils;->findDominantColorByHue(Landroid/graphics/Bitmap;I)I

    move-result v0

    const/4 v2, 0x3

    new-array v1, v2, [F

    invoke-static {v0, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    aget v2, v1, v4

    const v3, 0x3f333333    # 0.7f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    aput v3, v1, v2

    invoke-static {v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v0, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method applyState()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->installProgress:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    :cond_0
    return-void
.end method

.method protected getDefaultView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f030018

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDefaultView:Landroid/view/View;

    return-object v0
.end method

.method isReadyForClickSetup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isReinflateRequired()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mStartState:I

    iget-object v1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateDrawableBounds()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSetupTextLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->onSizeChanged(IIII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public updateAppWidgetSize(Landroid/os/Bundle;IIII)V
    .locals 0

    return-void
.end method

.method updateIcon(Lcom/android/launcher3/common/model/IconCache;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIconLookupIntent:Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mInfo:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v5, v5, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p1, v4, v5}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-ne v4, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-object v2, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v6}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    iget-object v4, v4, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconSize()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDisabledForSafeMode:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    iput-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    :goto_1
    iput-boolean v7, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mDrawableSizeChanged:Z

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->isReadyForClickSetup()Z

    move-result v4

    if-eqz v4, :cond_4

    new-instance v4, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    iget-object v5, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200c3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->updateSettingColor()V

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mIcon:Landroid/graphics/Bitmap;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v1

    new-instance v4, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    invoke-direct {v4, v1}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mSettingIconDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/home/PendingAppWidgetHostView;->applyState()V

    goto :goto_1
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/PendingAppWidgetHostView;->mCenterDrawable:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
