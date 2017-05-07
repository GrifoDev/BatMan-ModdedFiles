.class Lcom/android/server/FDCloseObserver$3;
.super Ljava/lang/Thread;
.source "FDCloseObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/FDCloseObserver;->prepare()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/FDCloseObserver;


# direct methods
.method constructor <init>(Lcom/android/server/FDCloseObserver;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/FDCloseObserver$3;->this$0:Lcom/android/server/FDCloseObserver;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v3, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :goto_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v3

    if-eqz v3, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/FDCloseObserver$3;->this$0:Lcom/android/server/FDCloseObserver;

    invoke-static {v3}, Lcom/android/server/FDCloseObserver;->-get2(Lcom/android/server/FDCloseObserver;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/FDCloseObserver$3;->this$0:Lcom/android/server/FDCloseObserver;

    iget-object v4, v4, Lcom/android/server/FDCloseObserver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/server/FDCloseObserver;->-get0()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "Receiver registered!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/server/FDCloseObserver$3;->this$0:Lcom/android/server/FDCloseObserver;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/FDCloseObserver;->-set0(Lcom/android/server/FDCloseObserver;Z)Z

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-wide/16 v4, 0x3e8

    :try_start_1
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    goto :goto_0
.end method
