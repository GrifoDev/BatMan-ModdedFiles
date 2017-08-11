.class public Lcom/android/systemui/qs/tiles/PowerPlanningTile;
.super Lcom/android/systemui/qs/QSTile;
.source "PowerPlanningTile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;,
        Lcom/android/systemui/qs/tiles/PowerPlanningTile$2;,
        Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/QSTile",
        "<",
        "Lcom/android/systemui/qs/QSTile$BooleanState;",
        ">;"
    }
.end annotation


# static fields
.field private static final ACTION_OPEN_BATTERY:Ljava/lang/String; = "com.samsung.android.sm.ACTION_BATTERY"

.field private static final ACTION_RESERVE_BATTERY_MODE_CHANGED:Ljava/lang/String; = "com.samsung.android.app.powerplanning.RESERVE_BATTERY_MAX_MODE"

.field private static final POWERPLANNING_PERMISSION_SETTINGS:Landroid/content/Intent;

.field private static final SETTING_SEEK_DEFAULT:I = 0xf

.field private static final TAG:Ljava/lang/String; = "PowerPlanningTile"

.field private static sRequiredPermissions:[Ljava/lang/String;


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCalling:Z

.field private final mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

.field private mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

.field private final mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

.field private mListening:Z

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

.field private mTM:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCalling:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCalling:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->showNotificationDialog()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "com.samsung.android.app.powerplanning"

    const-string/jumbo v2, "com.samsung.android.app.powerplanning.ui.PermissionActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->POWERPLANNING_PERMISSION_SETTINGS:Landroid/content/Intent;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.permission.READ_CONTACTS"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.CALL_PHONE"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.permission.SEND_SMS"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->sRequiredPermissions:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSTile$Host;)V
    .locals 6

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Lcom/android/systemui/qs/QSTile;-><init>(Lcom/android/systemui/qs/QSTile$Host;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCalling:Z

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$1;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$2;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$3;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "reserve_battery_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$3;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$4;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "commute_battery_on"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$4;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$5;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHandler:Lcom/android/systemui/qs/QSTile$H;

    const-string/jumbo v4, "forward_call_notification_ON"

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$5;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;

    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;Lcom/android/systemui/qs/tiles/PowerPlanningTile$PowerPlanningDetailAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v3, 0x20

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v5, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private isPowerPlanningEnabled()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v1}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v1

    if-eq v1, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private sendPermissionActivity()V
    .locals 2

    const-string/jumbo v0, "PowerPlanningTile"

    const-string/jumbo v1, "sendPermissionActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    sget-object v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->POWERPLANNING_PERMISSION_SETTINGS:Landroid/content/Intent;

    invoke-interface {v0, v1}, Lcom/android/systemui/qs/QSTile$Host;->startActivityDismissingKeyguard(Landroid/content/Intent;)V

    return-void
.end method

.method private showNotificationDialog()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0f07aa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0f07ab

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/tiles/PowerPlanningTile$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile$6;-><init>(Lcom/android/systemui/qs/tiles/PowerPlanningTile;)V

    const v2, 0x104000a

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSTile$Host;->collapsePanels()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->setDialogWindowType(Landroid/app/AlertDialog;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getDetailAdapter()Lcom/android/systemui/qs/QSTile$DetailAdapter;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mDetailAdapter:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    return-object v0
.end method

.method public getLongClickIntent()Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.sm.ACTION_BATTERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.sm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x70

    return v0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    const v1, 0x7f0f07a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected handleClick()V
    .locals 12

    const/16 v11, 0xf

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "off_from_click"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_reserve_battery_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_commute_battery_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_forward_call_notification_ON"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v6}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v6

    if-nez v6, :cond_1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->handleSecondaryClick()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->isPowerPlanningEnabled()Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "off_from_click"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v3, v10, :cond_2

    iget-boolean v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCalling:Z

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_battery"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-gt v6, v11, :cond_4

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f07ad

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v10}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    :cond_2
    :goto_1
    if-ne v4, v10, :cond_3

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Landroid/os/SmartManager;->getBatteryRemainingUsageTime(Landroid/content/Context;I)I

    move-result v0

    const/4 v6, -0x1

    if-ne v0, v6, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->showNotificationDialog()V

    :cond_3
    :goto_2
    if-ne v2, v10, :cond_0

    invoke-static {}, Lcom/android/systemui/statusbar/DeviceState;->isNoSimState()Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "forward_call_notification_ON"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_battery"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-le v6, v11, :cond_5

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "call_reserve"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "reserve_battery_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    :cond_5
    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v6, "com.samsung.android.app.powerplanning.RESERVE_BATTERY_MAX_MODE"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x10000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "commute_battery_on"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    const v8, 0x7f0f07ac

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_reserve_battery_on"

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_commute_battery_on"

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "prev_forward_call_notification_ON"

    iget-object v8, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v8}, Lcom/android/systemui/qs/SystemSetting;->getValue()I

    move-result v8

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "off_from_click"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "current_battery"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-le v6, v11, :cond_9

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "call_reserve"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "reserve_battery_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "commute_battery_on"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "forward_call_notification_ON"

    invoke-static {v6, v7, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0
.end method

.method protected handleDestroy()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/qs/QSTile;->handleDestroy()V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mTM:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method protected handleSecondaryClick()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->hasPermissions()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->sendPermissionActivity()V

    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->showDetail(Z)V

    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->isPowerPlanningEnabled()Z

    move-result v0

    iput-boolean v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->value:Z

    const v0, 0x7f0203f9

    invoke-static {v0}, Lcom/android/systemui/qs/QSTile$ResourceIcon;->get(I)Lcom/android/systemui/qs/QSTile$Icon;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/qs/QSTile$Icon;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->getTileLabel()Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iget-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    const-class v0, Landroid/widget/Switch;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/systemui/qs/QSTile$BooleanState;->minimalAccessibilityClassName:Ljava/lang/String;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->handleUpdateState(Lcom/android/systemui/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method public hasPermissions()Z
    .locals 11

    const/4 v7, 0x0

    iget-object v6, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    :try_start_0
    const-string/jumbo v6, "com.samsung.android.app.powerplanning"

    const/16 v8, 0x1000

    invoke-virtual {v4, v6, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    iget-object v6, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v5, v6, v1

    sget-object v8, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->sRequiredPermissions:[Ljava/lang/String;

    array-length v9, v8

    move v6, v7

    :goto_1
    if-ge v6, v9, :cond_1

    aget-object v3, v8, v6

    invoke-virtual {v5, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v10, v2, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v10, v10, v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v10, v10, 0x2

    if-nez v10, :cond_0

    return v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x1

    return v6

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return v7
.end method

.method public isAvailable()Z
    .locals 3

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_POWER_PLANNING:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mHost:Lcom/android/systemui/qs/QSTile$Host;

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->getTileSpec()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/systemui/qs/QSTile$Host;->shouldBeHiddenByKnox(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/QSTile$BooleanState;

    invoke-direct {v0}, Lcom/android/systemui/qs/QSTile$BooleanState;-><init>()V

    return-object v0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/qs/QSTile$State;
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->newTileState()Lcom/android/systemui/qs/QSTile$BooleanState;

    move-result-object v0

    return-object v0
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mListening:Z

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mReserveBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mCommuteBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/PowerPlanningTile;->mForwardBatterySettings:Lcom/android/systemui/qs/SystemSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/SystemSetting;->setListening(Z)V

    return-void
.end method
