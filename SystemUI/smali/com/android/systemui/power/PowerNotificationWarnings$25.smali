.class Lcom/android/systemui/power/PowerNotificationWarnings$25;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerNotificationWarnings;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerNotificationWarnings;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 6

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set22(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get14(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get16(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get2(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-nez v0, :cond_3

    const-string/jumbo v1, "PowerUI.Notification"

    const-string/jumbo v2, "onReceive : fail to get PowerManager reference"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get13(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v2, v2, Lcom/android/systemui/power/PowerNotificationWarnings;->mWaterProtectionAlertTask:Ljava/lang/Runnable;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get12(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v2, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get14(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set11(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const-string/jumbo v2, "PowerUI.Notification"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set23(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$25;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get16(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method
