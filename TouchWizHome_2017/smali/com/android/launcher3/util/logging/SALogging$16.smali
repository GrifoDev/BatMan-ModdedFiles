.class Lcom/android/launcher3/util/logging/SALogging$16;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$activity:Lcom/android/launcher3/Launcher;

.field final synthetic val$detail:Ljava/lang/String;

.field final synthetic val$option:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iput-object p4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z
    invoke-static {v4}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$500(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz v3, :cond_0

    if-nez v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->access$800(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->access$900(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    if-eqz v4, :cond_4

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v5

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v4

    check-cast v4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v6

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, " "

    :goto_2
    invoke-virtual {v6, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v4, "Launcher.SALogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertQuickOptionEventLog : Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_4
    :try_start_2
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v5

    new-instance v4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v4

    check-cast v4, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v4, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v1

    const-string v4, "Launcher.SALogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "insertQuickOptionEventLog : Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1
.end method
