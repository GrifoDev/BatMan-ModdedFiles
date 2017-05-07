.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;
.super Landroid/service/notification/NotificationListenerService;
.source "DeskPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)I

    move-result v2

    const v3, 0x200001

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    const v3, 0x200002

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;I)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->getCurrentRanking()Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;

    invoke-direct {v3, p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)I

    move-result v0

    const v1, 0x200002

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->markedDex()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationPost(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)I

    move-result v0

    const v1, 0x200002

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)I

    move-result v0

    const v1, 0x200002

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->markedDex()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleNotificationRemove(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    :cond_0
    return-void
.end method
