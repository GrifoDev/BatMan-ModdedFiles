.class Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;
.super Ljava/lang/Object;
.source "DeskPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->onListenerConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;

.field final synthetic val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

.field final synthetic val$notifications:[Landroid/service/notification/StatusBarNotification;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;[Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->val$notifications:[Landroid/service/notification/StatusBarNotification;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->markedDex()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->this$1:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;

    iget-object v4, v4, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;->this$0:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->-get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1$1;->val$currentRanking:Landroid/service/notification/NotificationListenerService$RankingMap;

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->addNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
