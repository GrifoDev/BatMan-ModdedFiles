.class Lcom/android/server/pm/PersonaServiceProxy$1;
.super Landroid/content/BroadcastReceiver;
.source "PersonaServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaServiceProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaServiceProxy;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PersonaServiceProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 15

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/16 v12, -0x2710

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "broadcast received. Action:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v11, "android.intent.action.USER_STARTED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "user-"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " started. Finding container service..."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11, v9}, Lcom/android/server/pm/PersonaServiceProxy;->-wrap1(Lcom/android/server/pm/PersonaServiceProxy;I)V

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Checking if "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " is enabled COM container"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get4(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get4(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/os/UserManager;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    :goto_0
    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get2(Lcom/android/server/pm/PersonaServiceProxy;)Landroid/content/Context;

    move-result-object v11

    const-string/jumbo v12, "persona"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/knox/SemPersonaManager;

    invoke-virtual {v6, v9}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(I)Z

    move-result v11

    if-eqz v11, :cond_0

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Switch to profile immediately for COM container: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v11, "android.intent.extra.user_handle"

    invoke-virtual {v2, v11, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v11, "knox.container.proxy.COMMAND_SWITCH_PROFILE"

    invoke-static {v11, v2}, Lcom/samsung/android/knox/ContainerProxy;->sendCommand(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v11

    if-nez v11, :cond_0

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    const-string/jumbo v12, "Switch to COM container failed since container service not running"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/server/pm/PersonaServiceProxy;->-set1(Lcom/android/server/pm/PersonaServiceProxy;Z)Z

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v8, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v11, "android.intent.action.USER_REMOVED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Removed User - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get3(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v11

    if-nez v11, :cond_5

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-wrap0(Lcom/android/server/pm/PersonaServiceProxy;)Z

    move-result v11

    xor-int/lit8 v11, v11, 0x1

    if-eqz v11, :cond_5

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    const-string/jumbo v12, "No Knox profile exist on device so stopping all Container service"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get0(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12

    :try_start_0
    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get1(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v11

    if-eqz v11, :cond_4

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get1(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    if-lez v11, :cond_4

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get1(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/ContainerServiceInfo;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/ContainerServiceWrapper;

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Stopping Container service - "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Lcom/android/server/ContainerServiceInfo;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v11, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v7}, Lcom/android/server/ContainerServiceWrapper;->disconnect()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v11

    monitor-exit v12

    throw v11

    :cond_3
    :try_start_1
    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    invoke-static {v11}, Lcom/android/server/pm/PersonaServiceProxy;->-get1(Lcom/android/server/pm/PersonaServiceProxy;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit v12

    goto/16 :goto_1

    :cond_5
    const-string/jumbo v11, "PersonaManagerService::Proxy"

    const-string/jumbo v12, "Knox profile exist on device so not stopping Container service..."

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_6
    const-string/jumbo v11, "android.intent.action.USER_ADDED"

    invoke-virtual {v11, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string/jumbo v11, "android.intent.extra.user_handle"

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const-string/jumbo v11, "PersonaManagerService::Proxy"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Added User - "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v11

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/server/pm/PersonaServiceProxy$1;->this$0:Lcom/android/server/pm/PersonaServiceProxy;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/android/server/pm/PersonaServiceProxy;->-wrap1(Lcom/android/server/pm/PersonaServiceProxy;I)V

    goto/16 :goto_1
.end method
