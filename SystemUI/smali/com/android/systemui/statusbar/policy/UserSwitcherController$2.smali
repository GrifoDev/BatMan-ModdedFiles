.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl0;,
        Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private handleVzwUserChange(I)V
    .locals 4

    const-string/jumbo v1, "UserSwitcherController"

    const-string/jumbo v2, "handleVzwUserChange: "

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.vzw.activationagent.intent.action.SET_MOBILEDATA_MULTIUSER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    const-string/jumbo v3, "android.permission.INVOKE_CARRIER_SETUP"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    return-void
.end method

.method private showLogoutNotification(I)V
    .locals 7

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.android.systemui.LOGOUT_USER"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-static {v2, v5, v3, v5, v4}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v2

    const v3, 0x7f0201d5

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0540

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0541

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0f0542

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f020189

    invoke-virtual {v2, v4, v3, v1}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    const-string/jumbo v3, "logout_user"

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    new-instance v5, Landroid/os/UserHandle;

    invoke-direct {v5, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/16 v6, 0x3f3

    invoke-virtual {v2, v3, v6, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_policy_UserSwitcherController$2_lambda$1()V
    .locals 2

    const-string/jumbo v0, "UserSwitcherController"

    const-string/jumbo v1, "twophone_change -    before dismissUserSwitchingDialog in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    const-string/jumbo v0, "UserSwitcherController"

    const-string/jumbo v1, "twophone_change -    after dismissUserSwitchingDialog  in handler"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method synthetic -com_android_systemui_statusbar_policy_UserSwitcherController$2_lambda$2(I)V
    .locals 4

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    if-lez p1, :cond_0

    const/16 v1, 0x64

    if-ge p1, v1, :cond_0

    const v1, 0x7f0f0459

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    const-string/jumbo v1, "UserSwitcherController"

    const-string/jumbo v2, "twophone_change -    post toast in handler"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    const v1, 0x7f0f0458

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setText(I)V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    const/4 v10, 0x0

    const/16 v5, -0x2710

    const-string/jumbo v13, "com.android.systemui.REMOVE_GUEST"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v13

    invoke-virtual {v13, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-eqz v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get1(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result v13

    if-eqz v13, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f0f0537

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Lcom/android/systemui/SysUIToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo v13, "com.android.systemui.LOGOUT_USER"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->logoutCurrentUser()V

    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13, v5}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get9(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/Runnable;->run()V

    :cond_4
    return-void

    :cond_5
    const-string/jumbo v13, "android.intent.action.USER_SWITCHED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_18

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->isShowing()Z

    move-result v13

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/app/Dialog;

    move-result-object v13

    invoke-virtual {v13}, Landroid/app/Dialog;->cancel()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set2(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/app/Dialog;)Landroid/app/Dialog;

    :cond_6
    const/4 v6, 0x0

    const-string/jumbo v13, "android.intent.extra.user_handle"

    const/4 v14, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get10(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/UserManager;

    move-result-object v13

    invoke-virtual {v13, v3}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get11(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v2, :cond_f

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get11(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    iget-object v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v13, :cond_8

    :cond_7
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_8
    sget-boolean v13, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v13, :cond_9

    iget-object v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    invoke-virtual {v13}, Landroid/content/pm/UserInfo;->isBMode()Z

    move-result v13

    if-eqz v13, :cond_9

    const/4 v6, 0x1

    :cond_9
    iget-object v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v13, v13, Landroid/content/pm/UserInfo;->id:I

    if-ne v13, v3, :cond_d

    const/4 v9, 0x1

    :goto_3
    iget-boolean v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v13, v9, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get11(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v14

    invoke-virtual {v13, v7, v14}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_a
    if-eqz v9, :cond_b

    iget-boolean v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-eqz v13, :cond_e

    :cond_b
    :goto_4
    if-eqz v12, :cond_c

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v13

    if-nez v13, :cond_7

    :cond_c
    iget-boolean v13, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get11(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v7, v7, -0x1

    goto :goto_2

    :cond_d
    const/4 v9, 0x0

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v14, v8, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v14, v14, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    goto :goto_4

    :cond_f
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v13

    const-string/jumbo v14, "CscFeature_Common_ConfigPco"

    invoke-virtual {v13, v14}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "VZW_TABLET"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->handleVzwUserChange(I)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap3(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v13

    const/16 v14, -0x2710

    if-eq v13, v14, :cond_11

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v14

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 v14, -0x2710

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_11
    if-eqz v12, :cond_12

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v13

    if-eqz v13, :cond_16

    :cond_12
    :goto_5
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v13

    if-eqz v13, :cond_13

    if-eqz v12, :cond_13

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-eqz v13, :cond_17

    :cond_13
    :goto_6
    if-eqz v12, :cond_14

    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v13

    if-eqz v13, :cond_14

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-wrap6(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    :cond_14
    sget-boolean v13, Lcom/android/systemui/SystemUIRune;->SUPPORT_TWO_PHONE:Z

    if-eqz v13, :cond_15

    if-eqz v6, :cond_15

    const-string/jumbo v13, "UserSwitcherController"

    const-string/jumbo v14, "twophone_change - before post dismissUserSwitchingDialog"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl0;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;)V

    const-wide/16 v16, 0x1388

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v13, "UserSwitcherController"

    const-string/jumbo v14, "twophone_change - after post dismissUserSwitchingDialog, before post toast"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get4(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/os/Handler;

    move-result-object v13

    new-instance v14, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2$-void_onReceive_android_content_Context_context_android_content_Intent_intent_LambdaImpl1;-><init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;I)V

    const-wide/16 v16, 0xbb8

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const-string/jumbo v13, "UserSwitcherController"

    const-string/jumbo v14, "twophone_change - after post toast"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_15
    const/4 v10, 0x1

    goto/16 :goto_0

    :cond_16
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v13}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-get7(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v13

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v14}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v14, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v13, v14}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->-set5(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    goto/16 :goto_5

    :cond_17
    iget v13, v12, Landroid/content/pm/UserInfo;->id:I

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$2;->showLogoutNotification(I)V

    goto/16 :goto_6

    :cond_18
    const-string/jumbo v13, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    const-string/jumbo v13, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    goto/16 :goto_0

    :cond_19
    const-string/jumbo v13, "android.intent.action.USER_UNLOCKED"

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    const-string/jumbo v13, "android.intent.extra.user_handle"

    const/16 v14, -0x2710

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v14}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-eqz v11, :cond_3

    return-void
.end method
