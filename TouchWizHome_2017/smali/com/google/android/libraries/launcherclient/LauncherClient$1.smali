.class Lcom/google/android/libraries/launcherclient/LauncherClient$1;
.super Landroid/content/BroadcastReceiver;
.source "LauncherClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;


# direct methods
.method constructor <init>(Lcom/google/android/libraries/launcherclient/LauncherClient;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_1

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$000(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/SimpleServiceConnection;->unbindSelf()V

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$100(Lcom/google/android/libraries/launcherclient/LauncherClient;)Lcom/google/android/libraries/launcherclient/AppServiceConnection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/AppServiceConnection;->unbindSelf()V

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-static {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$200(Lcom/google/android/libraries/launcherclient/LauncherClient;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$1;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-virtual {v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V

    :cond_1
    return-void
.end method
