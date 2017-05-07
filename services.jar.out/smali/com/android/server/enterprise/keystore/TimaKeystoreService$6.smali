.class Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;
.super Ljava/lang/Object;
.source "TimaKeystoreService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/enterprise/keystore/TimaKeystoreService;->onAdminRemoved(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;


# direct methods
.method constructor <init>(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x2

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAdminRemoved Enter"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap4(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Binded Successfully"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get2(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v3}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get3(Lcom/android/server/enterprise/keystore/TimaKeystoreService;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/samsung/android/knox/downloadablekeystore/IDownloadableKeystoreService;->onAdminRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "onAdminRemoved Exit"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-get1()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Binding Failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/enterprise/keystore/TimaKeystoreService$6;->this$0:Lcom/android/server/enterprise/keystore/TimaKeystoreService;

    invoke-static {v2, v4}, Lcom/android/server/enterprise/keystore/TimaKeystoreService;->-wrap6(Lcom/android/server/enterprise/keystore/TimaKeystoreService;I)V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
