.class public Lcom/android/systemui/statusbar/phone/NavigationBarController;
.super Ljava/lang/Object;
.source "NavigationBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarController$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDarkBar:Z

.field private mDarkBarVisivility:I

.field private mDarkNavigation:Z

.field private mDimmingDarkBar:Z

.field private mFullscreenVisivility:I

.field private mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNavigationBarMode:I

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

.field private mOpenThemeAppliedBar:Z


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/NavigationBarController;)Lcom/android/systemui/statusbar/phone/NavigationBarView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController$1;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarControllerCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private isDark(III)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eq p3, v3, :cond_0

    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_1
    and-int/lit8 v2, p1, 0x10

    if-nez v2, :cond_3

    and-int/lit8 v2, p2, 0x10

    if-eqz v2, :cond_4

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    and-int/lit8 v2, p2, 0x20

    if-eqz v2, :cond_5

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_6

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eqz v0, :cond_7

    return v4

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v2, v4

    goto :goto_3

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    if-eqz v1, :cond_8

    return v3

    :cond_8
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-nez v2, :cond_9

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    :cond_9
    return v3
.end method

.method private update()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setIconsLight(ZZ)V

    return-void
.end method


# virtual methods
.method public getBarMode()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    return v0
.end method

.method public getIconColor(ZI)I
    .locals 11

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget v6, v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v4, v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowClipboard:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    iget-boolean v5, v6, Lcom/android/systemui/statusbar/phone/NavigationBarView;->mShowQuickPanel:Z

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "NavigationBarController"

    const-string/jumbo v7, "isLight = %b, mDarkbar = %b, mDimmingDarkBar = %b, mOpenThemeAppliedBar = %biconColor = %s, showQuickPanel = %b, isBackAlt = %b, showClipboard = %b, BarMode = %d"

    const/16 v8, 0x9

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x1

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x3

    aput-object v9, v8, v10

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x4

    aput-object v9, v8, v10

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x6

    aput-object v9, v8, v10

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const/4 v10, 0x7

    aput-object v9, v8, v10

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v10, 0x8

    aput-object v9, v8, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    :cond_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    const/4 v7, 0x3

    if-eq v6, v7, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    if-nez v6, :cond_5

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    const/4 v7, 0x7

    if-eq v6, v7, :cond_8

    if-eqz p1, :cond_6

    if-eqz v5, :cond_7

    :cond_6
    :goto_1
    if-eqz p1, :cond_b

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_7
    if-nez v1, :cond_8

    if-eqz v4, :cond_6

    :cond_8
    const/4 p1, 0x0

    goto :goto_1

    :cond_9
    if-eqz p2, :cond_a

    return p2

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_b
    sget-boolean v6, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-nez v6, :cond_c

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getBarMode()I

    move-result v6

    const/4 v7, 0x7

    if-ne v6, v7, :cond_d

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_d
    if-nez v1, :cond_e

    if-eqz v4, :cond_17

    :cond_e
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentRotation()I

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->getCurrentRotation()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_10

    :cond_f
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_10
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016a

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_11
    if-eqz p2, :cond_12

    return p2

    :cond_12
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-eqz v6, :cond_13

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b016b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_13
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v6

    if-eqz v6, :cond_14

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eqz v6, :cond_16

    :cond_14
    const/4 v2, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarThemeColor()I

    move-result v2

    :goto_2
    if-eqz v2, :cond_15

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0167

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    if-ne v2, v6, :cond_1b

    :cond_15
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_16
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_17
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarView:Lcom/android/systemui/statusbar/phone/NavigationBarView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->isThemeDefault()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eqz v6, :cond_19

    :cond_18
    if-eqz p2, :cond_14

    return p2

    :cond_19
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    return v6

    :cond_1a
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarCurrentColor()I

    move-result v2

    goto :goto_2

    :cond_1b
    const/4 v6, 0x3

    new-array v3, v6, [F

    invoke-static {v2, v3}, Landroid/graphics/Color;->colorToHSV(I[F)V

    sget-boolean v6, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v6, :cond_1c

    const-string/jumbo v6, "NavigationBarController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "(IconColor Calc) current Color H : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", S : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", V : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, v3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1c
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0169

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1e

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_1e

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0175

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_1d
    :goto_3
    return v0

    :cond_1e
    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_1f

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0178

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_1f
    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x41f00000    # 30.0f

    cmpg-float v6, v6, v7

    if-lez v6, :cond_20

    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x433e0000    # 190.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_25

    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x43b40000    # 360.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_25

    :cond_20
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_22

    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_22

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_22

    :cond_21
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0176

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto :goto_3

    :cond_22
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_23

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_23

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpg-double v6, v6, v8

    if-lez v6, :cond_21

    :cond_23
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fa999999999999aL    # 0.05

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_24

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_24

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpg-double v6, v6, v8

    if-lez v6, :cond_21

    :cond_24
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0177

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_3

    :cond_25
    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2a

    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x43110000    # 145.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2a

    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_27

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_27

    :cond_26
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0176

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_3

    :cond_27
    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_28

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpg-double v6, v6, v8

    if-lez v6, :cond_26

    :cond_28
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_29

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_29

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpg-double v6, v6, v8

    if-lez v6, :cond_26

    :cond_29
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0177

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_3

    :cond_2a
    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x41f00000    # 30.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_2c

    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x42480000    # 50.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_2c

    :goto_4
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc999999999999aL    # 0.2

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2d

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2d

    :cond_2b
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0176

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_3

    :cond_2c
    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x43110000    # 145.0f

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_1d

    const/4 v6, 0x0

    aget v6, v3, v6

    const/high16 v7, 0x433e0000    # 190.0f

    cmpg-float v6, v6, v7

    if-gtz v6, :cond_1d

    goto :goto_4

    :cond_2d
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fdccccccccccccdL    # 0.45

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2e

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2e

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fee666666666666L    # 0.95

    cmpg-double v6, v6, v8

    if-lez v6, :cond_2b

    :cond_2e
    const/4 v6, 0x1

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fc3333333333333L    # 0.15

    cmpg-double v6, v6, v8

    if-gtz v6, :cond_2f

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3fe6666666666666L    # 0.7

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2f

    const/4 v6, 0x2

    aget v6, v3, v6

    float-to-double v6, v6

    const-wide v8, 0x3feb333333333333L    # 0.85

    cmpg-double v6, v6, v8

    if-lez v6, :cond_2b

    :cond_2f
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mContext:Landroid/content/Context;

    const v7, 0x7f0b0177

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v0

    goto/16 :goto_3
.end method

.method public isDarkNavigation()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    return v0
.end method

.method public onSystemUiVisibilityChanged(IIIZI)V
    .locals 17

    sget-boolean v12, Lcom/android/systemui/statusbar/phone/NavigationBarController;->DEBUG:Z

    if-eqz v12, :cond_0

    const-string/jumbo v12, "NavigationBarController"

    const-string/jumbo v13, "vis = %s, fullscreenVis = %s, nbModeChanged = %b navigationBarMode = %d"

    const/4 v14, 0x4

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x0

    aput-object v15, v14, v16

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    aput-object v15, v14, v16

    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    const/16 v16, 0x2

    aput-object v15, v14, v16

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    const/16 v16, 0x3

    aput-object v15, v14, v16

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move/from16 v0, p5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mNavigationBarMode:I

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    move-object/from16 v0, p0

    iget-boolean v9, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    move/from16 v0, p3

    not-int v12, v0

    and-int/2addr v12, v8

    and-int/lit8 v13, p1, 0x10

    and-int v13, v13, p3

    or-int v5, v12, v13

    xor-int v3, v5, v8

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    move/from16 v6, p2

    xor-int v4, p2, v10

    if-nez p4, :cond_1

    and-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_4

    :cond_1
    :goto_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p5

    invoke-direct {v0, v5, v1, v2}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDark(III)Z

    move-result v12

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkNavigation:Z

    if-nez p4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBar:Z

    if-eq v7, v12, :cond_5

    :cond_2
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->update()V

    :cond_3
    move-object/from16 v0, p0

    iput v5, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDarkBarVisivility:I

    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mFullscreenVisivility:I

    return-void

    :cond_4
    and-int/lit8 v12, v4, 0x10

    if-nez v12, :cond_1

    and-int/lit8 v12, v4, 0x20

    if-nez v12, :cond_1

    and-int/lit8 v12, v4, 0x40

    if-eqz v12, :cond_3

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mDimmingDarkBar:Z

    if-ne v9, v12, :cond_2

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/systemui/statusbar/phone/NavigationBarController;->mOpenThemeAppliedBar:Z

    if-eq v11, v12, :cond_3

    goto :goto_1
.end method
