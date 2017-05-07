.class Lcom/android/systemui/power/PowerNotificationWarnings$5;
.super Ljava/lang/Object;
.source "PowerNotificationWarnings.java"

# interfaces
.implements Lcom/samsung/android/desktopmode/SemDesktopModeManager$EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/power/PowerNotificationWarnings;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
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

    iput-object p1, p0, Lcom/android/systemui/power/PowerNotificationWarnings$5;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDesktopDockConnectionChanged(Z)V
    .locals 0

    return-void
.end method

.method public onDesktopModeChanged(Z)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "PowerUI.Notification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDesktopModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$5;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set20(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$5;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set23(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$5;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0, v3}, Lcom/android/systemui/power/PowerNotificationWarnings;->-set1(Lcom/android/systemui/power/PowerNotificationWarnings;Landroid/widget/Toast;)Landroid/widget/Toast;

    iget-object v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings$5;->this$0:Lcom/android/systemui/power/PowerNotificationWarnings;

    invoke-static {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->-wrap4(Lcom/android/systemui/power/PowerNotificationWarnings;)V

    return-void
.end method
