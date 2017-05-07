.class Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/storage/DeviceStorageMonitorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/storage/DeviceStorageMonitorService;


# direct methods
.method constructor <init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get3(Lcom/android/server/storage/DeviceStorageMonitorService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v3, "ml_aa_storage_status"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v3, v1

    :goto_0
    invoke-static {v5, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set2(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get6(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "ml_aa_status"

    const/4 v6, 0x0

    invoke-static {v0, v3, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    :goto_1
    invoke-static {v5, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set2(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v5, "ml_status"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_2

    :goto_2
    invoke-static {v3, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set1(Lcom/android/server/storage/DeviceStorageMonitorService;Z)Z

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const-string/jumbo v2, "ml_aa_storage_value"

    const/16 v3, 0x14

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-set0(Lcom/android/server/storage/DeviceStorageMonitorService;I)I

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-object v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get7(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get4(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v5

    int-to-long v6, v5

    mul-long/2addr v2, v6

    const-wide/16 v6, 0x64

    div-long/2addr v2, v6

    iput-wide v2, v1, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowMemLowThreshold:J

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Smart Glow Low Storage Status Setting = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get6(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Smart Glow Low Storage Level Settings = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get4(Lcom/android/server/storage/DeviceStorageMonitorService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Smart Glow mSmartGlowMemLowThreshold = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    iget-wide v6, v3, Lcom/android/server/storage/DeviceStorageMonitorService;->mSmartGlowMemLowThreshold:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Smart Glow mSmartGlowStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get5(Lcom/android/server/storage/DeviceStorageMonitorService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTotalMemory = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get7(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "DeviceStorageMonitorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mFreeMem = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-static {v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->-get1(Lcom/android/server/storage/DeviceStorageMonitorService;)J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/storage/DeviceStorageMonitorService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->checkMemory(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    return-void

    :cond_0
    move v3, v2

    goto/16 :goto_0

    :cond_1
    move v3, v2

    goto/16 :goto_1

    :cond_2
    move v1, v2

    goto/16 :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method
