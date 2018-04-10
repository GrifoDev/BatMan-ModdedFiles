.class Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;
.super Landroid/content/BroadcastReceiver;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    const/4 v1, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_1

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$100()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Not in Case"

    invoke-static {v4, v5}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :pswitch_0
    const-string/jumbo v4, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :pswitch_1
    const-string/jumbo v4, "device"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/hardware/usb/UsbDevice;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;

    invoke-static {v4, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;->access$000(Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;Landroid/hardware/usb/UsbDevice;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch -0x7e02a835
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
