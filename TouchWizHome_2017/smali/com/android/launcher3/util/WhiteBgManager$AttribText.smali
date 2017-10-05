.class Lcom/android/launcher3/util/WhiteBgManager$AttribText;
.super Ljava/lang/Object;
.source "WhiteBgManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/WhiteBgManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AttribText"
.end annotation


# static fields
.field static sColor:I

.field static sDy:F

.field static sRadius:F

.field static sShadowColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    sput v1, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    sput v1, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static setup(Landroid/content/Context;ZZ)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0052

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    const v0, 0x7f0e003b

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    const v0, 0x7f0e0039

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sRadius:F

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0051

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sDy:F

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->TEXT_SHADOW_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    invoke-static {}, Lcom/android/launcher3/theme/OpenThemeManager;->getInstance()Lcom/android/launcher3/theme/OpenThemeManager;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->HOME_TEXT_COLOR:Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;

    invoke-virtual {v1}, Lcom/android/launcher3/theme/OpenThemeManager$ThemeItems;->value()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/theme/OpenThemeManager;->getPreloadColor(I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    goto :goto_0

    :cond_1
    const v0, 0x7f0e003a

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sShadowColor:I

    const v0, 0x7f0e0038

    invoke-static {p0, v0}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    sput v0, Lcom/android/launcher3/util/WhiteBgManager$AttribText;->sColor:I

    goto :goto_0
.end method
