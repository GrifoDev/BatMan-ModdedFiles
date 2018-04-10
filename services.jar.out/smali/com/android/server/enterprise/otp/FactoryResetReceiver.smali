.class public Lcom/android/server/enterprise/otp/FactoryResetReceiver;
.super Landroid/content/BroadcastReceiver;
.source "FactoryResetReceiver.java"


# instance fields
.field dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/FactoryResetReceiver;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const-string/jumbo v5, "FactoryResetReceiver:: onReceive Enter"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "android.intent.action.MASTER_CLEAR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FactoryResetReceiver:: unexpected intent received : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/enterprise/otp/FactoryResetReceiver;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    new-instance v5, Landroid/app/enterprise/ContextInfo;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    iget v0, v5, Landroid/app/enterprise/ContextInfo;->mContainerId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FactoryResetReceiver:: deleting tokens in container id : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/enterprise/otp/FactoryResetReceiver;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->getOtpTokensInContainer(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string/jumbo v5, "FactoryResetReceiver:: tokens list is empty"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    return-void

    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FactoryResetReceiver:: number of tokens to be deleted = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "FactoryResetReceiver:: deleting token = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/securedata/TlcHandler;->deleteToken(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_3

    const-string/jumbo v5, "FactoryResetReceiver:: removed token in TZ"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    :goto_1
    iget-object v5, p0, Lcom/android/server/enterprise/otp/FactoryResetReceiver;->dbHandler:Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;

    invoke-virtual {v5, v3}, Lcom/android/server/enterprise/otp/engine/handler/db/DBHandler;->removeOtpToken(Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_4

    const-string/jumbo v5, "FactoryResetReceiver:: removed token in OTP DB"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "FactoryResetReceiver:: failed to remove token in TZ"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "FactoryResetReceiver::failed to remove token in OTP DB"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    const-string/jumbo v5, "FactoryResetReceiver:: onReceive Exit"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    return-void
.end method
