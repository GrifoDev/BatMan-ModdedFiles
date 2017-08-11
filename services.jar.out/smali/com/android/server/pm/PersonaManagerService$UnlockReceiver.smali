.class Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PersonaManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PersonaManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UnlockReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PersonaManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/PersonaManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PersonaManagerService;Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;-><init>(Lcom/android/server/pm/PersonaManagerService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->isKioskContainerExistOnDevice()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-virtual {v3}, Lcom/android/server/pm/PersonaManagerService;->getPersonaIds()[I

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->getPersonaInfo(I)Lcom/samsung/android/knox/SemPersonaInfo;

    move-result-object v0

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->partial:Z

    if-nez v3, :cond_0

    iget-boolean v3, v0, Lcom/samsung/android/knox/SemPersonaInfo;->removePersona:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    sget-object v4, Lcom/samsung/android/knox/SemPersonaState;->DELETING:Lcom/samsung/android/knox/SemPersonaState;

    iget v5, v0, Lcom/samsung/android/knox/SemPersonaInfo;->id:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/pm/PersonaManagerService;->inState(Lcom/samsung/android/knox/SemPersonaState;I)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "com.sec.knox.UPDATE_WIDGET"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "android.intent.extra.user_handle"

    aget v4, v1, v6

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    invoke-static {v3}, Lcom/android/server/pm/PersonaManagerService;->-get4(Lcom/android/server/pm/PersonaManagerService;)Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->-set1(Lcom/android/server/pm/PersonaManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/pm/PersonaManagerService$UnlockReceiver;->this$0:Lcom/android/server/pm/PersonaManagerService;

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Lcom/android/server/pm/PersonaManagerService;->launchPersonaHome(I)Z

    goto :goto_0
.end method
