.class public abstract Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.super Ljava/lang/Object;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;,
        Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$USB_CLASS_CODE;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field protected final mTATypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$1;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbClassMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$2;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mTATypeMap:Ljava/util/HashMap;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;-><init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;Landroid/hardware/usb/UsbDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->updateUsbClassInfo(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->registerUsbReceiver()V

    return-void
.end method

.method private registerUsbReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateUsbClassInfo(Landroid/hardware/usb/UsbDevice;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v2

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbClassMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->usbDeviceChanged(ILjava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method destroy()V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->unregisterReceiver()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    return-void
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method unregisterReceiver()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->mUsbDeviceReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method protected abstract usbDeviceChanged(ILjava/lang/String;)V
.end method
