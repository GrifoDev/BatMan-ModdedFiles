.class public Lcom/android/systemui/infinity/theme/ThemeFactory;
.super Ljava/lang/Object;
.source "ThemeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTheme(Landroid/content/Context;I)Lcom/android/systemui/infinity/theme/ThemeInterface;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lcom/android/systemui/infinity/theme/black/ThemeBlack;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/black/ThemeBlack;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/blue/ThemeBlue;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/android/systemui/infinity/theme/gold/ThemeGold;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/gold/ThemeGold;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/android/systemui/infinity/theme/orchid/ThemeOrchid;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/orchid/ThemeOrchid;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/android/systemui/infinity/theme/pink/ThemePink;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/pink/ThemePink;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_4
    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    new-instance v0, Lcom/android/systemui/infinity/theme/silver/ThemeSilver;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/theme/silver/ThemeSilver;-><init>(Landroid/content/Context;)V

    return-object v0

    :cond_5
    const/4 v0, 0x0

    return-object v0
.end method
