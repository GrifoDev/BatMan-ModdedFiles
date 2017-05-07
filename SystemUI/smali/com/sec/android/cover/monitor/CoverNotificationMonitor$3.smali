.class Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;
.super Ljava/lang/Object;
.source "CoverNotificationMonitor.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/monitor/CoverNotificationMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/service/notification/StatusBarNotification;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I
    .locals 18

    const/4 v2, 0x3

    const/4 v7, 0x3

    const/4 v4, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v5, v13, Landroid/app/Notification;->semPriority:I

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget v10, v13, Landroid/app/Notification;->semPriority:I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v15}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get5(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$RankingMap;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v15}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v15

    invoke-virtual {v13, v14, v15}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getImportance()I

    move-result v7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get6(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get7(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v13

    invoke-virtual {v13}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v9

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->this$0:Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-get1(Lcom/sec/android/cover/monitor/CoverNotificationMonitor;)Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getCurrentlyPlayingPacakge()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    const/4 v13, 0x1

    if-le v2, v13, :cond_1

    const/4 v3, 0x1

    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    const/4 v13, 0x1

    if-le v7, v13, :cond_2

    const/4 v8, 0x1

    :goto_1
    const/4 v13, 0x5

    if-lt v2, v13, :cond_3

    invoke-static/range {p1 .. p1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v6

    :goto_2
    const/4 v13, 0x5

    if-lt v7, v13, :cond_4

    invoke-static/range {p2 .. p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->-wrap0(Landroid/service/notification/StatusBarNotification;)Z

    move-result v11

    :goto_3
    if-eq v5, v10, :cond_6

    if-le v5, v10, :cond_5

    const/4 v13, -0x1

    :goto_4
    return v13

    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    goto :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    const/4 v11, 0x0

    goto :goto_3

    :cond_5
    const/4 v13, 0x1

    goto :goto_4

    :cond_6
    if-eq v3, v8, :cond_8

    if-eqz v3, :cond_7

    const/4 v13, -0x1

    :goto_5
    return v13

    :cond_7
    const/4 v13, 0x1

    goto :goto_5

    :cond_8
    if-eq v6, v11, :cond_a

    if-eqz v6, :cond_9

    const/4 v13, -0x1

    :goto_6
    return v13

    :cond_9
    const/4 v13, 0x1

    goto :goto_6

    :cond_a
    if-eq v4, v9, :cond_b

    sub-int v13, v4, v9

    return v13

    :cond_b
    invoke-virtual/range {p2 .. p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v14, v13, Landroid/app/Notification;->when:J

    invoke-virtual/range {p1 .. p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-wide v0, v13, Landroid/app/Notification;->when:J

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    long-to-int v13, v14

    return v13
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/service/notification/StatusBarNotification;

    check-cast p2, Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p0, p1, p2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor$3;->compare(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/StatusBarNotification;)I

    move-result v0

    return v0
.end method
