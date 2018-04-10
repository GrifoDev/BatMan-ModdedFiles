.class Lcom/android/server/pm/ShortcutBackupManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ShortcutBackupManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/ShortcutBackupManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutBackupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$1;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_server_pm_ShortcutBackupManager$1_13212(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$1;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap2(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method synthetic lambda$-com_android_server_pm_ShortcutBackupManager$1_13499(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$1;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap4(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    const/4 v12, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "onReceive : "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "SAVE_PATH"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "SOURCE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v0, "SESSION_KEY"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v0, "EXPORT_SESSION_TIME"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v0, "ACTION"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v0, "SECURITY_LEVEL"

    invoke-virtual {p2, v0, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v0, "EXTRA_BACKUP_ITEM"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT_INNER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-ne v8, v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    new-instance v10, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v10, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT_INNER"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v11, Ljava/lang/Thread;

    new-instance v0, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw$1;

    move-object v2, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/-$Lambda$0N9w4DWVnrY7Vzd6XSwQ3qXKIEw$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-direct {v11, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v11}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
