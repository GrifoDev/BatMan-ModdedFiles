.class Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;
.super Ljava/lang/Object;
.source "ClearCoverNotificationWidget.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationCoverOpenAction"
.end annotation


# static fields
.field private static final synthetic -com-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues:[I


# instance fields
.field private mNotification:Landroid/service/notification/StatusBarNotification;

.field private mType:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;


# direct methods
.method private static synthetic -getcom-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->-com-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->-com-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->values()[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->-com-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Type cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mType:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    iput-object p3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mNotification:Landroid/service/notification/StatusBarNotification;

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mType:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverOpened()V
    .locals 6

    const/4 v4, 0x0

    invoke-static {}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->-getcom-sec-android-cover-clearcover-widget-ClearCoverNotificationWidget$ActionTypeSwitchesValues()[I

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mType:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get3(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get3(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-direct {v2, v3, v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Landroid/service/notification/StatusBarNotification;)V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "CS03"

    invoke-static {v1, v2}, Lcom/sec/android/cover/CoverUtils;->reportContextualSurvey(Landroid/content/Context;Ljava/lang/String;)V

    iget v1, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->-get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;->mNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->cancelNotification(Ljava/lang/String;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
