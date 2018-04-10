.class Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;
.super Landroid/content/BroadcastReceiver;
.source "AlarmManagerServiceExt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;


# direct methods
.method constructor <init>(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/server/AlarmManagerServiceExt;->-get0()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string/jumbo v5, "AlarmManagerEXT"

    const-string/jumbo v7, "ACTION_BOOT_COMPLETED"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get13(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    :try_start_0
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get7(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get8(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get15(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Ljava/lang/Object;

    move-result-object v8

    monitor-enter v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->pm:Landroid/content/pm/PackageManager;

    const/4 v9, 0x0

    invoke-virtual {v5, v9}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v4

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt;->isApplicationUid(I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get6(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get5(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$PackageList;

    move-result-object v5

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lcom/android/server/AlarmManagerServiceExt$PackageList;->contains(Ljava/lang/String;)Z

    move-result v5

    :goto_2
    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->mUserAppList:Ljava/util/Set;

    iget-object v9, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v5, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    :try_start_2
    monitor-exit v8

    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v5

    monitor-exit v7

    throw v5

    :cond_3
    move v5, v6

    goto :goto_2

    :cond_4
    :try_start_3
    monitor-exit v8

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get16(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-get16(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;)Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;->-wrap0(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$MultiUserManager;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_5
    monitor-exit v7

    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    invoke-static {v5, p1}, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->-wrap1(Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;Landroid/content/Context;)V

    const-string/jumbo v5, "account"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    if-eqz v0, :cond_6

    :try_start_4
    iget-object v5, p0, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler$3;->this$1:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;->this$0:Lcom/android/server/AlarmManagerServiceExt;

    iget-object v5, v5, Lcom/android/server/AlarmManagerServiceExt;->mSyncScheduler:Lcom/android/server/AlarmManagerServiceExt$SyncScheduler;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V
    :try_end_4
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_6
    :goto_3
    return-void

    :catch_0
    move-exception v1

    const-string/jumbo v5, "AlarmManagerEXT"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Ignore Exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
