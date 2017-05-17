.class Lcom/android/launcher3/util/logging/SALogging$25;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$statusID:Ljava/lang/String;

.field final synthetic val$value:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$25;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$statusID:Ljava/lang/String;

    iput p3, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$25;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$statusID:Ljava/lang/String;

    # invokes: Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->access$900(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v2

    new-instance v3, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    invoke-direct {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;-><init>()V

    iget v4, p0, Lcom/android/launcher3/util/logging/SALogging$25;->val$value:I

    invoke-virtual {v3, v0, v4}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->set(Ljava/lang/String;I)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;

    move-result-object v3

    invoke-virtual {v3}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingBuilder;->build()Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->sendLog(Ljava/util/Map;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "Launcher.SALogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertStatusLog : Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
