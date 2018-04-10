.class Lcom/android/server/am/MARsTrigger$1;
.super Landroid/content/BroadcastReceiver;
.source "MARsTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/MARsTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/MARsTrigger;


# direct methods
.method constructor <init>(Lcom/android/server/am/MARsTrigger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 14

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const/4 v7, -0x1

    if-eqz v1, :cond_0

    const-string/jumbo v8, "why"

    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    :cond_0
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-nez v8, :cond_2

    :cond_1
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    :cond_2
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    sget-boolean v8, Lcom/android/server/am/MARsPolicyManager;->RESPRELOAD_ENABLE:Z

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "PRELOAD_POLICY_ALARM"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v10}, Lcom/android/server/am/MARsTrigger;->-get14(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "FIRST_ALARM_APPLOCKER"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAppLockerPolicyInterval:J

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_4
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_5

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "FIRST_ALARM_AUTORUN_TRAFFIC_STAT"

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mAutoRunPolicyInterval:J

    iget-object v12, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v12, v12, Lcom/android/server/am/MARsTrigger;->mAutoRunTrafficStatCollectorInterval:J

    sub-long/2addr v10, v12

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_5
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get6(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_6
    :goto_1
    return-void

    :cond_7
    sget-object v8, Landroid/app/UiModeManager;->ACTION_EXIT_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    goto :goto_0

    :cond_8
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_9

    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_12

    :cond_9
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->setScreenOnState(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get1(Lcom/android/server/am/MARsTrigger;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get3(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    const-wide/16 v10, 0x3e8

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_b

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get7(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_b
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_c

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get8(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_c
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get9(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_d
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get11(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_e

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get11(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_e
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_f

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get10(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_f
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get12(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_10

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get12(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_10
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get13(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get0(Lcom/android/server/am/MARsTrigger;)Landroid/app/AlarmManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v9}, Lcom/android/server/am/MARsTrigger;->-get13(Lcom/android/server/am/MARsTrigger;)Landroid/app/PendingIntent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_1

    :cond_11
    sget-object v8, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->setCarModeOnState(Z)V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getFreecessEnabled()Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v9, v8, Lcom/android/server/am/MARsPolicyManager;->mAm:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v9

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const-string/jumbo v10, "CarMode"

    invoke-virtual {v8, v10}, Lcom/android/server/am/MARsPolicyManager;->unFreezePackage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_2

    :catchall_0
    move-exception v8

    monitor-exit v9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v8

    :cond_12
    const-string/jumbo v8, "MARS_REQUEST_PKG_INFO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_15

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v1, :cond_14

    const-string/jumbo v8, "MARS_EXTRA"

    const-string/jumbo v9, ""

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v8, "create"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    const/4 v4, 0x1

    :cond_13
    const-string/jumbo v8, "update"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_14

    const/4 v5, 0x1

    :cond_14
    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/MARsDBManager;->onSMDBChanged(ZZ)V

    goto/16 :goto_1

    :cond_15
    const-string/jumbo v8, "MARS_REQUEST_POLICY_INFO"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_16

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    iget-object v8, v8, Lcom/android/server/am/MARsPolicyManager;->mDBManager:Lcom/android/server/am/MARsDBManager;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsDBManager;->getMARsPolicyCondition(Z)V

    goto/16 :goto_1

    :cond_16
    const-string/jumbo v8, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_17

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mDLManager:Lcom/android/server/am/MARsDLManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsDLManager;->setDataConnectionConnected()V

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v8, "android.os.action.CHARGING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_18

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;Z)Z

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v8, "android.os.action.DISCHARGING"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Lcom/android/server/am/MARsPolicyManager;->isPolicyEnabled(I)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getLCDonKillEnabled()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Lcom/android/server/am/MARsTrigger;->-set0(Lcom/android/server/am/MARsTrigger;Z)Z

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getScreenOnState()Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-object v8, v8, Lcom/android/server/am/MARsTrigger;->mPolicyManager:Lcom/android/server/am/MARsPolicyManager;

    invoke-virtual {v8}, Lcom/android/server/am/MARsPolicyManager;->getCarModeOnState()Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    invoke-static {v8}, Lcom/android/server/am/MARsTrigger;->-get3(Lcom/android/server/am/MARsTrigger;)J

    move-result-wide v8

    sub-long v8, v2, v8

    iget-object v10, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    iget-wide v10, v10, Lcom/android/server/am/MARsTrigger;->mLCDOnTriggerTimeInterval:J

    cmp-long v8, v8, v10

    if-lez v8, :cond_6

    iget-object v8, p0, Lcom/android/server/am/MARsTrigger$1;->this$0:Lcom/android/server/am/MARsTrigger;

    const-string/jumbo v9, "FIRST_ALARM_ARES_TRAFFIC_STAT"

    const-wide/16 v10, 0x3e8

    invoke-static {v8, v9, v10, v11}, Lcom/android/server/am/MARsTrigger;->-wrap3(Lcom/android/server/am/MARsTrigger;Ljava/lang/String;J)V

    goto/16 :goto_1
.end method
