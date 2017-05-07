.class final Lcom/android/server/lights/LightsService$AlarmReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/lights/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AlarmReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/lights/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/lights/LightsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    const/16 v5, 0xd

    const/4 v4, 0x1

    :try_start_0
    invoke-virtual {p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v2, v2, v3

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-le v1, v2, :cond_2

    const/4 v2, 0x7

    if-ge v1, v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v2, v5

    monitor-enter v3

    :try_start_1
    invoke-static {}, Lcom/android/server/lights/LightsService;->-get17()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-set10(I)I

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get17()I

    move-result v2

    shl-int/2addr v4, v1

    not-int v4, v4

    and-int/2addr v2, v4

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-set14(I)I

    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-wrap7(Lcom/android/server/lights/LightsService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v3

    :cond_1
    return-void

    :catch_0
    move-exception v0

    return-void

    :cond_2
    if-eq v1, v4, :cond_0

    const/16 v2, 0xa

    if-lt v1, v2, :cond_1

    const/16 v2, 0xe

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mLights:[Lcom/android/server/lights/LightsService$LightImpl;

    aget-object v3, v2, v5

    monitor-enter v3

    add-int/lit8 v1, v1, -0x7

    :try_start_2
    invoke-static {}, Lcom/android/server/lights/LightsService;->-get17()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-set10(I)I

    invoke-static {}, Lcom/android/server/lights/LightsService;->-get17()I

    move-result v2

    shl-int/2addr v4, v1

    or-int/2addr v2, v4

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-set14(I)I

    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    iget-object v2, v2, Lcom/android/server/lights/LightsService;->mSmartGlow:[Lcom/android/server/lights/LightsService$SmartGlowImpl;

    aget-object v2, v2, v1

    invoke-static {v2}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-get4(Lcom/android/server/lights/LightsService$SmartGlowImpl;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v2, v4}, Lcom/android/server/lights/LightsService$SmartGlowImpl;->-set4(Lcom/android/server/lights/LightsService$SmartGlowImpl;I)I

    iget-object v2, p0, Lcom/android/server/lights/LightsService$AlarmReceiver;->this$0:Lcom/android/server/lights/LightsService;

    invoke-static {v2}, Lcom/android/server/lights/LightsService;->-wrap7(Lcom/android/server/lights/LightsService;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method
