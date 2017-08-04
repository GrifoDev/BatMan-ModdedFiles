.class Lcom/android/launcher3/util/logging/GSIMLogging$4;
.super Ljava/lang/Object;
.source "GSIMLogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/GSIMLogging;->runFirstAppStatusLogging()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/GSIMLogging;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    const/4 v8, 0x1

    const/16 v7, -0x64

    const/16 v6, -0x66

    const-wide/16 v12, -0x1

    const/4 v10, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v5, v7, v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->getItemCountByContainer(IZ)I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v5, v6, v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->getItemCountByContainer(IZ)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v5, v4, v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->getNamedFolderCount(II)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v5, v3, v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->getNamedFolderCount(II)I

    move-result v0

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "HOME"

    iget-object v7, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->getHomePageCount()I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v5, v6, v10, v8, v9}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "APPS"

    iget-object v7, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->getAppsPageCount()I

    move-result v7

    int-to-long v8, v7

    invoke-direct {v5, v6, v10, v8, v9}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "HSFO"

    int-to-long v8, v4

    invoke-direct {v5, v6, v10, v8, v9}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "APFO"

    int-to-long v8, v3

    invoke-direct {v5, v6, v10, v8, v9}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "HOFN"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v12, v13}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "APFN"

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v12, v13}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v6, "HSGR"

    iget-object v7, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-static {v7}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$700(Lcom/android/launcher3/util/logging/GSIMLogging;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7, v12, v13}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-static {v5}, Lcom/android/launcher3/util/logging/GSIMLogging;->access$600(Lcom/android/launcher3/util/logging/GSIMLogging;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v5, p0, Lcom/android/launcher3/util/logging/GSIMLogging$4;->this$0:Lcom/android/launcher3/util/logging/GSIMLogging;

    invoke-virtual {v5, v2}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertMultiLogging(Ljava/util/ArrayList;)V

    return-void
.end method
