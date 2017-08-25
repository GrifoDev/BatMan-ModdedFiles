.class public Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;
.super Lcom/android/internal/app/AlertActivity;
.source "WifiApWarning.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;,
        Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;
    }
.end annotation


# static fields
.field private static final CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

.field private static final DBG:Z


# instance fields
.field private final MHS_REQUEST:I

.field private final TETHER_HELP_REQUEST:I

.field private customView:Landroid/view/View;

.field private customViewWifi:Landroid/view/View;

.field private extra_type:I

.field private isAirplaneMode:Z

.field private isHotspotOnWifiEnableWarningDoNotShowAgain:Z

.field private isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

.field private isWifiWarningDoNotShowAgain:Z

.field private key_compare:I

.field private mApDisableDialog:Landroid/app/AlertDialog;

.field private mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mCb:Landroid/widget/CheckBox;

.field public mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

.field private mDialogType:I

.field private mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIsLightTheme:Z

.field private mIsTablet:Z

.field private mNaiMismatchDialog:Landroid/app/AlertDialog;

.field private mProvisionApp:[Ljava/lang/String;

.field private mProvisionType:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPref:Landroid/content/SharedPreferences;

.field private final mTetheringProvisionApp:Ljava/lang/String;

.field mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiConfig:Landroid/net/wifi/WifiConfiguration;

.field private mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

.field private mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

.field private mWifiEnableCheck:Z

.field private mWifiEnableWarnMessage:Landroid/widget/TextView;

.field mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

.field mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

.field private mWifiInfo:Landroid/net/wifi/WifiInfo;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private nevershowagain:Z

.field private req_type:I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    return v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/SharedPreferences;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/wifi/WifiManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic -get14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return v0
.end method

.method static synthetic -get15(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    return v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/net/ConnectivityManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Lcom/samsung/android/settings/wifi/WifiApDialogSec;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)I
    .locals 1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    return v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/net/wifi/WifiConfiguration;)Landroid/net/wifi/WifiConfiguration;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    return-object p1
.end method

.method static synthetic -set3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    return-void
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->turnOnExtender()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->handleWifiApStateChanged(I)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/settings/Utils;->MHSDBG:Z

    sput-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_ConfigOpBranding"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->nevershowagain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->key_compare:I

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iput v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->MHS_REQUEST:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->TETHER_HELP_REQUEST:I

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Setting_ConfigMobileHotspotProvisionApp"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$1;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$2;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    iput-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method private afterAttentionDialog()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_EnableWarningPopup4DataBatteryUsage"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterBatteryDialog()V

    goto :goto_0
.end method

.method private afterBatteryDialog()V
    .locals 3

    const/4 v0, 0x1

    const-string/jumbo v1, "TMO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "NEWCO"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    const-string/jumbo v2, "\tUSER#DEFINED#PWD#\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->get(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Dialog create during first time Mobile HotSpot at TMO"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0x1d

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_1
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->disableWifiDialog()V

    :cond_2
    return-void
.end method

.method private disableWifiDialog()V
    .locals 10

    const/16 v9, 0x1f

    const/16 v8, 0x1e

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v7, "wifi_display_on"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_1

    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v4, "TMO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "NEWCO"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v5}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    sget-object v4, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/NetworkInfo$DetailedState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "WiFi p2p is connected. Create dailog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_5
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v3

    if-eq v3, v5, :cond_7

    if-eqz v3, :cond_7

    const/4 v4, 0x4

    if-eq v3, v4, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pEnabled()Z

    move-result v4

    if-eqz v4, :cond_e

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "WifiApWarning WiFi p2p is connected. Create dailog"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isP2pConnected()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_8
    const-string/jumbo v4, "VZW"

    sget-object v7, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "WIFI_WARNING_DO_NOTSHOW_AGAIN"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v5, :cond_9

    move v4, v5

    :goto_1
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "wifi_saved_state"

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v6}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    const-wide/16 v4, 0x258

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    :cond_9
    move v4, v6

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    :cond_a
    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiWarningDoNotShowAgain:Z

    if-nez v4, :cond_0

    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    :cond_b
    invoke-direct {p0, v8}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    :cond_c
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0

    :cond_d
    invoke-direct {p0, v9}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_0

    :cond_e
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_0
.end method

.method private dismissProgressDialog(I)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "dismissProgressDialog, id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xa

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v1, 0xb

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_3
    const/16 v1, 0x23

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x25

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->dismiss()V

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method private getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    const-string/jumbo v2, "MHSNoProvisionPreferences"

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getBooleanFromSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getPwd()Ljava/lang/String;
    .locals 20

    const/4 v15, 0x0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v17, "key"

    const-string/jumbo v18, "12345678123456781234567812345678"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v14, Landroid/os/Message;

    invoke-direct {v14}, Landroid/os/Message;-><init>()V

    const/16 v17, 0x27

    move/from16 v0, v17

    iput v0, v14, Landroid/os/Message;->what:I

    iput-object v2, v14, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/net/wifi/WifiManager;->callSECStringApi(Landroid/os/Message;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v17, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v17, :cond_0

    const-string/jumbo v17, "WifiApWarning"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "hexString is "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v11, :cond_1

    const-string/jumbo v17, "WifiApWarning"

    const-string/jumbo v18, "hexString is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v17, 0x0

    return-object v17

    :cond_1
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    div-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    new-array v10, v0, [B

    const/4 v12, 0x0

    :goto_0
    array-length v0, v10

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v12, v0, :cond_2

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v18, v12, 0x2

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, ""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    mul-int/lit8 v18, v12, 0x2

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/lang/String;->charAt(I)C

    move-result v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x10

    invoke-static/range {v17 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    and-int/lit16 v0, v0, 0xff

    move/from16 v17, v0

    move/from16 v0, v17

    int-to-byte v0, v0

    move/from16 v17, v0

    aput-byte v17, v10, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    new-instance v13, Ljavax/crypto/spec/SecretKeySpec;

    const-string/jumbo v17, "12345678123456781234567812345678"

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const-string/jumbo v18, "AES"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v13, v0, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    const-string/jumbo v17, "AES"

    invoke-static/range {v17 .. v17}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v3

    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v3, v10}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v4

    new-instance v16, Ljava/lang/String;

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/String;-><init>([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v15, v16

    :goto_1
    return-object v15

    :catch_0
    move-exception v7

    invoke-virtual {v7}, Ljavax/crypto/BadPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v8

    invoke-virtual {v8}, Ljavax/crypto/IllegalBlockSizeException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/security/InvalidKeyException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v9

    invoke-virtual {v9}, Ljavax/crypto/NoSuchPaddingException;->printStackTrace()V

    goto :goto_1

    :catch_4
    move-exception v6

    invoke-virtual {v6}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_1
.end method

.method private getRvfMode()I
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1c

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v0

    return v0
.end method

.method private getSecurityType(Ljava/lang/String;)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    const-string/jumbo v6, "WifiApWarning"

    const-string/jumbo v7, "getSecurityType"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, ""

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v6}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_5

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string/jumbo v6, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "wSec : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_2
    :goto_1
    sget-boolean v6, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v6, :cond_3

    const-string/jumbo v6, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "smallString[0] : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-object v5

    :cond_4
    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->removeSquareBrackets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "\\]\\["

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    :cond_5
    return-object v8
.end method

.method private handleWifiApStateChanged(I)V
    .locals 8

    const/16 v7, 0xa

    const/16 v6, 0xb

    const/4 v5, 0x1

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received intent to disable pop up and state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    :cond_0
    const/16 v2, 0xc

    if-ne p1, v2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/16 v2, 0xd

    if-ne p1, v2, :cond_2

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_7

    if-ne p1, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v2, :cond_6

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v2, v5, :cond_6

    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v2, v5, :cond_5

    goto :goto_1

    :cond_7
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/16 v3, 0x32

    if-ne v2, v3, :cond_2

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Received intent to disable pop up DIALOG_WIFI_P2P_ENABLE_WARNING"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v6, :cond_2

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "WIFI AP State disabled and p2p enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.samsung.android.intent.action.WIFI_P2P_LAUNCH"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :goto_2
    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v2

    if-eqz v2, :cond_a

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0

    :cond_9
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto :goto_2

    :cond_a
    invoke-virtual {v1, v5}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    goto :goto_3
.end method

.method private isLTEMode()Z
    .locals 5

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, " isLTEMode() network="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "LTE"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public static isMetroPCS()Z
    .locals 2

    const-string/jumbo v0, "NEWCO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isMobileApON()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi Manager is null so returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    return v3
.end method

.method private isP2pConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pConnected()Z

    move-result v0

    return v0
.end method

.method private isP2pEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0}, Landroid/net/wifi/p2p/WifiP2pManager;->isWifiP2pEnabled()Z

    move-result v0

    return v0
.end method

.method private isProvisioningCheck()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Provisioning.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isSimCheck()Z
    .locals 2

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SimCheck.disable"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isTMO()Z
    .locals 2

    const-string/jumbo v0, "TMO"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiConnected()Z
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v1, :cond_0

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const-string/jumbo v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "wifi is connected to AP and wifiInfo is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :cond_1
    return v3
.end method

.method private isWifiSharingEnabled()Z
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Returning true"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "wifi_ap_wifi_sharing"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Returning false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v1, "WifiApWarning"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error in getting provider value"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v4
.end method

.method private preProvisioning()V
    .locals 7

    const/4 v6, 0x1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming()Z

    move-result v0

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isSimCheck() "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "MTR"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isLTEMode()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isSimCheck()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    const/4 v4, 0x5

    if-eq v3, v4, :cond_1

    const-string/jumbo v3, "READY"

    const-string/jumbo v4, "gsm.sim.state"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_1
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    if-eqz v0, :cond_2

    const-string/jumbo v3, "us"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_2
    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    :goto_0
    return-void

    :cond_3
    const/16 v3, 0x18

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->secSetSoftapEnabled(Z)V

    goto :goto_0

    :cond_5
    const/16 v3, 0x19

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0

    :cond_6
    const/16 v3, 0x1a

    invoke-direct {p0, v3}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0
.end method

.method private putBooleanSharedPreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 5

    const-string/jumbo v2, "MHSNoProvisionPreferences"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v2, "WifiApWarning"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "putSharedPreference - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private removeSquareBrackets(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    const/4 v3, 0x1

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5b

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x5d

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    return-object p1
.end method

.method private secSetSoftapEnabled(Z)V
    .locals 3

    const/16 v2, 0xa

    if-eqz p1, :cond_1

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string/jumbo v1, "CscFeature_Wifi_DisableMobileApWifiConcurrency"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->afterAttentionDialog()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "wifi_ap_wifi_sharing"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto :goto_0
.end method

.method private sendBroadcastCancelEnablingWifi()V
    .locals 3

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "sendBroadcastCancelEnablingWifi"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sendBroadcastEnablingHotspotCancel()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.net.wifi.WIFI_DIALOG_CANCEL_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "called_dialog"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setRvfMode(I)V
    .locals 3

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/16 v2, 0x1b

    iput v2, v1, Landroid/os/Message;->what:I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "mode"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    return-void
.end method

.method private setSoftapEnabled(Z)V
    .locals 10

    const/4 v9, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v3

    if-eqz p1, :cond_2

    const/16 v4, 0xc

    if-eq v3, v4, :cond_0

    const/16 v4, 0xd

    if-ne v3, v4, :cond_2

    :cond_0
    iget v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "provisioning sucess"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "airplane_mode_on"

    invoke-static {v0, v4, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    const-string/jumbo v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSoftapEnabled(enable), isAirplaneMode = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    iget-boolean v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isAirplaneMode:Z

    if-eqz v4, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_3
    move v4, v6

    goto :goto_0

    :cond_4
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getRvfMode()I

    move-result v4

    if-lez v4, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v7, "setRvfMode(0) for Hotspot configuration"

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string/jumbo v4, "WifiApWarning"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setSoftapEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v7, "SAMSUNG_HOTSPOT"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v7, "PROVISIONING_RESULT"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v4, "WifiApWarning"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "value of provisioning result is  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sput-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApBroadcastReceiver;->mIsProvisioningResultOk:Z

    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string/jumbo v4, "PROVISIONING_RESULT"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string/jumbo v4, "WifiApWarning"

    const-string/jumbo v5, "setting the value of provision result to 1"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v4, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v9, p1}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    if-eqz p1, :cond_8

    const/16 v4, 0xa

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_8
    return-void
.end method

.method private setWpaPwd()Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getPwd()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v0, ""

    if-eqz v2, :cond_0

    const-string/jumbo v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    aget-object v3, v1, v7

    invoke-static {v3}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    sget-boolean v3, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "WifiApWarning"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Pwd : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string/jumbo v3, "WifiApWarning"

    const-string/jumbo v4, "Cannot setWPA password for Extender!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_3
    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v3, v6}, Ljava/util/BitSet;->set(I)V

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v0, v3, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    return v7
.end method

.method private showFirstTimePoup(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f04037a

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v5, 0x7f1108c3

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    const v5, 0x7f110862

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCb:Landroid/widget/CheckBox;

    const v5, 0x7f1108c2

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0ef8

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$51;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$52;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v6, 0x7f0b173a

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$53;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v6, 0x7f0b173b

    invoke-virtual {v0, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$54;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0efa

    invoke-static {v5, v6}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;
    .locals 26

    const-string/jumbo v23, "connectivity"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v16

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v17

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v15

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    if-eqz v15, :cond_0

    const-string/jumbo v23, "html/%y%z/tethering_help.html"

    const-string/jumbo v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    const-string/jumbo v23, "%z"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v20

    :cond_0
    const/16 v22, 0x1

    const/4 v14, 0x0

    :try_start_0
    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v14

    if-eqz v14, :cond_1

    :try_start_1
    invoke-virtual {v14}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    if-eqz v15, :cond_2

    const-string/jumbo v23, "html/%y%z/tethering_%xhelp.html"

    const-string/jumbo v24, "%y"

    invoke-virtual {v15}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v23 .. v25}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    const-string/jumbo v24, "%z"

    if-eqz v22, :cond_4

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v25, 0x5f

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual {v15}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    :goto_1
    move-object/from16 v0, v21

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :cond_2
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_6

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_6

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_5

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    :goto_2
    const-string/jumbo v23, "WifiApWarning"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "Tethering Help url : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    :try_start_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v13

    new-instance v19, Ljava/lang/StringBuffer;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v23, 0x1000

    move/from16 v0, v23

    new-array v4, v0, [B

    :goto_3
    invoke-virtual {v13, v4}, Ljava/io/InputStream;->read([B)I

    move-result v18

    const/16 v23, -0x1

    move/from16 v0, v18

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    new-instance v23, Ljava/lang/String;

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v18

    invoke-direct {v0, v4, v1, v2}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catch_0
    move-exception v9

    :try_start_3
    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v23, 0x0

    if-eqz v13, :cond_3

    :try_start_4
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_3
    :goto_4
    return-object v23

    :catch_1
    move-exception v11

    goto/16 :goto_0

    :catch_2
    move-exception v11

    const/16 v22, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    throw v23

    :cond_4
    const-string/jumbo v23, ""

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_7

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-nez v23, :cond_7

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "wifi_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_9

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v23, v0

    if-eqz v23, :cond_9

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v23

    if-eqz v23, :cond_8

    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_mtr_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_8
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, "usb_wifi_tmo_"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_9
    const-string/jumbo v23, "%x"

    const-string/jumbo v24, ""

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v21

    goto/16 :goto_2

    :cond_a
    :try_start_5
    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v10

    if-eqz v13, :cond_b

    :try_start_6
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_b
    :goto_5
    const-string/jumbo v23, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/view/LayoutInflater;

    const v23, 0x7f0400d7

    const/16 v24, 0x0

    move/from16 v0, v23

    move-object/from16 v1, v24

    invoke-virtual {v12, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v23, 0x7f1102c9

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    const v23, 0x7f11018f

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-static {v10}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v24, 0x7f0b1a90

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$55;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v25, 0x104000a

    move-object/from16 v0, v23

    move/from16 v1, v25

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    new-instance v24, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$56;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v23 .. v24}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v23

    return-object v23

    :catch_3
    move-exception v11

    goto/16 :goto_5

    :catch_4
    move-exception v11

    goto/16 :goto_4

    :catchall_1
    move-exception v23

    if-eqz v13, :cond_c

    :try_start_7
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_c
    :goto_6
    throw v23

    :catch_5
    move-exception v11

    goto :goto_6
.end method

.method private showNextHotspotDialog(I)V
    .locals 39

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_1
    :goto_1
    return-void

    :pswitch_1
    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_1

    :pswitch_2
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v27, Landroid/widget/TextView;

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0fa1

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v35, v0

    if-nez v35, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    move/from16 v35, v0

    if-eqz v35, :cond_3

    :cond_2
    :goto_2
    const/high16 v35, 0x41800000    # 16.0f

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    const/high16 v35, 0x41a00000    # 20.0f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v36

    const/16 v37, 0x1

    move/from16 v0, v37

    move/from16 v1, v35

    move-object/from16 v2, v36

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v35

    move/from16 v0, v35

    float-to-int v0, v0

    move/from16 v25, v0

    const/16 v35, 0x1e

    const/16 v36, 0x1e

    move-object/from16 v0, v27

    move/from16 v1, v25

    move/from16 v2, v35

    move/from16 v3, v25

    move/from16 v4, v36

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/high16 v35, 0x40000000    # 2.0f

    const/high16 v36, 0x3f800000    # 1.0f

    move-object/from16 v0, v27

    move/from16 v1, v35

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setLineSpacing(FF)V

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v35

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    move-object/from16 v0, v27

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$9;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b0459

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$10;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$11;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v35

    const v36, 0x7f0d020a

    invoke-virtual/range {v35 .. v36}, Landroid/content/res/Resources;->getColor(I)I

    move-result v35

    move-object/from16 v0, v27

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_2

    :pswitch_3
    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v5, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0fa2

    move/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$12;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v5, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$13;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0fd5

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_4
    new-instance v22, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/settings/Utils;->isChinaCTCModel()Z

    move-result v35

    if-eqz v35, :cond_4

    const v35, 0x7f0b0fa3

    move-object/from16 v0, v22

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_3
    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$14;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v22

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$15;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0fc9

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v22 .. v22}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0fd1

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_3

    :pswitch_5
    new-instance v24, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const/16 v36, 0x1

    move/from16 v0, v36

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v36, v0

    const-string/jumbo v37, "$20.48"

    const/16 v38, 0x0

    aput-object v37, v36, v38

    const v37, 0x7f0b0fa4

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$16;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b16dc

    move-object/from16 v0, v24

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$17;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v24

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v35, 0x7f0b0fa5

    move-object/from16 v0, v24

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v24 .. v24}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_6
    const-string/jumbo v8, "file:///android_asset/html/%y/tethering_attention.html"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v21

    new-instance v9, Landroid/webkit/WebView;

    move-object/from16 v0, p0

    invoke-direct {v9, v0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    if-eqz v21, :cond_5

    invoke-virtual/range {v21 .. v21}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v35

    const-string/jumbo v36, "ja"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_6

    const-string/jumbo v20, "ja"

    :goto_4
    const-string/jumbo v35, "%y"

    move-object/from16 v0, v35

    move-object/from16 v1, v20

    invoke-virtual {v8, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v9, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_5
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$18;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$19;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$20;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    const v35, 0x1040014

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const/16 v35, 0x0

    move/from16 v0, v35

    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v20, "en"

    goto :goto_4

    :pswitch_7
    new-instance v10, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v10, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0fbd

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$21;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$22;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v10, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$23;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0fd5

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_8
    const-string/jumbo v35, "WifiApWarning"

    const-string/jumbo v36, "DIALOG_FIRST_TIME_CONFIGURE create"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v35, Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConfigureDialogListener:Landroid/content/DialogInterface$OnClickListener;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiConfig:Landroid/net/wifi/WifiConfiguration;

    move-object/from16 v37, v0

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    move-object/from16 v3, v37

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Landroid/net/wifi/WifiConfiguration;)V

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v35, v0

    new-instance v36, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$24;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v35 .. v36}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->show()V

    goto/16 :goto_1

    :pswitch_9
    new-instance v23, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0f34

    move-object/from16 v0, v23

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    new-instance v36, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$25;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v37, 0x7f0b0683

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    new-instance v36, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$26;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v37, 0x7f0b173b

    move-object/from16 v0, v35

    move/from16 v1, v37

    move-object/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    new-instance v36, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$27;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual/range {v35 .. v36}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :pswitch_a
    new-instance v29, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v29

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string/jumbo v35, "VZW"

    sget-object v36, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f04037c

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f1108cf

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/LinearLayout;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f1108d0

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v35

    check-cast v35, Landroid/widget/CheckBox;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiDisableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v35, v0

    const v36, 0x7f1108ce

    invoke-virtual/range {v35 .. v36}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v32

    check-cast v32, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0f2d

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customView:Landroid/view/View;

    move-object/from16 v35, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :goto_5
    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$28;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v29

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$29;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v29

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$30;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v35

    if-eqz v35, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0f2f

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    :cond_7
    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v29 .. v29}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0f2d

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_5

    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string/jumbo v36, "dontshowmemhsfirsttime"

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getBooleanFromSharedPreference(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-static/range {v35 .. v35}, Lcom/samsung/android/emergencymode/SemEmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v35

    if-eqz v35, :cond_a

    :cond_9
    const/16 v35, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    move/from16 v35, v0

    if-nez v35, :cond_9

    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showFirstTimePoup(Landroid/content/Context;)V

    goto/16 :goto_1

    :pswitch_c
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showMetorPCSHelpPoup(Landroid/content/Context;)Landroid/app/AlertDialog;

    move-result-object v15

    if-eqz v15, :cond_1

    invoke-virtual {v15}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :pswitch_d
    new-instance v31, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v31

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0f40

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$31;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b0fa7

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$32;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v31

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$33;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v31

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v31 .. v31}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v31 .. v31}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_e
    new-instance v28, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0fa8

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$34;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b0fa7

    move-object/from16 v0, v28

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$35;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v28

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$36;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v28

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v28 .. v28}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_f
    new-instance v30, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f040380

    const/16 v37, 0x0

    invoke-static/range {v35 .. v37}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    const v35, 0x7f1108d7

    move/from16 v0, v35

    invoke-virtual {v13, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/CheckBox;

    const v35, 0x7f0b0ef6

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v30

    invoke-virtual {v0, v13}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$37;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v30

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$38;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v30

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v30 .. v30}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_10
    new-instance v18, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0f4b

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v35, 0x7f0b0f4c

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$39;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v18

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$40;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v18

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$41;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v18

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_11
    new-instance v17, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v35

    if-nez v35, :cond_b

    const v35, 0x7f0b0f2d

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_6
    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$42;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v17

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$43;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v17

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$44;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v17 .. v17}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :cond_b
    const v35, 0x7f0b0f50

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v35, 0x7f0b0f51

    move-object/from16 v0, v17

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_6

    :pswitch_12
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v35, 0x7f0b0f4e

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v35, 0x7f0b0f4d

    move-object/from16 v0, v19

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$45;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v19

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$46;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v36, 0x7f0b173b

    move-object/from16 v0, v19

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$47;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v19 .. v19}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_13
    new-instance v34, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const-string/jumbo v36, "layout_inflater"

    invoke-virtual/range {v35 .. v36}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/view/LayoutInflater;

    const v35, 0x7f04037f

    const/16 v36, 0x0

    move/from16 v0, v35

    move-object/from16 v1, v36

    invoke-virtual {v14, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v35, 0x7f1108d5

    move/from16 v0, v35

    invoke-virtual {v12, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    check-cast v33, Landroid/widget/CheckBox;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    move-object/from16 v35, v0

    const v36, 0x7f0b0ef0

    invoke-static/range {v35 .. v36}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v34

    invoke-virtual {v0, v12}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v33

    invoke-direct {v0, v1, v2, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$48;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/widget/CheckBox;Landroid/content/ContentResolver;)V

    const v36, 0x7f0b173a

    move-object/from16 v0, v34

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$49;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    const v36, 0x7f0b12f0

    move-object/from16 v0, v34

    move/from16 v1, v36

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v35, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v11}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$50;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;Landroid/content/ContentResolver;)V

    invoke-virtual/range {v34 .. v35}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    invoke-virtual/range {v34 .. v34}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    if-eqz v35, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    const/16 v37, 0x1

    invoke-virtual/range {v35 .. v37}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_d
        :pswitch_14
        :pswitch_e
        :pswitch_9
        :pswitch_0
        :pswitch_12
    .end packed-switch
.end method

.method private showProgressDialog(I)V
    .locals 5

    const/4 v4, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_0

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0ee6

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/16 v1, 0xb

    if-ne p1, v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_3

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v3, 0x7f0b0eeb

    invoke-static {v2, v3}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiApTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_4
    const/16 v1, 0x23

    if-ne p1, v1, :cond_6

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_5

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0f52

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOnDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto :goto_0

    :cond_6
    const/16 v1, 0x25

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    if-nez v1, :cond_7

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    :cond_7
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0f53

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v4}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiExtenderTurningOffDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->show()V

    goto/16 :goto_0
.end method

.method private startProvisioningIfNecessary(I)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xa

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "startActivityForResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "received exception provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private startProvisioningIfNecessary(II)V
    .locals 6

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningNeeded()Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v2, "TETHER_TYPE"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x800000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "startActivityForResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isTMO()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMetroPCS()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/16 v2, 0xf

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "received exception provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :try_start_1
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private turnOnExtender()V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiInfo:Landroid/net/wifi/WifiInfo;

    invoke-virtual {v5}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/wifi/WifiInfo;->removeDoubleQuotes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v0, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    new-instance v5, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v5}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    iput-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v1, v5, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getSecurityType(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    aget-object v5, v2, v7

    if-nez v5, :cond_1

    :cond_0
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Invalid Security mode!! Wi-Fi Extender cannot be activated!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    aget-object v5, v2, v7

    if-eqz v5, :cond_3

    aget-object v5, v2, v7

    const-string/jumbo v6, "WPA2-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setWpaPwd()Z

    move-result v5

    if-nez v5, :cond_2

    return-void

    :cond_2
    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    array-length v5, v2

    if-le v5, v8, :cond_5

    aget-object v5, v2, v8

    if-eqz v5, :cond_5

    aget-object v5, v2, v8

    const-string/jumbo v6, "WPA2-"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, v2, v8

    const-string/jumbo v6, "TKIP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    invoke-virtual {v5, v9}, Ljava/util/BitSet;->set(I)V

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_4

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2 TKIP in WPA/WPA2 mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    aget-object v5, v2, v8

    const-string/jumbo v6, "CCMP"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedGroupCiphers:Ljava/util/BitSet;

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->set(I)V

    sget-boolean v5, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Set to WPA2 CCMP in WPA/WPA2 mode"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mCurrentWifiApConfig:Landroid/net/wifi/WifiConfiguration;

    iget v6, v6, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    iput v6, v5, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    :goto_1
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v5, 0xc5

    iput v5, v3, Landroid/os/Message;->what:I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput-object v5, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput v8, v3, Landroid/os/Message;->arg1:I

    iput v9, v3, Landroid/os/Message;->arg2:I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v3}, Landroid/net/wifi/WifiManager;->callSECApi(Landroid/os/Message;)I

    move-result v4

    if-nez v4, :cond_8

    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Start Extender mode in Reset AP cmd"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_6
    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v5, v7}, Ljava/util/BitSet;->set(I)V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "Setting Extender Config to channel 0"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mExtenderConfig:Landroid/net/wifi/WifiConfiguration;

    iput v7, v5, Landroid/net/wifi/WifiConfiguration;->semChannel:I

    goto :goto_1

    :cond_8
    const-string/jumbo v5, "WifiApWarning"

    const-string/jumbo v6, "CMD_RESET_AP failure. Extender Mode cannot be started!!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v7}, Landroid/net/wifi/WifiManager;->setExtenderMode(I)Z

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setRvfMode(I)V

    goto :goto_2
.end method


# virtual methods
.method isProvisioningNeeded()Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isProvisioningCheck()Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    const-string/jumbo v1, "net.tethering.noprovisioning"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    if-nez v1, :cond_2

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mTetheringProvisionApp:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    return v0

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "VZW"

    sget-object v2, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi is connected so skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    const-string/jumbo v1, "WifiApWarning"

    const-string/jumbo v2, "Wifi is not connected so dont skip provisioning for Wifi Sharing"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    array-length v1, v1

    if-ne v1, v3, :cond_6

    const/4 v0, 0x1

    :cond_6
    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    const/16 v6, 0xa

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/AlertActivity;->onActivityResult(IILandroid/content/Intent;)V

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "onActivityResult"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v4, p1, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_4

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Setting provision success"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_2

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Dismissing Progress Dialog DIALOG_PROGRESS_ENABLE_HOTSPOT"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Wifi Sharing Mobile Ap already ON so return"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_3
    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v5}, Landroid/net/wifi/WifiManager;->setProvisionSuccess(Z)Z

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Setting provision failed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiSharingEnabled()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isWifiConnected()Z

    move-result v2

    if-eqz v2, :cond_7

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_5

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    :cond_5
    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "Wifi Sharing Provision failed but wifi connected"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isMobileApON()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setSoftapEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_7
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-ne v1, v4, :cond_8

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_saved_state"

    invoke-static {v2, v3, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_8
    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_a

    const-string/jumbo v2, "WifiApWarning"

    const-string/jumbo v3, "WifiAp is disabled: provisioning fail"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    iget v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v3, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-eq v2, v3, :cond_9

    invoke-direct {p0, v6}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->dismissProgressDialog(I)V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_a
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f1108d3

    if-ne v0, v1, :cond_0

    iput-boolean p2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    const-string/jumbo v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCheckedChanged mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "wifi"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiManager;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo v7, "wifip2p"

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "connectivity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsTablet:Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIsLightTheme:Z

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x107003a

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionApp:[Ljava/lang/String;

    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v7, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v8, "com.samsung.android.net.wifi.WIFI_EXTENDER_STATE_CHANGED"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    const-string/jumbo v8, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v9, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v4}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "com.samsung.android.settings.wifi.mobileap.wifiapwarning"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string/jumbo v7, "wifiap_warning_dialog_type"

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const-string/jumbo v7, "req_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const-string/jumbo v7, "extra_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const-string/jumbo v7, "wifiap_provision_dialog_type"

    const/4 v8, -0x1

    invoke-virtual {v4, v7, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    iput v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    if-eqz p1, :cond_0

    const-string/jumbo v7, "wifi_enablewarning_check_mode"

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    :cond_0
    iget-object v6, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    sparse-switch v7, :sswitch_data_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_1
    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "Error: this activity may be started only with intent"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :sswitch_0
    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "DIALOG_HOTSPOT_NO_DATA"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_1
    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "DIALOG_NAI_MISMATCH"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_2
    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "DIALOG_TETHERING_DENIED"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b0f1f

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    const v7, 0x7f0b0f23

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    :goto_0
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x1

    if-eq v7, v8, :cond_2

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x3

    if-eq v7, v8, :cond_2

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$3;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v8, 0x7f0b173b

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$4;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v8, 0x104000a

    invoke-virtual {v0, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$5;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_5

    const v7, 0x7f0b0f21

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :cond_5
    const v7, 0x7f0b0f22

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    :sswitch_3
    const-string/jumbo v7, "WifiApWarning"

    const-string/jumbo v8, "Received intent to show DIALOG_WIFI_P2P_ENABLE_WARNING "

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :sswitch_4
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/settings/Utils;->isLightTheme(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_6

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v9, 0x103012b

    invoke-direct {v7, v8, v9}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    :cond_6
    const/4 v7, 0x0

    iput-object v7, v6, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const/4 v7, 0x0

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setVisible(Z)V

    move-object v1, p0

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_9

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_9

    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f04037d

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v9, 0x7f0b0f9a

    invoke-static {v8, v9}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_7
    :goto_2
    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$6;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const v8, 0x104000a

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$7;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v7, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;

    invoke-direct {v7, p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning$8;-><init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;)V

    const/high16 v8, 0x1040000

    invoke-virtual {v5, v8, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_18

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_12

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_12

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "SAMSUNG_HOTSPOT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "HOTSPOT_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_10

    const/4 v7, 0x1

    :goto_3
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0f9e

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    const/16 v7, 0xb

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showProgressDialog(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    goto/16 :goto_1

    :cond_8
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0eb4

    invoke-static {v7, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_2

    :cond_9
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_a

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_a

    const v7, 0x7f0b0ebb

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const v7, 0x7f0b0ebc

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_a
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/16 v8, 0xa

    if-ne v7, v8, :cond_b

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/16 v8, 0xb

    if-ne v7, v8, :cond_b

    :cond_b
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_c

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_c

    const v7, 0x7f0b0ebe

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_c
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_d

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_d

    const v7, 0x7f0b0ebf

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_d
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_e

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-nez v7, :cond_e

    const v7, 0x7f0b0ec0

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_e
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_7

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_7

    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f04037d

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d2

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgainLayout:Landroid/widget/LinearLayout;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d1

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableWarnMessage:Landroid/widget/TextView;

    const v8, 0x7f0b0ecd

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    const v8, 0x7f1108d3

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    iget-boolean v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApEnableWarnDoNotShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->customViewWifi:Landroid/view/View;

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_f
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const v8, 0x7f0b0f2d

    invoke-static {v7, v8}, Lcom/samsung/android/settings/WifiApUtils;->getString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/16 :goto_2

    :cond_10
    const/4 v7, 0x0

    goto/16 :goto_3

    :cond_11
    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isHotspotOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v7, :cond_3

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_12
    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v7, :cond_17

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v8, 0x4

    if-ne v7, v8, :cond_17

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "SAMSUNG_HOTSPOT"

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mSharedPref:Landroid/content/SharedPreferences;

    const-string/jumbo v8, "USBTETHER_WIFI_ENABLE_WARNING_DO_NOTSHOW_AGAIN"

    const/4 v9, 0x0

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_15

    const/4 v7, 0x1

    :goto_4
    iput-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->setUsbTethering(Z)I

    :cond_13
    const-wide/16 v8, 0x258

    :try_start_0
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_5
    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v7, :cond_14

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    :cond_14
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    return-void

    :cond_15
    const/4 v7, 0x0

    goto :goto_4

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    :cond_16
    iget-boolean v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->isUsbTetherOnWifiEnableWarningDoNotShowAgain:Z

    if-nez v7, :cond_3

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_17
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :cond_18
    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    iput-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mApDisableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v7}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_1

    :sswitch_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const-string/jumbo v7, "USC"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_19

    const/16 v7, 0x17

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1

    :cond_19
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->preProvisioning()V

    goto/16 :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    iget v8, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v7, v8, :cond_1a

    iget v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mProvisionType:I

    const/4 v8, 0x0

    invoke-direct {p0, v8, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(II)V

    goto/16 :goto_1

    :cond_1a
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->startProvisioningIfNecessary(I)V

    goto/16 :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const-string/jumbo v7, "VZW"

    sget-object v8, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x7

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isExtenderEnabled()Z

    move-result v7

    if-nez v7, :cond_1b

    iget-object v7, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v7

    if-eqz v7, :cond_1b

    const/16 v7, 0x8

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1

    :cond_1b
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->turnOnExtender()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto/16 :goto_1

    :sswitch_9
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const/16 v7, 0x24

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1

    :sswitch_a
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setupAlert()V

    const v7, 0x7f0f0241

    invoke-virtual {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->setTheme(I)V

    const/16 v7, 0x9

    invoke-direct {p0, v7}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->showNextHotspotDialog(I)V

    goto/16 :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_a
        0x24 -> :sswitch_9
        0x32 -> :sswitch_3
    .end sparse-switch
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastEnablingHotspotCancel()V

    :cond_0
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_1
    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPause()V
    .locals 2

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onPause()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mNaiMismatchDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    if-eqz v0, :cond_2

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "mDialogConfigure.dismiss()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v0}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->dismiss()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->finish()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onResume()V

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const/4 v2, 0x4

    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    if-ne v0, v2, :cond_0

    const-string/jumbo v0, "VZW"

    sget-object v1, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->CSC_CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :goto_0
    const-string/jumbo v0, "WifiApWarning"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick mWifiEnableCheck ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "wifi_enablewarning_check_mode"

    iget-boolean v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mWifiEnableCheck:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    return-void

    :cond_1
    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->req_type:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->extra_type:I

    if-ne v0, v2, :cond_0

    goto :goto_0
.end method

.method protected onUserLeaveHint()V
    .locals 2

    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onUserLeaveHint()V

    iget v0, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "WifiApWarning"

    const-string/jumbo v1, "sendBroadcastCancelEnablingWifi when user click HOME key"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->sendBroadcastCancelEnablingWifi()V

    :cond_1
    return-void
.end method

.method public saveIsShowPassword()V
    .locals 3

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "wifi_ap_show_passwd"

    iget-object v1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApWarning;->mDialogConfigure:Lcom/samsung/android/settings/wifi/WifiApDialogSec;

    invoke-virtual {v1}, Lcom/samsung/android/settings/wifi/WifiApDialogSec;->getCheckShowPassword()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method
