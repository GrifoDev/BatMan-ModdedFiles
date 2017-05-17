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

.field final synthetic val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/UninstallShortcutReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;Lcom/samsung/android/desktopmode/SemDesktopModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    iput-object p5, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v8, 0x0

    const-string v3, "UninstallShortcut"

    const-string v4, "UNINSTALL_SHORTCUT - onReceive"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$data:Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const-wide/16 v6, -0x1

    invoke-direct {v0, v3, v4, v6, v7}, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    iget-object v3, v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    if-nez v3, :cond_2

    :cond_0
    const-string v3, "UninstallShortcut"

    const-string v4, "Invalid uninstall shortcut intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    invoke-virtual {v0}, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->getUser()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/launcher3/home/InstallShortcutReceiver;->shortcutExistsInDb(Landroid/content/Context;Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;Z)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "UninstallShortcut"

    const-string v4, "shortcut is exist in DB."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0, v3, v4}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    const/4 v2, 0x1

    :cond_3
    :goto_1
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$desktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const v4, 0x7f080097

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->label:Ljava/lang/String;

    aput-object v6, v5, v8

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    const v5, 0x103012b

    invoke-direct {v3, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-static {v3, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    const-string v3, "UninstallShortcut"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallShortcutReceiver;

    iget-object v4, p0, Lcom/android/launcher3/home/UninstallShortcutReceiver$1;->val$context:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/launcher3/home/UninstallShortcutReceiver$PendingUninstallShortcutInfo;->launchIntent:Landroid/content/Intent;

    # invokes: Lcom/android/launcher3/home/UninstallShortcutReceiver;->shortcutExistInQueue(Landroid/content/Context;Landroid/content/Intent;)Z
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/home/UninstallShortcutReceiver;->access$000(Lcom/android/launcher3/home/UninstallShortcutReceiver;Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "UninstallShortcut"

    const-string v4, "shortcut is exist in queue."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    goto :goto_1
.end method
