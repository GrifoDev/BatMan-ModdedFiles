.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_0

    const-string/jumbo v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Nap Receiver : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->isInitialStickyBroadcast()Z

    move-result v6

    if-nez v6, :cond_1

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v7, 0x3

    invoke-static {v6, v7, v9, v9, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string/jumbo v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    :goto_1
    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_4

    const-string/jumbo v6, "NetworkAnalytics:Service"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ACTION PACKAGE ADDED/REMOVED packageName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->isActivatedPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    new-instance v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {v3, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;-><init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    iput-object v4, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const-string/jumbo v6, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v6, 0x6

    :goto_2
    invoke-static {v7, v6, v9, v9, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v6, 0x7

    goto :goto_2

    :cond_7
    const-string/jumbo v6, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v7, 0xb

    invoke-static {v6, v7, v9, v9, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto :goto_0

    :cond_8
    const-string/jumbo v6, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    sget-boolean v6, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v6, :cond_9

    const-string/jumbo v6, "NetworkAnalytics:Service"

    const-string/jumbo v7, "EMERGENCY_STATE_CHANGED received"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v7, 0xc

    invoke-static {v6, v7, v9, v9, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_a
    const-string/jumbo v6, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    iget-object v6, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapReceiver;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/16 v7, 0xd

    invoke-static {v6, v7, v9, v9, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap11(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method
