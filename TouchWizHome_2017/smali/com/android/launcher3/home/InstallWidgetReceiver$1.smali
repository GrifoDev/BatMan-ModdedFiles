.class Lcom/android/launcher3/home/InstallWidgetReceiver$1;
.super Ljava/lang/Object;
.source "InstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/InstallWidgetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/InstallWidgetReceiver;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/InstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->this$0:Lcom/android/launcher3/home/InstallWidgetReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$data:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;IJ)V

    iget-object v1, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    const-string v1, "InstallWidgetReceiver"

    const-string v2, "ComponentName is null or empty"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget v1, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanX:I

    if-lez v1, :cond_1

    iget v1, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanY:I

    if-gtz v1, :cond_2

    :cond_1
    const-string v1, "InstallWidgetReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Span ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->spanY:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->this$0:Lcom/android/launcher3/home/InstallWidgetReceiver;

    iget-object v2, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v1, v2, v0}, Lcom/android/launcher3/home/InstallWidgetReceiver;->access$000(Lcom/android/launcher3/home/InstallWidgetReceiver;Landroid/content/Context;Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "InstallWidgetReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to bind app widget id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->appWidgetId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " component "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/android/launcher3/home/InstallWidgetReceiver$PendingInstallWidgetInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/home/InstallWidgetReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_0
.end method
