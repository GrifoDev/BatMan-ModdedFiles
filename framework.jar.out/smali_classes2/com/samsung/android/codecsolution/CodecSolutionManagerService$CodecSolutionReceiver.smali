.class public Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CodecSolutionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CodecSolutionReceiver"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFittingReceiver"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string/jumbo v1, "SmartFittingReceiver"

    const-string/jumbo v2, "onReceive()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SmartFittingReceiver"

    const-string/jumbo v2, " : android.intent.action.BOOT_COMPLETED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set0(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Z)Z

    :try_start_0
    const-string/jumbo v1, "SmartFittingReceiver"

    const-string/jumbo v2, " : registerProcessObserver()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v1}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get1(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Landroid/app/IActivityManager;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CodecSolutionReceiver;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {v2}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-get4(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)Lcom/samsung/android/codecsolution/CodecSolutionManagerService$CSProcessObserver;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
