.class public final Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothAVCSettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;,
        Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBixbyStateId:Ljava/lang/String;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIsA2dpProfileReady:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->setAbsoluteVolumeControlMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BluetoothAVCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addNlgScreenParam() :: paramName - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "// paramAttr - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "// paramAttrValue - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private isAVCAvailable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAudioPathBluetooth()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlDeviceActive()Z

    move-result v0

    :cond_1
    return v0
.end method

.method private isAudioPathBluetooth()Z
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "audio"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v1

    and-int/lit16 v3, v1, 0x380

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    const-string/jumbo v3, "BluetoothAVCSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isAudioPathBluetooth :: sound path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", result = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private launchAVCAskPopup()V
    .locals 3

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "launchAVCAskPopup :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b040a

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b040b

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0454

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0461

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private requestNlg()V
    .locals 2

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "requestNlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MediaVolumeSyncSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendResponseAndInit(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "sendResponseAndInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private setAbsoluteVolumeControlMode(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothAVCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAbsoluteVolumeControlMode :: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "setAbsoluteVolumeControlMode :: mA2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setAbsoluteVolumeControlMode(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MediaVolumeSyncOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "MediaVolumeSyncOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "BluetoothAVCSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setAbsoluteVolumeControlMode :: failed set AVC mode to ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "MediaVolumeSyncOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->requestNlg()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->sendResponseAndInit(Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "MediaVolumeSyncOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "MediaVolumesync"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private updateContentsView()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onResume :: mA2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onResume :: mLocalProfileManager is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1
.end method


# virtual methods
.method public handleswitchStateChange()V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "handleswitchStateChange :: mA2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onConfigurationChanged :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f080031

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->getSwitchPreference()Landroid/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$ContentPreference;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->pause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "MediaVolumeSyncSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 8

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v4, 0xd

    if-eq v2, v4, :cond_0

    const/16 v4, 0xa

    if-ne v2, v4, :cond_2

    :cond_0
    const-string/jumbo v4, "BluetoothAVCSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onResume :: Bluetooth Dual Play Settings will finish, adapter state = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->updateContentsView()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->resume()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "com.samsung.bluetooth.a2dp.intent.action.AVRCP_CONNECTED_WITH_AVC"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v4, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mReceiverRegistered:Z

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "MediaVolumeSyncSettings"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->isAVCAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: mA2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v1, "BluetoothAVCSettings"

    const-string/jumbo v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mIsA2dpProfileReady:Z

    :cond_0
    return-void
.end method

.method public onSwitchStateChange(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "BluetoothAVCSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSwitchChange :: isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setChecked(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mAVCModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;

    invoke-virtual {v0, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings$AVCModeEnabler;->setEnabled(Z)V

    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onSwitchChange :: mA2dpProfile is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->launchAVCAskPopup()V

    return-void

    :cond_3
    const-string/jumbo v0, "BluetoothAVCSettings"

    const-string/jumbo v1, "onSwitchChange :: It is not user interaction"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothAVCSettings;->setAbsoluteVolumeControlMode(Z)V

    goto :goto_0
.end method
