.class Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;
.super Landroid/os/Handler;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "handleMessage : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.mhdrservice"

    const-string/jumbo v6, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.mhdrservice"

    const-string/jumbo v6, "com.samsung.android.mhdrservice.MhdrService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    goto :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.mhdrservice"

    const-string/jumbo v6, "com.samsung.android.mhdrservice.MhdrParamService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.mhdrservice"

    const-string/jumbo v6, "com.samsung.android.mhdrservice.MhdrMetaService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_0

    :sswitch_4
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.smartfitting"

    const-string/jumbo v6, "com.samsung.android.smartfitting.SmartFittingService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v4

    goto/16 :goto_0

    :sswitch_5
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v5, "com.samsung.android.smartfitting"

    const-string/jumbo v6, "com.samsung.android.smartfitting.SmartFittingService"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    sget-object v6, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;I)I

    goto/16 :goto_0

    :sswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v5, "intent"

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    const-string/jumbo v5, "CodecSolution"

    const-string/jumbo v6, "intent is null."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "sendBroadcast "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :sswitch_7
    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get3(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string/jumbo v5, "CodecSolution"

    const-string/jumbo v6, "ignore before boot completed"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;

    const-string/jumbo v5, "CodecSolution"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "event : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getCategory()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$2;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v5}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v1}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getCategory()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->getLabel()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/codecsolution/Logging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x67 -> :sswitch_3
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_5
        0x320 -> :sswitch_6
        0x384 -> :sswitch_7
    .end sparse-switch
.end method
