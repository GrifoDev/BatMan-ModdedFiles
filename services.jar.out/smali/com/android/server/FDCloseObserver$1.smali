.class Lcom/android/server/FDCloseObserver$1;
.super Landroid/content/BroadcastReceiver;
.source "FDCloseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/FDCloseObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FDCloseObserver;


# direct methods
.method constructor <init>(Lcom/android/server/FDCloseObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FDCloseObserver$1;->this$0:Lcom/android/server/FDCloseObserver;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FDCloseObserver$1;->this$0:Lcom/android/server/FDCloseObserver;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/FDCloseObserver;->-set0(Lcom/android/server/FDCloseObserver;Z)Z

    invoke-static {}, Lcom/android/server/FDCloseObserver;->-get0()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "BOOT_COMPLETED!!!!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/FDCloseObserver$1;->this$0:Lcom/android/server/FDCloseObserver;

    invoke-static {v1}, Lcom/android/server/FDCloseObserver;->-get3(Lcom/android/server/FDCloseObserver;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/FDCloseObserver$1;->this$0:Lcom/android/server/FDCloseObserver;

    const-string/jumbo v2, "A system_server has some problem."

    iget-object v3, p0, Lcom/android/server/FDCloseObserver$1;->this$0:Lcom/android/server/FDCloseObserver;

    invoke-static {v3}, Lcom/android/server/FDCloseObserver;->-get3(Lcom/android/server/FDCloseObserver;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/server/FDCloseObserver;->-wrap0(Lcom/android/server/FDCloseObserver;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
