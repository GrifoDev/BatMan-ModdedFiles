.class Lcom/google/android/libraries/launcherclient/LauncherClient$2;
.super Ljava/lang/Object;
.source "LauncherClient.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/libraries/launcherclient/LauncherClient;->reconnect()V
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

    iput-object p1, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/libraries/launcherclient/LauncherClient$2;->this$0:Lcom/google/android/libraries/launcherclient/LauncherClient;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/libraries/launcherclient/LauncherClient;->access$600(Lcom/google/android/libraries/launcherclient/LauncherClient;I)V

    return-void
.end method
