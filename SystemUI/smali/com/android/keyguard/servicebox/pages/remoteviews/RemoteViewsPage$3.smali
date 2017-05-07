.class Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage$3;
.super Landroid/os/Handler;
.source "RemoteViewsPage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap1(Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Top activie check, b = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", a = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage$3;->this$0:Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->-wrap0(Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    sget-object v2, Lcom/android/keyguard/servicebox/pages/remoteviews/RemoteViewsPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Try unlock"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
