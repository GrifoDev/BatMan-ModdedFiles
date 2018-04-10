.class Lcom/android/server/usb/UsbMirrorLinkManager$1;
.super Landroid/os/UEventObserver;
.source "UsbMirrorLinkManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbMirrorLinkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/usb/UsbMirrorLinkManager;


# direct methods
.method constructor <init>(Lcom/android/server/usb/UsbMirrorLinkManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "USB UEVENT: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "NCM_DEVICE"

    invoke-virtual {p1, v3}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.mirrorlink.action.ML_UEVENT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "mirrorlink"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v3, "com.samsung.android.app.mirrorlink"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string/jumbo v3, "START"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb: f/w ncm start uevent receive "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    iget-object v4, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get2(Lcom/android/server/usb/UsbMirrorLinkManager;)Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "MirrorLink"

    const/16 v6, 0xc

    invoke-static {v4, v5, v6}, Lcom/samsung/android/os/SemDvfsManager;->createInstance(Landroid/content/Context;Ljava/lang/String;I)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/usb/UsbMirrorLinkManager;->-set0(Lcom/android/server/usb/UsbMirrorLinkManager;Lcom/samsung/android/os/SemDvfsManager;)Lcom/samsung/android/os/SemDvfsManager;

    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/android/os/SemDvfsManager;->getSupportedFrequencyForSsrm()[I

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->setDvfsValue(I)V

    iget-object v3, p0, Lcom/android/server/usb/UsbMirrorLinkManager$1;->this$0:Lcom/android/server/usb/UsbMirrorLinkManager;

    invoke-static {v3}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get1(Lcom/android/server/usb/UsbMirrorLinkManager;)Lcom/samsung/android/os/SemDvfsManager;

    move-result-object v3

    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Lcom/samsung/android/os/SemDvfsManager;->acquire(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, " MirrorLink cpu boost : SemDvfsManager mode is not supported "

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "RELEASE"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/server/usb/UsbMirrorLinkManager;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usb: f/w ncm release uevent receive"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
