.class Lcom/android/launcher3/util/logging/SALogging$19;
.super Ljava/lang/Object;
.source "SALogging.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/logging/SALogging;

.field final synthetic val$backPressed:Z

.field final synthetic val$homePressed:Z

.field final synthetic val$launcher:Lcom/android/launcher3/Launcher;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    iput-object p2, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    iput-boolean p3, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$backPressed:Z

    iput-boolean p4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$homePressed:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const v8, 0x7f090182

    const v7, 0x7f090136

    const/4 v6, 0x2

    const/4 v5, 0x1

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    iget-boolean v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$backPressed:Z

    if-eqz v4, :cond_1

    const-string v0, "1"

    :goto_0
    if-ne v3, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901b9

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-boolean v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$homePressed:Z

    if-eqz v4, :cond_2

    const-string v0, "2"

    goto :goto_0

    :cond_2
    const-string v0, "3"

    goto :goto_0

    :cond_3
    if-ne v3, v6, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901ac

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->val$launcher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    if-ne v2, v6, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901a5

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    if-ne v2, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging$19;->this$0:Lcom/android/launcher3/util/logging/SALogging;

    const v5, 0x7f0901b1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
