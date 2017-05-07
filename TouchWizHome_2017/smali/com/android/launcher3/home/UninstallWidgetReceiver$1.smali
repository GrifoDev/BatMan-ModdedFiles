.class Lcom/android/launcher3/home/UninstallWidgetReceiver$1;
.super Ljava/lang/Object;
.source "UninstallWidgetReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/UninstallWidgetReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/UninstallWidgetReceiver;

.field final synthetic val$app:Lcom/android/launcher3/LauncherAppState;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/UninstallWidgetReceiver;Landroid/content/Intent;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->this$0:Lcom/android/launcher3/home/UninstallWidgetReceiver;

    iput-object p2, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$data:Landroid/content/Intent;

    iput-object p3, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$data:Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    const-wide/16 v4, -0x1

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;-><init>(Landroid/content/Intent;Landroid/content/Context;J)V

    iget v1, v0, Lcom/android/launcher3/home/UninstallWidgetReceiver$PendingUninstallWidgetInfo;->appWidgetId:I

    if-nez v1, :cond_0

    const-string v1, "UninstallWidget"

    const-string v2, "appWidgetId is invalid"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/home/UninstallWidgetReceiver$1;->val$app:Lcom/android/launcher3/LauncherAppState;

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/ExternalRequestQueue;->queueExternalRequestInfo(Lcom/android/launcher3/home/ExternalRequestInfo;Landroid/content/Context;Lcom/android/launcher3/LauncherAppState;)V

    goto :goto_0
.end method
