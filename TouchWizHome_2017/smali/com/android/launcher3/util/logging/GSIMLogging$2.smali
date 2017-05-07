.class Lcom/android/launcher3/util/logging/GSIMLogging$2;
.super Ljava/lang/Object;
.source "GSIMLogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/GSIMLogging;->insertMultiLogging(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

.field final synthetic val$loggingInfo:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/GSIMLogging;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$2;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/GSIMLogging$2;->val$loggingInfo:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    iget-object v4, p0, Lcom/android/launcher3/util/logging/GSIMLogging$2;->val$loggingInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v1, v4, [Landroid/content/ContentValues;

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/launcher3/util/logging/GSIMLogging$2;->val$loggingInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    aput-object v5, v1, v2

    aget-object v5, v1, v2

    const-string v6, "app_id"

    const-string v7, "com.sec.android.app.launcher"

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    aget-object v5, v1, v2

    const-string v6, "feature"

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->getFeatures()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    aget-object v5, v1, v2

    const-string v6, "extra"

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->getExtras()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->getValues()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    aget-object v5, v1, v2

    const-string v6, "value"

    invoke-virtual {v3}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;->getValues()J

    move-result-wide v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v4, "com.samsung.android.providers.context.log.action.REPORT_MULTI_APP_STATUS_SURVEY"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "data"

    invoke-virtual {v0, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.samsung.android.providers.context"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v4, Lcom/android/launcher3/util/logging/Logging;->sContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
