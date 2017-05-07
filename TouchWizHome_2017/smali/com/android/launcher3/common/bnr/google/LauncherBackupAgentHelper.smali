.class public Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;
.super Landroid/app/backup/BackupAgentHelper;
.source "LauncherBackupAgentHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LongLogTag"
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field private static final LAUNCHER_DATA_PREFIX:Ljava/lang/String; = "L"

.field private static final TAG:Ljava/lang/String; = "LauncherBackupAgentHelper"

.field static final VERBOSE:Z

.field private static sBackupManager:Landroid/app/backup/BackupManager;


# instance fields
.field private mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/backup/BackupAgentHelper;-><init>()V

    return-void
.end method

.method public static dataChanged(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p0}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->sBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    invoke-super {p0}, Landroid/app/backup/BackupAgentHelper;->onCreate()V

    new-instance v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    const-string v0, "L"

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->addHelper(Ljava/lang/String;Landroid/app/backup/BackupHelper;)V

    return-void
.end method

.method public onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v9, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->removeChangedComponentPref()V

    :cond_0
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/backup/BackupAgentHelper;->onRestore(Landroid/app/backup/BackupDataInput;ILandroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    invoke-interface {v6}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v8, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->clearFlagEmptyDbCreated()V

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->convertShortcutsToLauncherActivities()V

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupAgentHelper;->mHelper:Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;

    iget-boolean v0, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    if-eqz v0, :cond_1

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Switch DB after restore"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v0

    invoke-virtual {v0, v9, v9}, Lcom/android/launcher3/common/model/FavoritesProvider;->switchTable(IZ)Z

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v7

    const-string v0, "LauncherBackupAgentHelper"

    const-string v1, "Restore failed"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getLauncherProvider()Lcom/android/launcher3/LauncherProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProvider;->createEmptyDB()V

    goto :goto_1
.end method
