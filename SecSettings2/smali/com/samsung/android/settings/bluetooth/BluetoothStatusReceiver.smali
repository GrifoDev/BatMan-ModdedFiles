.class public Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;
    }
.end annotation


# static fields
.field private static mQuickPanelOn:Z


# instance fields
.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver$1;-><init>(Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;)V

    iput-object v0, p0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "Received null intent"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string/jumbo v13, "BluetoothStatusReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Received :: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string/jumbo v13, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    const-string/jumbo v13, "android.bluetooth.adapter.extra.STATE"

    const/high16 v14, -0x80000000

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const-string/jumbo v13, "BluetoothStatusReceiver"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "AdapterStateChanged :: state = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v13, :cond_1

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "Error: BluetoothAdapter not supported by system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/16 v13, 0xc

    if-ne v12, v13, :cond_2

    sget-boolean v13, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    if-eqz v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result v13

    if-eqz v13, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v13, 0x0

    sput-boolean v13, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mContext:Landroid/content/Context;

    const-string/jumbo v14, "keyguard"

    invoke-virtual {v13, v14}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/KeyguardManager;

    invoke-virtual {v9}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v13

    if-nez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x0

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0x64

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_4
    const-string/jumbo v13, "com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "QuickPanelBluetoothON :: com.samsung.systemui.statusbar.action.BLUETOOTH_ON"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    sput-boolean v13, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mQuickPanelOn:Z

    goto :goto_0

    :cond_5
    const-string/jumbo v13, "com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    invoke-virtual {v2, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "For launch gearmanager from non-system app :: com.samsung.android.action.BLUETOOTH_DEVICE_FROM_APP"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    if-eqz v6, :cond_2

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "For launch gearmanager from non-system app :: sendBroadcast()"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string/jumbo v13, "MAC"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v13, "DATA"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v13, :cond_6

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "Error: BluetoothAdapter not supported by system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-nez v13, :cond_8

    :cond_7
    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "Error: mCachedDeviceManager or mLocalBluetoothAdapter not supported by system"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v13, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v5

    if-nez v5, :cond_9

    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v13, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v15}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v15

    invoke-virtual {v13, v14, v15, v5}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v13

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v13, :cond_a

    const-string/jumbo v13, "BluetoothStatusReceiver"

    const-string/jumbo v14, "Error: Failed to get cachedBluetoothDevice instance."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_a
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v13}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v10

    const/4 v7, 0x0

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v13

    if-ge v7, v13, :cond_c

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz v11, :cond_b

    invoke-interface {v11}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v13

    if-eqz v13, :cond_b

    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_b
    const/4 v8, 0x0

    goto :goto_2

    :cond_c
    if-eqz v8, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/samsung/android/settings/bluetooth/BluetoothStatusReceiver;->mHandler:Landroid/os/Handler;

    const/4 v15, 0x1

    invoke-virtual {v14, v15}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v14

    const-wide/16 v16, 0x3e8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0
.end method
