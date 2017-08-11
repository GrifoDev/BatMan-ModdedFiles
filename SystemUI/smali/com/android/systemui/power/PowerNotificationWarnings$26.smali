.class Lcom/android/systemui/power/PowerNotificationWarnings$26;
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

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set22(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get14(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    iget-object v1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get16(Lcom/android/systemui/power/PowerNotificationWarnings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->showWaterProtectionAlertDialog(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set11(Lcom/android/systemui/power/PowerNotificationWarnings;Z)Z

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get17(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get17(Lcom/android/systemui/power/PowerNotificationWarnings;)Lcom/android/systemui/media/NotificationPlayer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/media/NotificationPlayer;->stop()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get19(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$26;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-get19(Lcom/android/systemui/power/PowerNotificationWarnings;)Landroid/os/Vibrator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    :cond_2
    return-void
.end method
