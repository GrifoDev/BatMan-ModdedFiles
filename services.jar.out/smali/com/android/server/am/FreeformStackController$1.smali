.class Lcom/android/server/am/FreeformStackController$1;
.super Landroid/content/BroadcastReceiver;
.source "FreeformStackController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/FreeformStackController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/FreeformStackController;


# direct methods
.method constructor <init>(Lcom/android/server/am/FreeformStackController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/FreeformStackController$1;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v1, p0, Lcom/android/server/am/FreeformStackController$1;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v1}, Lcom/android/server/am/FreeformStackController;->-wrap0(Lcom/android/server/am/FreeformStackController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "FreeformStackController"

    const-string/jumbo v2, "Ignore the request to minimize all in desktop mode."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "com.samsung.android.multiwindow.MINIMIZE_ALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string/jumbo v1, "com.samsung.android.multiwindow.MINIMIZE_ALL_BY_SYSTEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/FreeformStackController$1;->this$0:Lcom/android/server/am/FreeformStackController;

    invoke-static {v1}, Lcom/android/server/am/FreeformStackController;->-get2(Lcom/android/server/am/FreeformStackController;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x67

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
