.class public Lcom/android/launcher3/common/view/IconView;
.super Landroid/widget/FrameLayout;
.source "IconView.java"


# static fields
.field private static final CHECKBOX_ANIM_DURATION:I = 0x64

.field public static final DISPLAY_APPS:I = 0x2

.field public static final DISPLAY_FOLDER_ITEM:I = 0x3

.field public static final DISPLAY_HOTSEAT:I = 0x1

.field public static final DISPLAY_WORKSPACE:I = 0x0

.field public static final EXTRA_SHORTCUT_LIVE_ICON_COMPONENT:Ljava/lang/String; = "liveicon_cmpname"

.field public static final EXTRA_SHORTCUT_USER_ID:Ljava/lang/String; = "userid"

.field private static final INVALID_DATA:I = -0x1

.field public static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field private static final SCALE_ANIMATION_DURATION:I = 0x12c

.field private static final SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

.field private static mBadgePositionFactor:F


# instance fields
.field private mBadgeCount:Ljava/lang/String;

.field protected mBadgeView:Landroid/widget/TextView;

.field protected mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

.field private mCheckBox:Landroid/widget/CheckBox;

.field protected mCountBadgeView:Landroid/widget/TextView;

.field private mDisableAlphaOnPress:Z

.field private mDisableRelayout:Z

.field protected mDrawablePadding:I

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconDisplay:I

.field private mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

.field protected mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

.field protected mIconSize:I

.field protected mIconTextBackground:Landroid/graphics/drawable/Drawable;

.field protected mIconView:Landroid/widget/ImageView;

.field protected mIsSetThemeBadgeBg:Z

.field private mIsShortcutIconShownWithTitle:Z

.field protected final mLauncher:Lcom/android/launcher3/Launcher;

.field private final mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mMarkToRemove:Z

.field protected mShadow:Landroid/widget/ImageView;

.field private mSlop:F

.field private final mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field protected mTitleView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    const/high16 v0, -0x40800000    # -1.0f

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    iput-boolean v4, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/Launcher;

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/launcher/R$styleable;->IconView:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x1

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    invoke-virtual {v0, v4, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    iput v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    new-instance v2, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    new-instance v2, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v2, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/theme/OpenThemeManager;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->SHADOW:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v3}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    :cond_0
    return-void
.end method

.method private animateEachScale(Landroid/view/View;ZIJZ)V
    .locals 10

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->indexOfChild(Landroid/view/View;)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p6, :cond_4

    if-eqz p2, :cond_2

    move v2, v3

    :goto_1
    if-eqz p2, :cond_3

    :goto_2
    new-array v3, v8, [Landroid/animation/PropertyValuesHolder;

    sget-object v4, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v5

    sget-object v4, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v6, v8, [F

    aput v2, v6, v5

    aput v1, v6, v7

    invoke-static {v4, v6}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {p1, v3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    int-to-long v4, p3

    invoke-virtual {v0, v4, v5}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    sget-object v3, Lcom/android/launcher3/common/view/IconView;->SINE_IN_OUT_80:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/common/view/IconView$2;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/common/view/IconView$2;-><init>(Lcom/android/launcher3/common/view/IconView;ZLandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_1

    :cond_3
    move v1, v3

    goto :goto_2

    :cond_4
    if-eqz p2, :cond_5

    move v4, v1

    :goto_3
    invoke-virtual {p1, v4}, Landroid/view/View;->setScaleX(F)V

    if-eqz p2, :cond_6

    :goto_4
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    if-eqz p2, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    move v4, v3

    goto :goto_3

    :cond_6
    move v1, v3

    goto :goto_4

    :cond_7
    const/4 v3, 0x4

    goto :goto_5
.end method

.method public static isKnoxShortcut(Landroid/content/ComponentName;)Z
    .locals 2

    if-eqz p0, :cond_0

    const-string v0, "com.samsung.knox.rcp.components"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isKnoxShortcut(Landroid/content/Intent;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/view/IconView;->isKnoxShortcut(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 7

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->setShadow()V

    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    instance-of v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v3, :cond_0

    move-object v2, p1

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_0
    instance-of v3, p2, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    iget v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-boolean v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-nez v3, :cond_2

    iget-object v3, v2, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v3}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v4

    move-object v3, p2

    check-cast v3, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v3}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    const/4 v6, 0x0

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getIconWithTrayIfNeeded(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object v1

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {v1, v3}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-object p2

    :cond_2
    iput-object p2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method


# virtual methods
.method public animateBadge(ZIJZ)V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    return-void
.end method

.method public animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V

    goto :goto_0
.end method

.method protected animateChildScale(Lcom/android/launcher3/common/deviceprofile/GridIconInfo;Landroid/animation/Animator;)V
    .locals 17

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v7

    int-to-float v10, v7

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v11, v11

    div-float v4, v10, v11

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v10

    int-to-float v10, v10

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v11}, Landroid/widget/TextView;->getTextSize()F

    move-result v11

    div-float v8, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    int-to-float v5, v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v10

    add-int/2addr v10, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v11

    add-int/2addr v10, v11

    iget v11, v6, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    sub-int/2addr v10, v11

    int-to-float v9, v10

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v4, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v5, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v11, 0x3

    new-array v11, v11, [Landroid/animation/PropertyValuesHolder;

    const/4 v12, 0x0

    sget-object v13, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    sget-object v13, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v8, v14, v15

    const/4 v15, 0x1

    const/high16 v16, 0x3f800000    # 1.0f

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    sget-object v13, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v14, 0x2

    new-array v14, v14, [F

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x0

    aput v16, v14, v15

    invoke-static {v13, v14}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-static {v10, v11}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_0
    const-wide/16 v10, 0x12c

    invoke-virtual {v3, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method public animateTitleView(ZIJZ)V
    .locals 7

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    return-void
.end method

.method public applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;Z)V
    .locals 4

    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "IconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFromApplicationInfo - start GetLive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    const-string v1, "IconView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyFromApplicationInfo - end GetLive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    :cond_1
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "apps"

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V

    return-void
.end method

.method public applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;Z)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, p1}, Lcom/android/launcher3/common/view/LiveIconManager;->applyKnoxLiveIcon(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    :goto_0
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->changeTextColorForBg(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->enableShortcutIconToTitle()V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isNeededToTestLauncherResume()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "home"

    invoke-static {v2}, Lcom/android/launcher3/Utilities;->printCallStack(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    invoke-static {p1}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "IconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFromShortcutInfo - start GetLive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v2, v1, v3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v2, "IconView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "applyFromShortcutInfo - end GetLive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-boolean v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getThemeAppIcon()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIcon(Lcom/android/launcher3/common/model/IconCache;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto/16 :goto_0
.end method

.method protected applyKnoxLiveIcon(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-static {v2}, Lcom/android/launcher3/common/view/LiveIconManager;->isKnoxLiveIcon(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    const-string v3, "liveicon_cmpname"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    aget-object v0, v2, v1

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v0, v2}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public applyState(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v4, 0x8

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/item/IconInfo;->hasStatusFlag(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getInstallProgress()I

    move-result v3

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v4, v4, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    if-eqz v4, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    :goto_1
    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->setLevel(I)Z

    if-eqz p1, :cond_0

    invoke-virtual {v2}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;->maybePerformFinishedAnimation()V

    :cond_0
    return-void

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/16 v3, 0x64

    goto :goto_0

    :cond_3
    new-instance v2, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;

    iget-object v4, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {v2, v4}, Lcom/android/launcher3/common/drawable/PreloadIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    goto :goto_1
.end method

.method public applyStyle()V
    .locals 8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getIconSize()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getDrawablePadding()I

    move-result v6

    iput v6, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getTextSize()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v6, v5, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getLineCount()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v0

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_2

    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    add-int/2addr v6, v0

    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    add-int/2addr v6, v7

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v6}, Landroid/widget/CheckBox;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    sub-int v4, v0, v3

    if-ltz v4, :cond_5

    :goto_1
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v6, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v6, :cond_6

    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    div-int/lit8 v3, v6, 0x4

    sub-int v4, v0, v3

    if-ltz v4, :cond_7

    :goto_3
    iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    mul-int/lit8 v5, v5, 0x4

    div-int/lit8 v5, v5, 0x5

    add-int/2addr v5, v0

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_1

    :cond_6
    iget v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v6, v3

    iput v6, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_2

    :cond_7
    move v4, v5

    goto :goto_3

    :cond_8
    iget v5, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v5, v3

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    goto :goto_4
.end method

.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method public changeTextColorForBg(Z)V
    .locals 8

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v3

    if-nez v3, :cond_0

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-ltz v3, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x1

    invoke-static {v3, p0, p1, v0, v4}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Lcom/android/launcher3/common/view/IconView;ZZZ)V

    :cond_2
    return-void
.end method

.method protected decorateViewComponent()V
    .locals 9

    const v8, 0x1ffffff

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v2

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v3

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_HIGHLIGHT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v4

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-nez v6, :cond_0

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TITLE_BACKGROUND:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager;->isPinkTheme()Z

    move-result v6

    if-nez v6, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_4

    :cond_1
    if-eq v3, v8, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/IconView;->setTextColor(I)V

    :cond_2
    if-eq v4, v8, :cond_3

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setHighlightColor(I)V

    :cond_3
    if-eq v5, v8, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getShadowDx()F

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getShadowDy()F

    move-result v8

    invoke-virtual {p0, v6, v7, v8, v5}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    :cond_4
    :goto_0
    const v6, 0x7f0f0085

    invoke-virtual {p0, v6}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    sget-object v6, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->BADGE_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v6}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_5
    return-void

    :cond_6
    const/4 v6, 0x0

    invoke-virtual {p0, v7, v7, v7, v6}, Lcom/android/launcher3/common/view/IconView;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public disableShortcutIconToTitle()V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/16 v2, 0x31

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    const-string v1, "\u00a0"

    const-string v2, " "

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v3, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->drawTextBackground(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000d

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->clearShadowLayer()V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public drawTextBackground(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->length()I

    move-result v15

    if-lez v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v15, :cond_5

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v3, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPadding:I

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v15

    iget v4, v15, Lcom/android/launcher3/theme/OpenThemeManager;->mTextBackgroundExtraPaddingBottom:I

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v15, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    move/from16 v16, v0

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getExtendedPaddingTop()I

    move-result v16

    add-int v15, v15, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    move/from16 v16, v0

    add-int v13, v15, v16

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getLineHeight()I

    move-result v16

    mul-int v15, v15, v16

    add-int/2addr v15, v13

    add-int v1, v15, v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v15

    if-le v1, v15, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v1

    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v15

    invoke-interface {v15}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/4 v5, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getLineCount()I

    move-result v15

    if-ge v5, v15, :cond_2

    invoke-virtual {v6, v5}, Landroid/text/Layout;->getLineEnd(I)I

    move-result v2

    invoke-virtual {v12, v10, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getPaint()Landroid/text/TextPaint;

    move-result-object v15

    invoke-virtual {v15, v11}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v15

    float-to-int v14, v15

    if-ge v9, v14, :cond_1

    move v9, v14

    :cond_1
    move v10, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    add-int v14, v9, v3

    move-object/from16 v0, p0

    iget-boolean v15, v0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    if-eqz v15, :cond_3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getWidth()I

    move-result v15

    add-int v14, v15, v3

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    if-ge v15, v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v14

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v15

    sub-int/2addr v15, v14

    div-int/lit8 v7, v15, 0x2

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    add-int v16, v7, v14

    move/from16 v0, v16

    invoke-virtual {v15, v7, v13, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/launcher3/common/view/IconView;->mIconTextBackground:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method public enableShortcutIconToTitle()V
    .locals 5

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const v2, 0x7f0200cc

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09008f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1, v2, v4, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const-string v2, "\u00a0"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mIsShortcutIconShownWithTitle:Z

    return-void
.end method

.method protected getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    new-instance v0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;-><init>(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method

.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method public getCountBadgeView()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getDrawablePadding()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mDrawablePadding:I

    return v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIconDisplay()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    return v0
.end method

.method public getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;
    .locals 3

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->hotseatGridIcon:Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    goto :goto_0

    :pswitch_2
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    iget-object v2, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->folderGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getIconSize()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    return v0
.end method

.method public getIconVew()Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getPaint()Landroid/text/TextPaint;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isMarkToRemove()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    return v0
.end method

.method public markToRemove(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mMarkToRemove:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0f0017

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    const v0, 0x7f0f0018

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f0f0081

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    const v0, 0x7f0f0085

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02008b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    const v0, 0x7f0f0083

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/launcher3/common/view/IconView$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/view/IconView$1;-><init>(Lcom/android/launcher3/common/view/IconView;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_1
    sget v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    sput v0, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/common/view/IconView;->setClipToPadding(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->decorateViewComponent()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    return-void
.end method

.method public onLiveIconRefresh()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v0}, Lcom/android/launcher3/common/view/LiveIconManager;->isLiveIconPackage(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/common/view/LiveIconManager;->getLiveIcon(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/launcher3/common/view/IconView;->refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchOutofIconArea(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->cancelLongPress()V

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    const/4 v1, 0x1

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getBounceAnimation()Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateDown()V

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    goto :goto_0

    :pswitch_1
    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v2

    if-nez v2, :cond_7

    :cond_5
    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->cancel()V

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v2}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    :cond_6
    iget-boolean v2, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v2, :cond_7

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p0, v2}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    :cond_7
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mSlop:F

    invoke-static {p0, v2, v3, v4}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v2}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchOutofIconArea(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    :goto_0
    return v5

    :cond_1
    iget v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    int-to-float v7, v7

    const v8, 0x3e99999a    # 0.3f

    mul-float v0, v7, v8

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float v4, v7, v0

    iget-object v7, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getLeft()I

    move-result v7

    int-to-float v7, v7

    sub-float v1, v7, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpg-float v7, v7, v1

    if-ltz v7, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    cmpl-float v7, v7, v4

    if-gtz v7, :cond_2

    const/4 v7, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpl-float v7, v7, v8

    if-gtz v7, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getHeight()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_6

    :cond_2
    move v3, v6

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    const/4 v8, 0x3

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    if-ne v7, v6, :cond_7

    :cond_3
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-virtual {v5}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateUp()V

    :cond_4
    iget-boolean v5, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    if-nez v5, :cond_5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/view/IconView;->setAlpha(F)V

    :cond_5
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/launcher3/common/view/IconView;->mBounceAnim:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    move v5, v6

    goto :goto_0

    :cond_6
    move v3, v5

    goto :goto_1

    :cond_7
    move v5, v3

    goto :goto_0
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v0

    if-nez v0, :cond_0

    iget-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_3

    :cond_0
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    :cond_2
    return-void

    :cond_3
    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public reapplyItemInfoFromIconCache(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->isContainApps()Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->applyFromApplicationInfo(Lcom/android/launcher3/common/base/item/IconInfo;)V

    :goto_0
    iget v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->getHomescreenIconByItemId(J)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/common/view/IconView;->applyFromShortcutInfo(Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/common/model/IconCache;)V

    goto :goto_0
.end method

.method public refreshBadge()V
    .locals 15

    const/4 v12, 0x0

    const/4 v11, 0x1

    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    if-eqz v7, :cond_5

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v10

    if-eqz v10, :cond_5

    move v8, v11

    :goto_0
    if-nez v8, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    if-eqz v10, :cond_8

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v10

    if-nez v10, :cond_0

    iget-boolean v10, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    if-nez v10, :cond_0

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/launcher3/theme/OpenThemeManager;->preloadBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-boolean v11, p0, Lcom/android/launcher3/common/view/IconView;->mIsSetThemeBadgeBg:Z

    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v0, v4, Lcom/android/launcher3/common/base/item/IconInfo;->mBadgeCount:I

    const/16 v10, 0x3e8

    if-lt v0, v10, :cond_1

    const/4 v6, 0x1

    const/16 v0, 0x3e7

    :cond_1
    if-ne v0, v11, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v13, 0x7f08006d

    invoke-virtual {v11, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v10}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    const-string v10, "ar"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    const-string v10, "fa"

    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    :cond_2
    invoke-static {v1, v3}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_2
    if-eqz v6, :cond_3

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v10, 0x2b

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_3
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->updateBadgeLayout()V

    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v10, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    :goto_3
    return-void

    :cond_5
    move v8, v12

    goto/16 :goto_0

    :cond_6
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, v4, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, ", "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f08006e

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v11, v12

    invoke-static {v13, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v10, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    const/4 v11, 0x4

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v10

    instance-of v10, v10, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v10, :cond_4

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v10, :cond_4

    iget-object v10, v5, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v10}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method refreshIcon(Lcom/android/launcher3/common/base/item/IconInfo;ZLandroid/graphics/Bitmap;)V
    .locals 3

    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache;->getSDCardBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {v1, v2}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->setIcon(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/view/IconView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/view/IconView;->setTag(Ljava/lang/Object;)V

    iget-boolean v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isAppsButton:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    :cond_1
    if-nez p2, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->isPromise()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0, p2}, Lcom/android/launcher3/common/view/IconView;->applyState(Z)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    return-void

    :cond_4
    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    invoke-static {p3, v1}, Lcom/android/launcher3/util/BitmapUtils;->createIconDrawable(Landroid/graphics/Bitmap;I)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    move-result-object v0

    iget v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->isDisabled:I

    if-eqz v1, :cond_5

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public requestLayout()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView;->mDisableRelayout:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setDisableAlphaOnPress(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/view/IconView;->mDisableAlphaOnPress:Z

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 2

    iput-object p1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-object p1
.end method

.method public setIconDisplay(I)V
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-ne v0, p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput p1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->reapplyItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_0
.end method

.method public setLongPressTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->setLongPressTimeout(I)V

    return-void
.end method

.method protected setShadow()V
    .locals 5

    iget v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconDisplay:I

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconShadowDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    iget v4, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    div-int/lit8 v4, v4, 0x3

    invoke-static {v1, v2, v3, v4}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;II)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mShadow:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setShadowLayer(FFFI)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-static {v0}, Lcom/android/launcher3/common/model/FavoritesUpdater;->checkItemInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setTitleViewVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method protected updateBadgeLayout()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v8, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->mBadgeCount:I

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getIconInfo()Lcom/android/launcher3/common/deviceprofile/GridIconInfo;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/launcher3/common/deviceprofile/GridIconInfo;->getContentTop()I

    move-result v2

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getWidth()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v8, p0, Lcom/android/launcher3/common/view/IconView;->mIconSize:I

    sub-int v8, v0, v8

    div-int/lit8 v1, v8, 0x2

    iget-object v8, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    int-to-float v8, v8

    sget v9, Lcom/android/launcher3/common/view/IconView;->mBadgePositionFactor:F

    mul-float/2addr v8, v9

    float-to-int v4, v8

    sub-int v7, v2, v4

    sub-int v5, v1, v4

    if-lez v7, :cond_3

    if-lez v5, :cond_3

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    :cond_2
    :goto_1
    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_0

    iget v6, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget v8, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v8, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_0

    :cond_3
    if-gtz v7, :cond_4

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    goto :goto_1

    :cond_4
    if-gtz v5, :cond_2

    iput v10, v3, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iput v7, v3, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    goto :goto_1
.end method

.method public updateCheckBox(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/view/IconView;->updateCheckBox(ZZ)V

    return-void
.end method

.method public updateCheckBox(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-nez v0, :cond_2

    instance-of v0, v7, Lcom/android/launcher3/folder/FolderInfo;

    if-nez v0, :cond_0

    :cond_2
    if-eqz v7, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/item/ItemInfo;->getChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/16 v3, 0x64

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    if-eqz p1, :cond_4

    const/16 v0, 0xc8

    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->setLongPressTimeout(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCheckBox:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_4
    const/16 v0, 0x12c

    goto :goto_2
.end method

.method public updateCountBadge(ZI)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    return-void
.end method

.method public updateCountBadge(ZIZ)V
    .locals 9

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-nez v0, :cond_0

    const v0, 0x7f0f0084

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/view/IconView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->applyStyle()V

    :cond_0
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->getCheckedAppCount()I

    move-result v0

    add-int v7, v0, p2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/Utilities;->getLocale(Landroid/content/Context;)Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v8

    const-string v0, "ar"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "fa"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0, v8}, Lcom/android/launcher3/Utilities;->toArabicDigits(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->refreshBadge()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/common/view/IconView;->mBadgeCount:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mCountBadgeView:Landroid/widget/TextView;

    const/16 v3, 0xc8

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v2, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V

    goto :goto_2
.end method

.method public updateCountBadge(ZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/launcher3/common/view/IconView;->updateCountBadge(ZIZ)V

    return-void
.end method

.method public verifyHighRes()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;->cancel()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-boolean v1, v0, Lcom/android/launcher3/common/base/item/IconInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/model/PackageItemInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/view/IconView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/PackageItemInfo;

    iget-boolean v1, v0, Lcom/android/launcher3/common/model/PackageItemInfo;->usingLowResIcon:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/model/IconCache;->updateIconInBackground(Lcom/android/launcher3/common/view/IconView;Lcom/android/launcher3/common/base/item/ItemInfo;)Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/common/view/IconView;->mIconLoadRequest:Lcom/android/launcher3/common/model/IconCache$IconLoadRequest;

    goto :goto_0
.end method
