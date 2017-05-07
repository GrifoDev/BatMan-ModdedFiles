.class Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;
.super Landroid/database/ContentObserver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SmartGlowSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v3, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v3}, Lcom/android/server/lights/LightsService;->-get11(Lcom/android/server/lights/LightsService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get3(Lcom/android/server/lights/LightsService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v5, "ml_status"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/lights/LightsService;->-set12(Lcom/android/server/lights/LightsService;I)I

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v5, "ml_repeat_value"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/lights/LightsService;->-set13(Lcom/android/server/lights/LightsService;I)I

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const-string/jumbo v5, "ml_battery_charging"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-static {v4, v1}, Lcom/android/server/lights/LightsService;->-set11(Lcom/android/server/lights/LightsService;Z)Z

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/lights/LightsService;->-set12(Lcom/android/server/lights/LightsService;I)I

    :cond_1
    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SmartGlow Intensity Settings Changed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SmartGlow Repeat Settings Changed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get16(Lcom/android/server/lights/LightsService;)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "LightsService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "SmartGlow Charging Status Settings Changed = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v4}, Lcom/android/server/lights/LightsService;->-get14(Lcom/android/server/lights/LightsService;)Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v1}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "/sys/class/leds/led_1/intensity"

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "/sys/class/leds/led_2/intensity"

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "/sys/class/leds/led_3/intensity"

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V

    const-string/jumbo v1, "/sys/class/leds/led_4/intensity"

    iget-object v2, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-get15(Lcom/android/server/lights/LightsService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/power/PowerManagerUtil;->fileWriteInt(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v1, p0, Lcom/android/server/lights/LightsService$SmartGlowSettingsObserver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v1, v1, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    const/16 v2, 0xd

    aget-object v1, v1, v2

    const/4 v2, -0x1

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v4}, Lcom/android/server/lights/LightsService$LightImpl;->setSmartGlowOff(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1
.end method
