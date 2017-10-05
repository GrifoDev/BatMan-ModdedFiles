.class public Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
.super Ljava/lang/Object;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/PageIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PageMarkerResources"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    }
.end annotation


# instance fields
.field active:Landroid/graphics/drawable/Drawable;

.field inactive:Landroid/graphics/drawable/Drawable;

.field type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0200ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :cond_0
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object p1, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->type:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    sget-object v2, Lcom/android/launcher3/common/view/PageIndicator$4;->$SwitchMap$com$android$launcher3$common$view$PageIndicator$PageMarkerResources$IndicatorType:[I

    invoke-virtual {p1}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_2

    const v2, 0x7f0200ac

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ab

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    :goto_0
    return-void

    :pswitch_0
    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0200b1

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200b0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HOME:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0200b3

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200b2

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_2
    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager;->isDefaultTheme()Z

    move-result v2

    if-eqz v2, :cond_1

    const v2, 0x7f0200af

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0200ae

    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HEADLINE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_HEADLINE:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    :pswitch_3
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_FESTIVAL:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_FESTIVAL:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :cond_2
    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->active:Landroid/graphics/drawable/Drawable;

    sget-object v2, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->PAGEINDICATOR_DEFAULT:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v2}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;->inactive:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
