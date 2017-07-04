.class public Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "KeyguardClockPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;,
        Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

.field private static final SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;


# instance fields
.field private mClockHolder:Landroid/widget/FrameLayout;

.field private mClockKey:Ljava/lang/String;

.field private mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

.field private mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mIsFMMLock:Z

.field private mIsNationalRoamingIgnorable:Z

.field private mIsNetworkRoaming:Z

.field private mIsRMMLock:Z

.field mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

.field private mLocale:Ljava/util/Locale;

.field private mRefreshLogCounter:I

.field private mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

.field private mShouldShowDualClock:Z

.field private mShouldShowImageClock:Z

.field private mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

.field private mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Ljava/util/Locale;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method private static synthetic -getcom-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->values()[Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-com-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNationalRoamingIgnorable:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Ljava/util/Locale;)Ljava/util/Locale;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->isNetworkRoamingState()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->changeHourFormat()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "dualclock_menu_settings"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "homecity_timezone"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "high_text_contrast_enabled"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-string/jumbo v1, "time_12_24"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    sget-object v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->None:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsFMMLock:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsRMMLock:Z

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    return-void
.end method

.method private changeHourFormat()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->changeHourFormat()V

    :cond_0
    return-void
.end method

.method private considerChangeClockView()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    return-void
.end method

.method private considerChangeClockView(Z)V
    .locals 11

    const/4 v10, 0x0

    const-string/jumbo v7, "KeyguardClockPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "considerChangeClockView() >> START >> forceReplace: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->needToShowDualClock()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->needToShowImageClock()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    iget-boolean v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowImageClock:Z

    if-eqz v7, :cond_2

    iget-boolean v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-eqz v7, :cond_1

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " hometime:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " locale:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    invoke-virtual {v8}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v7, " hasBG?"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_9

    iput-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    :goto_1
    const-string/jumbo v7, "KeyguardClockPage"

    const-string/jumbo v8, "considerChangeClockView() << END <<"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ImageSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto :goto_0

    :cond_2
    iget-boolean v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mShouldShowDualClock:Z

    if-eqz v7, :cond_3

    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultDual2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto :goto_0

    :cond_3
    sget-boolean v7, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eqz v7, :cond_6

    const/4 v2, 0x1

    :goto_2
    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDesktopMode()Z

    move-result v0

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFMMLock()Z

    move-result v1

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRMMEnabled()Z

    move-result v3

    if-nez v0, :cond_4

    if-nez v2, :cond_8

    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_7

    :cond_5
    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->DefaultSingle2016:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto :goto_2

    :cond_7
    if-nez v3, :cond_5

    :cond_8
    sget-object v6, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ExpandSingle:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    goto/16 :goto_0

    :cond_9
    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v7, :cond_0

    const-string/jumbo v7, "KeyguardClockPage"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "previousClockKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v9}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", newClockKey:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v7}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    iput-object v6, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    iput-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-virtual {p0, v10}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    goto/16 :goto_1
.end method

.method private isNetworkRoamingState()Z
    .locals 7

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    if-eqz v3, :cond_2

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sget-boolean v4, Lcom/android/keyguard/KeyguardRune;->SUPPORT_MULTI_SIM_DEVICE:Z

    if-eqz v4, :cond_1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_0

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v4

    return v4

    :cond_2
    return v6
.end method

.method private needToShowDualClock()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isDualClock()Z

    move-result v0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEasyModeOn()Z

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->setAutoHomecityTimezone(Landroid/content/Context;)V

    if-eqz v2, :cond_0

    return v4

    :cond_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "homecity timezone is empty"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_1
    const-string/jumbo v3, "KeyguardClockPage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDualClockSetting, isEasyUxOn, mIsNetworkRoaming: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRune;->canIgnoreNationalRoamingToShowSingleClock(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "isIgnoreNationalRoaming() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KeyguardRune;->isWiFiOnlyDevice(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "KeyguardClockPage"

    const-string/jumbo v4, "isWiFiOnlyDevice() is true"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    return v4
.end method

.method private needToShowImageClock()Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$bool;->theme_use_image_clock:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->isArabicIndicForClockDigit()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private setAutoHomecityTimezone(Landroid/content/Context;)V
    .locals 8

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->getHomeTimeZone()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "GMT"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setAutoHomecityTimezone( simstateFromTelephony:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " )"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v5, 0x5

    if-ne v3, v5, :cond_2

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/KeyguardRune;->shouldBeAsiaSeoulAsDefaultHomecityTimezone()Z

    move-result v5

    if-eqz v5, :cond_3

    const-string/jumbo v2, "Asia/Seoul"

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/keyguard/util/SettingsHelper;->setHomeTimeZone(Ljava/lang/String;)V

    const-string/jumbo v5, "KeyguardClockPage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "homecity_timezone settings value is set by SystemUI! >> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    const/4 v1, 0x4

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenClockEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KnoxStateMonitor;->isLockscreenDateEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->updateChildViewsLook()V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setClockVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setDateVisibility(I)V

    goto :goto_1
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->-getcom-android-keyguard-servicebox-pages-clock-KeyguardClockPage$ClockTypeSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mType:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$ClockType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "KeyguardClockPage"

    const-string/jumbo v1, "Lockscreen doesn\'t need to show clock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_dual_image_clock_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_single_image_clock_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_dual_clock_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_single_vertical_clock_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    :pswitch_4
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/keyguard/R$layout;->keyguard_single_clock_view:I

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_clock"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    const/16 v0, 0x24

    invoke-static {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    check-cast p1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setClockCacheKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/keyguard/R$bool;->theme_use_clock_background_image:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->hangBackgroudImageOnTheClock()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void
.end method

.method public isSwitchAnimationPlaying()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->isPlaying()Z

    move-result v0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/util/SettingsHelper;->registerCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->registerCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->unregisterCallback(Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mKnoxStateCallback:Lcom/android/keyguard/KnoxStateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KnoxStateMonitor;->removeCallback(Lcom/android/keyguard/KnoxStateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/16 v2, 0x16f

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->keyguard_clock_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockHolder:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mLocale:Ljava/util/Locale;

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    new-instance v0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$3;-><init>(Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mSettingsListener:Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    const/16 v1, 0xa7

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    const/16 v1, 0x53

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setStartDelay(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateMoveOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setDuration(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    return-void
.end method

.method public prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 2

    const-string/jumbo v0, "keyguard_transition_clock_time_hour"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_time_colon"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mColonScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_time_min"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mTimeMoveScaleOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_date_normal"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    const-string/jumbo v0, "keyguard_transition_clock_date_shamsi"

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mDateMoveOption:Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    return-void
.end method

.method public refreshTime()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    const-string/jumbo v0, "KeyguardClockPage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshTime(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->getClockCacheKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", Roaming:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mIsNetworkRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mRefreshLogCounter:I

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->-wrap0(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    sget-object v1, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView12:Ljava/lang/String;

    sget-object v2, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->clockView24:Ljava/lang/String;

    sget-object v3, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage$KeyguardTimePatterns;->dateView:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->refreshTime(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public refreshViews()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->refreshTime()V

    return-void
.end method

.method public setCoverState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0, p1}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->setCoverState(Z)V

    :cond_0
    return-void
.end method

.method public setPageType(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mPageType:I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->considerChangeClockView(Z)V

    :cond_0
    return-void
.end method

.method public updateChildViewsLook()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockPage;->mClockView:Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/clock/KeyguardClockBase;->updateChildViewsLook()V

    :cond_0
    return-void
.end method
