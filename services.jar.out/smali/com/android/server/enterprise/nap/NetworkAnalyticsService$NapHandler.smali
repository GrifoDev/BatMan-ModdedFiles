.class Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;
.super Landroid/os/Handler;
.source "NetworkAnalyticsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/nap/NetworkAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NapHandler"
.end annotation


# static fields
.field private static final ACTION_ACTIVATE_MONITOR_CLIENT:I = 0x1

.field private static final ACTION_BOOT_COMPLETED:I = 0x3

.field private static final ACTION_INITIALIZE_NAP:I = 0x4

.field private static final ACTION_NEW_PROFILE_REGISTERED:I = 0xa

.field private static final ACTION_ON_ADMIN_REMOVED:I = 0x9

.field private static final ACTION_ON_PRE_ADMIN_REMOVED:I = 0x8

.field private static final ACTION_PACKAGE_ADDED:I = 0x7

.field private static final ACTION_PACKAGE_REMOVED:I = 0x6

.field private static final ACTION_REBIND_TO_PACKAGE:I = 0x2

.field private static final ACTION_ULTRA_POWER_SAVING_MODE:I = 0xc

.field private static final ACTION_UNREGISTER_CLIENT:I = 0x5

.field private static final ACTION_USER_PRESENT:I = 0xd

.field private static final ACTION_USER_REMOVED:I = 0xb


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    const/4 v11, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v2, 0x0

    iget v10, p1, Landroid/os/Message;->what:I

    packed-switch v10, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v8, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v8}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap5(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->initializeTables()V

    goto :goto_0

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez v3, :cond_2

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_1

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage:REBIND_TO_PACKAGE:handleObj null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v3}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap8(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;)V

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get2(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->endDataRecording()V

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-get0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsConfigStore;->getAllActiveKeysForPackage(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    const/4 v11, 0x1

    invoke-static {v10, v4, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap2(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;Z)V

    goto :goto_1

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    if-nez v3, :cond_4

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_3

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage:ACTIVATE_MONITOR_CLIENT:handleObj null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v3, v7, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap1(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;II)V

    goto :goto_0

    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    if-nez v3, :cond_0

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_5

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage:UNREGISTER_CLIENT:handleObj null"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :pswitch_5
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v11, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap7(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    iget-object v11, v3, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$AsyncHandlerObject;->packageName:Ljava/lang/String;

    invoke-static {v10, v11}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap6(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v6}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap10(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;Landroid/os/Bundle;)V

    goto/16 :goto_0

    :pswitch_9
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_6

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage: ACTION_ON_PRE_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap4(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_a
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-gtz v2, :cond_7

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage: ACTION_ON_ADMIN_REMOVED: Invalid adminUid"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_7
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10, v2}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap9(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;I)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Landroid/os/Bundle;

    if-nez v6, :cond_8

    return-void

    :cond_8
    const-string/jumbo v10, "reason"

    invoke-virtual {v6, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x5

    if-ne v9, v10, :cond_a

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_9

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE OFF"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :cond_a
    const/4 v10, 0x3

    if-ne v9, v10, :cond_0

    sget-boolean v10, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->DBG:Z

    if-eqz v10, :cond_b

    const-string/jumbo v10, "NetworkAnalytics:Service"

    const-string/jumbo v11, "handleMessage: ACTION_ULTRA_POWER_SAVING_MODE ON"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap3(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v10, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsService$NapHandler;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsService;

    invoke-static {v10}, Lcom/android/server/enterprise/nap/NetworkAnalyticsService;->-wrap0(Lcom/android/server/enterprise/nap/NetworkAnalyticsService;)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_0
        :pswitch_8
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
