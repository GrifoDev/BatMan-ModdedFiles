.class public Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "AlarmServiceBoxPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;,
        Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;,
        Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;,
        Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$4;,
        Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$AlarmEventCoverOpenAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mAlarmClickListener:Landroid/view/View$OnClickListener;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlarmTimeContainer:Landroid/view/View;

.field private mIs24HTime:Z

.field private mNextAlarmTimeDay:Landroid/widget/TextView;

.field private mNextAlarmTimeView:Landroid/widget/TextView;

.field private mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

.field private mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

.field private mNoAlarmText:Landroid/view/View;

.field private mSelfAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getNextAlarm()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->refreshView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mIs24HTime:Z

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$1;-><init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$2;-><init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$3;-><init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$4;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView$4;-><init>(Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mSelfAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private cancelRefreshAlarmInfoScheduler()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getPendingIntentForRefreshAlarmInfoScheduler()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Cancel alarm refresh intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getNextAlarm()V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, -0x2

    invoke-virtual {v1, v2}, Landroid/app/AlarmManager;->getNextAlarmClock(I)Landroid/app/AlarmManager$AlarmClockInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V

    :goto_0
    return-void

    :cond_0
    sget-object v1, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "getNextAlarm, alarm manager null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getPendingIntentForRefreshAlarmInfoScheduler()Landroid/app/PendingIntent;
    .locals 5

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "com.sec.android.cover.clearcover.servicebox.UPDATE_ALARM_PAGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x10000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private isAlarmForNextSevenDays(Landroid/app/AlarmManager$AlarmClockInfo;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/32 v4, 0xea60

    add-long/2addr v4, v0

    const-wide/32 v6, 0x240c8400

    add-long/2addr v6, v2

    cmp-long v4, v4, v6

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private refreshAlarmStatus(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 13

    const/16 v12, 0x8

    const/4 v11, 0x0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->cancelRefreshAlarmInfoScheduler()V

    const/4 v6, 0x0

    if-nez p1, :cond_1

    const/4 v6, 0x1

    :cond_0
    :goto_0
    if-eqz v6, :cond_2

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmTimeContainer:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNoAlarmText:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    sget-object v7, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v8, "refreshAlarmStatus() alarm is null or time period is wrong"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->isAlarmForNextSevenDays(Landroid/app/AlarmManager$AlarmClockInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x1

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->setRefreshAlarmInfoScheduler(Landroid/app/AlarmManager$AlarmClockInfo;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v4

    iget-boolean v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mIs24HTime:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "kk:mm"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, ""

    :goto_2
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeView:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string/jumbo v7, "EEE,"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeDay:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/sec/android/sviewcover/R$string;->servicebox_accessibility_next_alarm:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v2, v10, v11

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmTimeContainer:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNoAlarmText:Landroid/view/View;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    sget-object v7, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "refreshAlarmStatus() alarm = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " content: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_3
    const-string/jumbo v7, "h:mm"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v7, "AA"

    invoke-static {v7, v4, v5}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_2
.end method

.method private refreshView()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/CoverUtils;->is24HourModeEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mIs24HTime:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->updateAmPmContainerVisibility()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getNextAlarm()V

    return-void
.end method

.method private registerAlarmChangeReceiver()V
    .locals 11

    const/4 v4, 0x0

    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.app.action.NEXT_ALARM_CLOCK_CHANGED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string/jumbo v0, "com.sec.android.cover.clearcover.servicebox.UPDATE_ALARM_PAGE"

    invoke-direct {v8, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mSelfAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v9, "com.android.systemui.permission.SELF"

    move-object v10, v4

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private setRefreshAlarmInfoScheduler(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 8

    invoke-virtual {p1}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    const-wide/32 v4, 0x240c8400

    sub-long v4, v2, v4

    const-wide/32 v6, 0xea60

    add-long v0, v4, v6

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->getPendingIntentForRefreshAlarmInfoScheduler()Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v6, v0, v1, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    sget-object v4, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set alarm refresh intent for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "HH:mm dd/MM,"

    invoke-static {v6, v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private unregisterAlarmChangeReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mSelfAlarmChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private updateAmPmContainerVisibility()V
    .locals 5

    const/4 v4, 0x0

    const/16 v3, 0x8

    iget-boolean v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mIs24HTime:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    if-nez v1, :cond_1

    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "updateAmPmKontainerVisibility, locale null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "ko_KR"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->refreshView()V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->registerAlarmChangeReceiver()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->unregisterAlarmChangeReceiver()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_missing_alarm:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNoAlarmText:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_time_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmTimeContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmTimeContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_time:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeView:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_time_ampm:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPm:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_time_ampm_kr:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeViewAmPmKr:Landroid/widget/TextView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->servicebox_alarm_time_day:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mNextAlarmTimeDay:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/AlarmServiceBoxPageView;->mAlarmManager:Landroid/app/AlarmManager;

    return-void
.end method
