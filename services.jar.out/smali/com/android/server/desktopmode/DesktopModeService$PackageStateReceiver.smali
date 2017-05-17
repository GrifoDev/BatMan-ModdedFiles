.class Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageStateReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "com.sec.knox.kccagent"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    :goto_0
    if-nez v5, :cond_1

    return-void

    :cond_0
    move v5, v4

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "PackageStateReceiver, action="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v5, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    const-string/jumbo v5, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    :cond_3
    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v6, "com.sec.android.app.desktoplauncher"

    invoke-static {v5, v6, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap2(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)Z

    move-result v1

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get17(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    if-eq v5, v1, :cond_4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5, v1}, Lcom/android/server/desktopmode/DesktopModeService;->-set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v1, :cond_5

    :goto_1
    invoke-static {v5, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_4
    :goto_2
    return-void

    :cond_5
    move v3, v4

    goto :goto_1

    :cond_6
    const-string/jumbo v5, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get17(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set8(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_2

    :cond_7
    const-string/jumbo v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    const-string/jumbo v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_8
    const-string/jumbo v3, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v4, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v4}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap28(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap36(Lcom/android/server/desktopmode/DesktopModeService;)V

    :cond_9
    iget-object v3, p0, Lcom/android/server/desktopmode/DesktopModeService$PackageStateReceiver;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v3}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.samsung.android.desktopmode.action.UPDATE_DATABASE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "com.sec.android.app.desktoplauncher"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2
.end method
