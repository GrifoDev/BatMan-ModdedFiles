.class Lcom/android/server/BatteryService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "BatteryService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 10

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get18(Lcom/android/server/BatteryService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get9(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    :goto_0
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->-set14(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_battery_charging"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_2

    move v5, v3

    :goto_1
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->-set13(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get30(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get31(Lcom/android/server/BatteryService;)Z

    move-result v5

    :goto_2
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->-set13(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v5, "ml_aa_battery_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v5, v3

    :goto_3
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->-set16(Lcom/android/server/BatteryService;Z)Z

    iget-object v7, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get33(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get31(Lcom/android/server/BatteryService;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string/jumbo v5, "ml_aa_status"

    const/4 v8, 0x0

    invoke-static {v0, v5, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_5

    move v5, v3

    :goto_4
    invoke-static {v7, v5}, Lcom/android/server/BatteryService;->-set16(Lcom/android/server/BatteryService;Z)Z

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "ml_aa_battery_value"

    const/16 v8, 0x14

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    invoke-static {v5, v7}, Lcom/android/server/BatteryService;->-set15(Lcom/android/server/BatteryService;I)I

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    const-string/jumbo v7, "ultra_powersaving_mode"

    const/4 v8, 0x0

    const/4 v9, -0x2

    invoke-static {v0, v7, v8, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-ne v7, v3, :cond_6

    :goto_5
    invoke-static {v5, v3}, Lcom/android/server/BatteryService;->-set17(Lcom/android/server/BatteryService;Z)Z

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Smart Glow Charging Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get30(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Smart Glow Low Battery Status Setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get33(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Smart Glow Low Battery Level Settings = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get32(Lcom/android/server/BatteryService;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/BatteryService;->-get1()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "!@UPSM setting = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v5}, Lcom/android/server/BatteryService;->-get34(Lcom/android/server/BatteryService;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get34(Lcom/android/server/BatteryService;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-virtual {v3}, Lcom/android/server/BatteryService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "notification"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v2, v4, v5, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_0
    iget-object v3, p0, Lcom/android/server/BatteryService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-get15(Lcom/android/server/BatteryService;)Lcom/android/server/BatteryService$Led;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/BatteryService$Led;->updateLightsLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    return-void

    :cond_1
    move v5, v3

    goto/16 :goto_0

    :cond_2
    move v5, v4

    goto/16 :goto_1

    :cond_3
    move v5, v4

    goto/16 :goto_2

    :cond_4
    move v5, v4

    goto/16 :goto_3

    :cond_5
    move v5, v4

    goto/16 :goto_4

    :cond_6
    move v3, v4

    goto/16 :goto_5

    :catchall_0
    move-exception v3

    monitor-exit v6

    throw v3
.end method
