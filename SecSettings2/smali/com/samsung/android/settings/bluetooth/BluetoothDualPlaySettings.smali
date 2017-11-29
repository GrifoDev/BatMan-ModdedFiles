.class public final Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;
.super Landroid/preference/PreferenceFragment;
.source "BluetoothDualPlaySettings.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;,
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;,
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;,
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$4;,
        Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;
    }
.end annotation


# static fields
.field private static final DBG:Z


# instance fields
.field private a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mBixbyStateId:Ljava/lang/String;

.field private mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

.field private mIsA2dpProfileReady:Z

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field private mScreenId:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->requestNlg()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->sendResponseAndInit(Z)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/Debug;->semIsProductDev()Z

    move-result v0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiverRegistered:Z

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$2;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$3;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$4;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string/jumbo v0, "BluetoothDualPlaySettings"

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

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private launchDualPlayAskPopup()V
    .locals 3

    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "launchDualPlayAskPopup :: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b0464

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0465

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b04b7

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b04c5

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private requestNlg()V
    .locals 2

    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "requestNlg()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DualAudioSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendResponseAndInit(Z)V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "sendResponseAndInit()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :goto_0
    iput-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    sget-object v1, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private setDualPlayContent()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v2

    const v3, 0x7f1100e1

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    const-string/jumbo v2, "BluetoothDualPlaySettings"

    const-string/jumbo v3, "startAnimation :: start dual play animation"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v2, "BluetoothDualPlaySettings"

    const-string/jumbo v3, "startAnimation :: anim is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setDualPlayMode(Z)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualPlayMode :: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "setDualPlayMode :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setDualPlayMode(Z)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v1, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DualAudioOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "DualAudio"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->requestNlg()V

    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->sendResponseAndInit(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "DualAudioOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "DualAudio"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "yes"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDualPlayMode :: failed set dual play mode to ["

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

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v1, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string/jumbo v1, "DualAudioOn"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string/jumbo v1, "DualAudio"

    const-string/jumbo v2, "SuccessfullyTurnedOn"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->requestNlg()V

    invoke-direct {p0, v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->sendResponseAndInit(Z)V

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "DualAudioOff"

    iget-object v2, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mBixbyStateId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "DualAudio"

    const-string/jumbo v2, "SuccessfullyTurnedOff"

    const-string/jumbo v3, "no"

    invoke-direct {p0, v1, v2, v3}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->addNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    new-instance v1, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;Lcom/android/settings/widget/SwitchBar;)V

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setupSwitchBar()V

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayContent()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v2, 0x7f040059

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayContent()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :goto_0
    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    return-void

    :cond_0
    const-string/jumbo v0, "BluetoothDualPlaySettings"

    const-string/jumbo v1, "onCreate :: Can\'t get Local Bluetooth Manager instance"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const v0, 0x7f040059

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->teardownSwitchBar()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V

    :cond_3
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0022

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    iget-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiverRegistered:Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->pause()V

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "DualAudioSettings"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 9

    const/4 v8, 0x1

    const/4 v6, 0x0

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
    const-string/jumbo v4, "BluetoothDualPlaySettings"

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

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "statusbar"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/StatusBarManager;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/app/StatusBarManager;->collapsePanels()V

    :cond_3
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v4, v8}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v4}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->resume()V

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v7, "DualAudioSettings"

    invoke-virtual {v4, v5, v6, v7}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v4, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v8, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mReceiverRegistered:Z

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-static {v4}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "onResume :: a2dpProfile is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v4, "BluetoothDualPlaySettings"

    const-string/jumbo v5, "onResume :: mLocalProfileManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    invoke-virtual {v4, v6}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0
.end method

.method public declared-synchronized onServiceConnected()V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z
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
    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    goto :goto_0

    :cond_4
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onServiceConnected :: mLocalProfileManager is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public onServiceDisconnected()V
    .locals 2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mLocalProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isProfileReady()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mIsA2dpProfileReady:Z

    :cond_0
    return-void
.end method

.method public onSwitchStateChange(Z)V
    .locals 4

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onSwitchChange :: isChecked = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mDualPlayModeEnabler:Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings$DualPlayModeEnabler;->setChecked(Z)V

    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onSwitchChange :: a2dpProfile is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_1
    if-nez p1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isDualPlayModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    if-eqz p1, :cond_4

    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->a2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isAbsoluteVolumeControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->launchDualPlayAskPopup()V

    return-void

    :cond_3
    const-string/jumbo v1, "BluetoothDualPlaySettings"

    const-string/jumbo v2, "onSwitchChange :: It is not user interaction"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0055

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v1, p0, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->mScreenId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0023

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/samsung/android/settingslib/bluetooth/BluetoothSALogger;->insertSALog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->setDualPlayMode(Z)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/samsung/android/settings/bluetooth/BluetoothDualPlaySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0056

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
