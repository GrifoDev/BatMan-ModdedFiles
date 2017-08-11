.class public Lcom/android/keyguard/util/ViewStyleUtils;
.super Ljava/lang/Object;
.source "ViewStyleUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/util/ViewStyleUtils$FontType;,
        Lcom/android/keyguard/util/ViewStyleUtils$UpdatedFrom;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/util/ViewStyleUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;
    .locals 1

    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/util/ViewStyleUtils;

    invoke-direct {v0, p0}, Lcom/android/keyguard/util/ViewStyleUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    :cond_0
    sget-object v0, Lcom/android/keyguard/util/ViewStyleUtils;->sInstance:Lcom/android/keyguard/util/ViewStyleUtils;

    return-object v0
.end method


# virtual methods
.method public getColorFromColorType(I)I
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v0

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    return v2

    :pswitch_1
    if-eqz v0, :cond_0

    sget v1, Lcom/android/keyguard/R$color;->theme_textclock_color:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_textclock_color:I

    goto :goto_0

    :pswitch_2
    if-eqz v0, :cond_1

    sget v1, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    goto :goto_0

    :cond_1
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_clock_date_color:I

    goto :goto_0

    :pswitch_3
    if-eqz v0, :cond_2

    sget v1, Lcom/android/keyguard/R$color;->theme_clock_date_color:I

    goto :goto_0

    :cond_2
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_clock_date_color:I

    goto :goto_0

    :pswitch_4
    if-eqz v0, :cond_3

    sget v1, Lcom/android/keyguard/R$color;->theme_pin_digit_text_color:I

    goto :goto_0

    :cond_3
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_pin_digit_text_color:I

    goto :goto_0

    :pswitch_5
    if-eqz v0, :cond_4

    sget v1, Lcom/android/keyguard/R$color;->theme_pin_text_color:I

    goto :goto_0

    :cond_4
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_pin_text_color:I

    goto :goto_0

    :pswitch_6
    if-eqz v0, :cond_5

    sget v1, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_color:I

    goto :goto_0

    :cond_5
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_pin_klondike_text_color:I

    goto :goto_0

    :pswitch_7
    if-eqz v0, :cond_6

    sget v1, Lcom/android/keyguard/R$color;->theme_keyguard_dex_emergency_text_color:I

    goto :goto_0

    :cond_6
    sget v1, Lcom/android/keyguard/R$color;->backup_default_theme_keyguard_dex_emergency_text_color:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public getCurrentLookType()I
    .locals 6

    iget-object v5, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v4

    iget-object v5, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    iget-object v5, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v1

    if-nez v0, :cond_2

    move v3, v1

    :goto_0
    const/4 v2, 0x0

    if-nez v4, :cond_0

    if-eqz v3, :cond_3

    :cond_0
    if-nez v4, :cond_4

    if-eqz v3, :cond_4

    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1
.end method

.method public setTextFontEffect(Landroid/widget/TextView;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$string;->theme_clockfont_effect_type:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->parsingFontEffectString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mFontEffectUtil:Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;

    invoke-static {p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardFontEffectUtil;->setTextFontEffect(Landroid/widget/TextView;)V

    :cond_0
    return-void
.end method

.method public updateButtonOuterlineColor(Landroid/widget/TextView;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    sget v4, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_button_drawable:I

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, v1, v3, v2, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void

    :pswitch_0
    sget v4, Lcom/android/keyguard/R$drawable;->backup_default_ripple_effect_transparent_button_drawable:I

    goto :goto_0

    :pswitch_1
    sget v4, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_button_drawable:I

    goto :goto_0

    :pswitch_2
    sget v4, Lcom/android/keyguard/R$drawable;->ripple_effect_transparent_black_button_drawable:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public varargs updateFontTypeface(Lcom/android/keyguard/util/ViewStyleUtils$FontType;[Landroid/widget/TextView;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isOpenThemeLook()Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_5

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getOpenThemeClockFont()Ljava/lang/String;

    move-result-object v2

    :cond_1
    :goto_0
    const/4 v3, 0x0

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    const/4 v0, 0x0

    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Clock:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_7

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v4, :cond_6

    const-string/jumbo v0, "clock2017L"

    :cond_3
    :goto_1
    const/4 v4, 0x0

    invoke-static {v0, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_9

    const/4 v1, 0x0

    :goto_3
    array-length v4, p2

    if-ge v1, v4, :cond_9

    aget-object v4, p2, v1

    if-eqz v4, :cond_4

    aget-object v4, p2, v1

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Numeric:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->getOpenThemeNumericFont()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "clock2016"

    goto :goto_1

    :cond_7
    sget-object v4, Lcom/android/keyguard/util/ViewStyleUtils$FontType;->Numeric:Lcom/android/keyguard/util/ViewStyleUtils$FontType;

    if-ne p1, v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->pinlock_numeric_font_family:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    invoke-static {v2}, Landroid/graphics/Typeface;->createFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    goto :goto_2

    :cond_9
    return-void
.end method

.method public updateImageStyle(II)Landroid/graphics/drawable/Drawable;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v1

    :pswitch_1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p2}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v2

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :pswitch_2
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v3, -0xbbbbbc

    invoke-direct {v0, v3, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public updateImageStyle(III)Landroid/graphics/drawable/Drawable;
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :goto_0
    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v1

    :pswitch_0
    move v2, p1

    goto :goto_0

    :pswitch_1
    move v2, p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {p0, p3}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v3

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_0

    :pswitch_2
    move v2, p2

    goto :goto_0

    :pswitch_3
    move v2, p2

    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const v4, -0xbbbbbc

    invoke-direct {v0, v4, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

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

.method public updateViewStyle(Landroid/widget/TextView;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/keyguard/util/ViewStyleUtils;->getColorFromColorType(I)I

    move-result v1

    const v0, -0xbbbbbc

    invoke-virtual {p1}, Landroid/widget/TextView;->semClearAllTextEffect()V

    invoke-virtual {p0}, Lcom/android/keyguard/util/ViewStyleUtils;->getCurrentLookType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDx()F

    move-result v3

    invoke-virtual {p1}, Landroid/widget/TextView;->getShadowDy()F

    move-result v4

    invoke-virtual {p1, v2, v3, v4, v0}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    return-void

    :pswitch_0
    const/high16 v0, 0x66000000

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_2
    const/4 v2, 0x5

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/util/ViewStyleUtils;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$color;->theme_pin_klondike_text_black_color:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v1

    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v1, -0xbbbbbc

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method
