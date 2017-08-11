.class Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;
.super Ljava/lang/Object;
.source "CodecSolutionManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/CodecSolutionManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SmartFittingConnection"


# instance fields
.field final synthetic this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;


# direct methods
.method constructor <init>(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string/jumbo v0, "SmartFittingConnection"

    const-string/jumbo v1, "onServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    invoke-static {p2}, Lcom/samsung/android/smartfitting/ISmartFittingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/smartfitting/ISmartFittingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/smartfitting/ISmartFittingService;)Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string/jumbo v0, "SmartFittingConnection"

    const-string/jumbo v1, "onServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/codecsolution/CodecSolutionManagerService$1;->this$0:Lcom/samsung/android/codecsolution/CodecSolutionManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/codecsolution/CodecSolutionManagerService;->-set2(Lcom/samsung/android/codecsolution/CodecSolutionManagerService;Lcom/samsung/android/smartfitting/ISmartFittingService;)Lcom/samsung/android/smartfitting/ISmartFittingService;

    return-void
.end method
