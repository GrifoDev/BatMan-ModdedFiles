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
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-static {v2}, Lcom/android/launcher3/util/logging/SALogging;->access$800(Lcom/android/launcher3/util/logging/SALogging;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->access$900(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1000(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz v1, :cond_0

    if-nez v0, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->access$1100(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$option:I

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$activity:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->access$1200(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iget-object v3, p0, Lcom/android/launcher3/util/logging/SALogging$16;->val$detail:Ljava/lang/String;

    invoke-virtual {v2, v1, v0, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/launcher3/util/logging/SALogging$16;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    invoke-virtual {v2, v1, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
