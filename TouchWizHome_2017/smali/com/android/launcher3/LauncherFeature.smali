.class public Lcom/android/launcher3/LauncherFeature;
.super Ljava/lang/Object;
.source "LauncherFeature.java"


# static fields
.field private static final OEM_DIALER_CLASS_NAME:Ljava/lang/String; = "com.android.dialer.DialtactsActivity"

.field private static TAG:Ljava/lang/String; = null

.field private static final T_DIALER_CLASS_NAME:Ljava/lang/String; = "com.skt.prod.dialer.activities.main.MainActivity"

.field private static final T_DIALER_PACKAGE_NAME:Ljava/lang/String; = "com.skt.prod.dialer"

.field private static mSupportFolderLock:Z

.field private static mSupportSSecure:Z

.field private static sBuildFlavor:Ljava/lang/String;

.field private static sCountryCode:Ljava/lang/String;

.field private static sCscClockPackageName:Ljava/lang/String;

.field private static sDisableFullyHideKeypad:Z

.field private static sEnableStartActivityTouchDown:Z

.field private static sFloatingClockPackageName:Ljava/lang/String;

.field private static sHomeAppsStructureFeature:Ljava/lang/String;

.field private static sIsATT:Z

.field private static sIsChinaModel:Z

.field private static sIsCruiserProject:Z

.field private static sIsDreamProject:Z

.field private static sIsEdge:Z

.field private static sIsLargeTablet:Z

.field private static sIsSPR:Z

.field private static sIsTabAOSupProject:Z

.field private static sIsTablet:Z

.field private static sIsVZW:Z

.field private static sOemDialerPackageName:Ljava/lang/String;

.field private static sProductName:Ljava/lang/String;

.field private static sSalesCode:Ljava/lang/String;

.field private static sSupportAboutPage:Z

.field private static sSupportAppsSearch:Z

.field private static sSupportBackgroundBlurByWindow:Z

.field private static sSupportChangeGridForDpi:Z

.field private static sSupportContextServiceSurveyMode:Z

.field private static sSupportCustomerDialerChange:Z

.field private static sSupportDeepShortcut:Z

.field private static sSupportEasyModeChange:Z

.field private static sSupportFestivalPage:Z

.field private static sSupportFlexibleGrid:Z

.field private static sSupportFolderLock:Z

.field private static sSupportFolderNSecOpen:Z

.field private static sSupportFolderSelect:Z

.field private static sSupportGSAPreWarming:Z

.field private static sSupportGalaxyAppsSearch:Z

.field private static sSupportGameHome:Z

.field private static sSupportHomeModeChange:Z

.field private static sSupportHomeModeChangeFeature:Z

.field private static sSupportHomeModeChangeIndex:I

.field private static sSupportHotword:Z

.field private static sSupportMoveToHomeAppsByDragging:Z

.field private static sSupportMoveToHomeAppsByLongPress:Z

.field private static sSupportMultiSelect:Z

.field private static sSupportNavigationBar:Z

.field private static sSupportNfcHwKeyboard:Z

.field private static sSupportNotificationPanelExpansion:Z

.field private static sSupportNotificationPanelExpansionWithHomeMoving:Z

.field private static sSupportQuickOption:Z

.field private static sSupportRotate:Z

.field private static sSupportSetToZeroPage:Z

.field private static sSupportTransitionEffect:Z

.field private static sSupportTraySwipeInteraction:Z

.field private static sSupportWallpaperTilt:Z

.field private static sSupportWidgetSetting:Z

.field private static sSupportZeroPageBezelSwipe:Z

.field private static sSupportZeroPageHome:Z

.field private static sSupportZeroPageSetting:Z

.field private static sSupportZeroPageSwitch:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    const-class v0, Lcom/android/launcher3/LauncherFeature;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChange:Z

    sput v2, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportBackgroundBlurByWindow:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFolderNSecOpen:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFestivalPage:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportQuickOption:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportDeepShortcut:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportTraySwipeInteraction:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByDragging:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByLongPress:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportGameHome:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportMultiSelect:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFolderSelect:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportEasyModeChange:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportAppsSearch:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportNotificationPanelExpansion:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportNotificationPanelExpansionWithHomeMoving:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportAboutPage:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageHome:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSwitch:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageBezelSwipe:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->mSupportSSecure:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->mSupportFolderLock:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportTransitionEffect:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportChangeGridForDpi:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportWidgetSetting:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSetting:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sIsTabAOSupProject:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sEnableStartActivityTouchDown:Z

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportSetToZeroPage:Z

    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sFloatingClockPackageName:Ljava/lang/String;

    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sCscClockPackageName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkEdgeDevice(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.samsung.app.cocktailbarservice.settings.SETTINGSMAIN"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v3, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    const-string v4, "PackageManager is null in checkEdgeDevice()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static checkNavigationBar(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v2, "config_showNavigationBar"

    const-string v3, "bool"

    const-string v4, "android"

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    :cond_0
    return-void
.end method

.method public static disableFullyHideKeypad()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    return v0
.end method

.method public static enableStartActivityTouchDown()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sEnableStartActivityTouchDown:Z

    return v0
.end method

.method public static final getCscClockPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sCscClockPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.clockpackage"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sCscClockPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getCustomerDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer.activities.main.MainActivity"

    return-object v0
.end method

.method public static getCustomerDialerPackageName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.skt.prod.dialer"

    return-object v0
.end method

.method public static final getFloatingClockPackageName()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sFloatingClockPackageName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "com.sec.android.app.clockpackage"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sFloatingClockPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOemDialerClassName()Ljava/lang/String;
    .locals 1

    const-string v0, "com.android.dialer.DialtactsActivity"

    return-object v0
.end method

.method public static getOemDialerPackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    sget-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    if-nez v4, :cond_0

    const-string v1, "com.android.contacts"

    const-string v4, "SEC_FLOATING_FEATURE_CONTACTS_CONFIG_PACKAGE_NAME"

    const-string v5, "com.android.contacts"

    invoke-static {v4, v5}, Lcom/android/launcher3/features/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "com.android.contacts"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "CscFeature_Contact_ReplacePackageAs"

    invoke-static {v4}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    return-object v4

    :cond_1
    const-string v4, "com.android.contacts"

    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v4, "com.android.contacts"

    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sOemDialerPackageName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getOmcPath()Ljava/lang/String;
    .locals 1

    const-string v0, "persist.sys.omc_path"

    invoke-static {v0}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getSupportHomeModeChangeIndex()I
    .locals 1

    sget v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    return v0
.end method

.method public static declared-synchronized init(Landroid/content/Context;)V
    .locals 8

    const-class v3, Lcom/android/launcher3/LauncherFeature;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readSystemProperties()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readCSCFeature()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->readFloatingFeature()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->setFeatureBySystemProperties()V

    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->checkNavigationBar(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->checkEdgeDevice(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/android/launcher3/LauncherFeature;->readConfigValue(Landroid/content/Context;)V

    sget-object v2, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LauncherFeature init : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isATTModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    return v0
.end method

.method public static isChinaModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    return v0
.end method

.method public static isCruiserProject()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "cruiser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsCruiserProject:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isDreamProject()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsDreamProject:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static isEdgeDevice()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsEdge:Z

    return v0
.end method

.method public static isLargeTablet()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    return v0
.end method

.method public static isSSecureSupported()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->mSupportSSecure:Z

    return v0
.end method

.method public static isSupportBadgeManage()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static isTabAOSupProject()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "gt58"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "gt58"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "gt510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "gt510"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "gt5note8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "gt5note8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "gt5note10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "gt5note10"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsTabAOSupProject:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsTabAOSupProject:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    return v0
.end method

.method public static isVZWModel()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    return v0
.end method

.method private static readCSCFeature()V
    .locals 2

    const-string v0, "CscFeature_Common_DisableGoogle"

    invoke-static {v0}, Lcom/android/launcher3/features/CscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    const-string v0, "CscFeature_Launcher_ConfigHomeAppsStructure"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    if-nez v0, :cond_0

    const-string v0, "VZW"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsVZW:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    if-nez v0, :cond_1

    const-string v0, "ATT"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsATT:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    if-nez v0, :cond_2

    const-string v0, "China"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsChinaModel:Z

    :cond_2
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    if-nez v0, :cond_3

    const-string v0, "CscFeature_Common_EnableSprintExtension"

    invoke-static {v0}, Lcom/android/launcher3/features/CscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    :cond_3
    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static readConfigValue(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "com.samsung.feature.device_category_tablet"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    const v2, 0x7f0b0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sIsLargeTablet:Z

    const v2, 0x7f0b0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    sput-boolean v2, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    return-void

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static readFloatingFeature()V
    .locals 2

    const-string v0, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_NFC_HW_KEYBOARD"

    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    const-string v0, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    const-string v0, "SEC_FLOATING_FEATURE_LAUNCHER_SUPPORT_HOME_MODE_CHANGE"

    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    const-string v0, "SEC_FLOATING_FEATURE_GRAPHICS_SUPPORT_3D_SURFACE_TRANSITION_FLAG"

    invoke-static {v0}, Lcom/android/launcher3/features/FloatingFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportBackgroundBlurByWindow:Z

    const-string v0, "SEC_FLOATING_FEATURE_CLOCK_CONFIG_PACKAGE_NAME"

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-static {v0, v1}, Lcom/android/launcher3/features/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sFloatingClockPackageName:Ljava/lang/String;

    const-string v0, "CscFeature_Clock_ConfigReplacePackage"

    const-string v1, "com.sec.android.app.clockpackage"

    invoke-static {v0, v1}, Lcom/android/launcher3/features/FloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sCscClockPackageName:Ljava/lang/String;

    return-void
.end method

.method private static readSystemProperties()V
    .locals 8

    const-string v4, ""

    const-string v1, ""

    const-string v3, ""

    const-string v0, ""

    :try_start_0
    const-string v5, "persist.omc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro.csc.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v5, "persist.omc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "ro.csc.country_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "ril.sales_code"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    const-string v5, "ro.product.name"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v5, "ro.build.flavor"

    invoke-static {v5}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move-object v4, v1

    :cond_2
    sput-object v4, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v5, ""

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    move-object v3, v0

    :cond_4
    sput-object v3, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    const-string v5, "true"

    const-string v6, "sys.config.activelaunch_enable"

    invoke-static {v6}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/launcher3/LauncherFeature;->sEnableStartActivityTouchDown:Z

    sget-boolean v5, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    if-eqz v5, :cond_5

    const-string v5, "CHZ"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHN"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHM"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHU"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CTC"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "CHC"

    sget-object v6, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const/4 v5, 0x1

    :goto_1
    sput-boolean v5, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    :cond_5
    return-void

    :catch_0
    move-exception v2

    sget-object v5, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read SalesCode or CountryCode exception occurred"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private static setFeatureBySystemProperties()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    if-nez v0, :cond_0

    const-string v0, "USA"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sCountryCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sDisableFullyHideKeypad:Z

    :cond_0
    const-string v0, "SKT"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SKC"

    sget-object v1, Lcom/android/launcher3/LauncherFeature;->sSalesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->setSupportFolderLock()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->setSupportSSecure()V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setSupportFlexibleGrid(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    return-void
.end method

.method private static setSupportFolderLock()V
    .locals 4

    const-string v1, "CscFeature_SmartManager_ConfigSubFeatures"

    invoke-static {v1}, Lcom/android/launcher3/features/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "applock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    :goto_0
    sget-object v1, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSupportFolderLock supportFolderLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    goto :goto_0
.end method

.method public static setSupportGalaxyAppsSearch(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    return-void
.end method

.method public static setSupportSSecure()V
    .locals 4

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v1

    const-string v2, "CscFeature_Common_ConfigYuva"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "sprotect"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->mSupportSSecure:Z

    :goto_0
    sget-object v1, Lcom/android/launcher3/LauncherFeature;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setSupportSSecure supportSSecure = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/LauncherFeature;->mSupportSSecure:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSupportFolderLock = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/launcher3/LauncherFeature;->mSupportFolderLock:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/LauncherFeature;->mSupportSSecure:Z

    goto :goto_0
.end method

.method public static setSupportSetToZeroPage(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportSetToZeroPage:Z

    return-void
.end method

.method static setSupportWallpaperTilt(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    return-void
.end method

.method public static supportAboutPage()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "j3y17qltez"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportAboutPage:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportAboutPage:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportAppsSearch()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportAppsSearch:Z

    return v0
.end method

.method public static supportBackgroundBlurByWindow()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportBackgroundBlurByWindow:Z

    return v0
.end method

.method static supportChangeGridForDpi()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportChangeGridForDpi:Z

    return v0
.end method

.method public static supportChinaDA()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v0

    return v0
.end method

.method public static supportContextServiceSurveyMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportContextServiceSurveyMode:Z

    return v0
.end method

.method public static supportCustomerDialerChange()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportCustomerDialerChange:Z

    return v0
.end method

.method public static supportDeepShortcut()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportDeepShortcut:Z

    return v0
.end method

.method public static supportEasyModeChange()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportEasyModeChange:Z

    return v0
.end method

.method public static supportFestivalPage()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFestivalPage:Z

    return v0
.end method

.method public static supportFlexibleGrid()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFlexibleGrid:Z

    return v0
.end method

.method public static supportFolderLock()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderLock:Z

    return v0
.end method

.method public static supportFolderNSecOpen()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderNSecOpen:Z

    return v0
.end method

.method public static supportFolderSelect()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportFolderSelect:Z

    return v0
.end method

.method public static supportGSAPreWarming()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "dream"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "gracer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "gracer"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sProductName:Ljava/lang/String;

    const-string v1, "great"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sBuildFlavor:Ljava/lang/String;

    const-string v1, "great"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    :cond_1
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGSAPreWarming:Z

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportGalaxyAppsSearch()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isVZWModel()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGalaxyAppsSearch:Z

    return v0
.end method

.method public static supportGameHome()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportGameHome:Z

    return v0
.end method

.method public static supportHomeModeChange()Z
    .locals 2

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "support_homeonly"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeFeature:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    const-string v1, "homeapps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    :goto_0
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/LauncherFeature;->sHomeAppsStructureFeature:Ljava/lang/String;

    :cond_0
    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChange:Z

    return v0

    :cond_1
    const/4 v0, 0x0

    sput v0, Lcom/android/launcher3/LauncherFeature;->sSupportHomeModeChangeIndex:I

    goto :goto_0
.end method

.method public static supportHotword()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportHotword:Z

    return v0
.end method

.method public static supportMoveToHomeAppsByDragging()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByDragging:Z

    return v0
.end method

.method public static supportMoveToHomeAppsByLongPress()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMoveToHomeAppsByLongPress:Z

    return v0
.end method

.method public static supportMultiSelect()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportMultiSelect:Z

    return v0
.end method

.method public static supportMultiSelectSlideVI()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsTablet:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportNavigationBar()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNavigationBar:Z

    return v0
.end method

.method static supportNfcHwKeyboard()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNfcHwKeyboard:Z

    return v0
.end method

.method public static supportNotificationPanelExpansion()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNotificationPanelExpansion:Z

    return v0
.end method

.method public static supportNotificationPanelExpansionWithHomeMoving()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNotificationPanelExpansion:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportNotificationPanelExpansionWithHomeMoving:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static supportQuickOption()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportQuickOption:Z

    return v0
.end method

.method public static supportRotate()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportRotate:Z

    return v0
.end method

.method public static supportSetToZeroPage()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportSetToZeroPage:Z

    return v0
.end method

.method public static supportSprintExtension()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sIsSPR:Z

    return v0
.end method

.method public static supportTransitionEffects()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportTransitionEffect:Z

    return v0
.end method

.method public static supportTraySwipeInteraction()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportTraySwipeInteraction:Z

    return v0
.end method

.method static supportWallpaperTilt()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportWallpaperTilt:Z

    return v0
.end method

.method static supportWidgetSetting()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportWidgetSetting:Z

    return v0
.end method

.method public static supportZeroPageBezelSwipe()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageBezelSwipe:Z

    return v0
.end method

.method public static supportZeroPageHome()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageHome:Z

    return v0
.end method

.method public static supportZeroPageSetting()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSetting:Z

    return v0
.end method

.method public static supportZeroPageSwitch()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/LauncherFeature;->sSupportZeroPageSwitch:Z

    return v0
.end method
