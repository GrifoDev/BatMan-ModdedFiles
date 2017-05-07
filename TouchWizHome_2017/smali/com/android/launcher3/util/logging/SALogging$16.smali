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
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z
    invoke-static {v3}, Lcom/android/launcher3/util/logging/SALogging;->access$400(Lcom/android/launcher3/util/logging/SALogging;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$500(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$600(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v2, :cond_0

    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$700(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    invoke-static {v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->access$800(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/android/launcher3/util/logging/SALogging;->access$900(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    if-eqz v3, :cond_3

    const-string v3, ""

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventDetail(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;-><init>()V

    invoke-virtual {v3, v2}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setScreenView(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$LogBuilder;

    move-result-object v3

    check-cast v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    invoke-virtual {v3, v0}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->setEventName(Ljava/lang/String;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$EventBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I

    goto :goto_1
.end method
