.class Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;
.super Ljava/lang/Object;
.source "ShortcutBackupManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutBackupManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackupConnection"
.end annotation


# static fields
.field static final BACKUP:I = 0x0

.field static final RESTORE:I = 0x1


# instance fields
.field private mSaveKey:Ljava/lang/String;

.field private mSecurityLevel:I

.field private mSessiontime:Ljava/lang/String;

.field private mSource:Ljava/lang/String;

.field private mTargetPath:Ljava/lang/String;

.field private mType:I

.field final synthetic this$0:Lcom/android/server/pm/ShortcutBackupManager;


# direct methods
.method constructor <init>(Lcom/android/server/pm/ShortcutBackupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 11

    const/4 v10, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "ShortcutBackupManager"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p2}, Lcom/android/internal/app/IMediaContainerService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IMediaContainerService;

    move-result-object v8

    const/4 v2, 0x0

    if-eqz v8, :cond_4

    :try_start_0
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mTargetPath:Ljava/lang/String;

    invoke-interface {v8, v0}, Lcom/android/internal/app/IMediaContainerService;->backupShortcut(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    if-eqz v8, :cond_2

    :try_start_1
    const-string/jumbo v0, "/cache/shortcutbr"

    invoke-interface {v8, v0}, Lcom/android/internal/app/IMediaContainerService;->clearDirectory(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap3(Lcom/android/server/pm/ShortcutBackupManager;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    invoke-static {v0}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap1(Lcom/android/server/pm/ShortcutBackupManager;)V

    return-void

    :cond_3
    :try_start_2
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-ne v0, v10, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mTargetPath:Ljava/lang/String;

    invoke-interface {v8, v0}, Lcom/android/internal/app/IMediaContainerService;->restoreShortcut(Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSaveKey:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSecurityLevel:I

    iget-object v9, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static {v0, v1, v4, v5, v9}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap0(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x1

    const-string/jumbo v0, "ShortcutBackupManager"

    const-string/jumbo v1, "imcs is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v6

    const/4 v2, 0x1

    :try_start_3
    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Exception : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v7

    const/4 v2, 0x1

    :try_start_4
    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "IOException : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_6
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-ne v0, v10, :cond_1

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    move-object v9, v0

    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    throw v9

    :cond_9
    iget v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    if-ne v0, v10, :cond_8

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->this$0:Lcom/android/server/pm/ShortcutBackupManager;

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

    iget-object v4, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    invoke-static/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->-wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :catch_2
    move-exception v6

    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "ShortcutBackupManager"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setSaveKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSaveKey:Ljava/lang/String;

    return-void
.end method

.method public setSecurityLevel(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSecurityLevel:I

    return-void
.end method

.method public setSessiontime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSessiontime:Ljava/lang/String;

    return-void
.end method

.method public setSource(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mSource:Ljava/lang/String;

    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mTargetPath:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->mType:I

    return-void
.end method
