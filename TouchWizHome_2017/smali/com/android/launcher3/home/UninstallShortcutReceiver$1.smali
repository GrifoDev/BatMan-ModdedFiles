.class Lcom/android/launcher3/home/UninstallShortcutReceiver$1;
.super Ljava/lang/Object;
.source "UninstallShortcutReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/UninstallShortcutReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/UninstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const/4 v14, 0x0

    const-string v7, "UninstallShortcut"

    const-string v10, "UNINSTALL_SHORTCUT - onReceive"

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const-wide/16 v12, -0x1

    invoke-direct {v2, v7, v10, v12, v13}, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v7, :cond_0

    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v7, :cond_2

    :cond_0
    const-string v7, "UninstallShortcut"

    const-string v10, "Invalid uninstall shortcut intent"

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v10, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v2}, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v12

    invoke-static {v7, v10, v11, v12}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v7

    if-eqz v7, :cond_4

    const-string v7, "UninstallShortcut"

    const-string v10, "shortcut is exist in DB."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v2, v7, v10}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    const/4 v5, 0x1

    :cond_3
    :goto_1
    if-eqz v5, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/Utilities;->isDeskTopMode(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const v10, 0x7f0900b4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    iget-object v12, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    aput-object v12, v11, v14

    invoke-virtual {v7, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Landroid/view/ContextThemeWrapper;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const v11, 0x103012b

    invoke-direct {v7, v10, v11}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v7, v3, v14}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/Toast;->show()V

    const-string v7, "UninstallShortcut"

    invoke-static {v7, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v11, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {v7, v10, v11}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->access$000(Lcom/android/launcher3/home/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string v7, "UninstallShortcut"

    const-string v10, "shortcut is exist in queue."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    invoke-static {v7, v10}, Lcom/android/launcher3/home/InstallShortcutReceiver;->convertKnoxLiveIconIntent(Landroid/content/Intent;Landroid/content/Intent;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v10, "userid"

    const/4 v11, -0x1

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    int-to-long v8, v7

    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v10, "liveicon_cmpname"

    invoke-virtual {v7, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

    invoke-static {v7, v0, v8, v9}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->access$100(Lcom/android/launcher3/home/UninstallShortcutReceiver;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    :try_start_0
    invoke-static {v4, v7}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    iput-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v6

    const-string v7, "UninstallShortcut"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "convert KnoxLiveIconIntent into LaunchIntent: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", userId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v10, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v11

    invoke-static {v7, v10, v6, v11}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "UninstallShortcut"

    const-string v10, "shortcut is exist in DB for Live icon."

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    const-string v10, "profile"

    invoke-virtual {v7, v10, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v7

    invoke-virtual {v7, v8, v9}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getUserForSerialNumber(J)Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    iput-object v7, v2, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v7, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v2, v7, v10}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v1

    const-string v7, "UninstallShortcut"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "URISyntaxException: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
