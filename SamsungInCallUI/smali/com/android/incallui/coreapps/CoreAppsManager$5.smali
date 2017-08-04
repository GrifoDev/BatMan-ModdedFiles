.class Lcom/android/incallui/coreapps/CoreAppsManager$5;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/coreapps/CoreAppsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/coreapps/CoreAppsManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x1

    const-string v0, "Agifflow-CoreAppsManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "message what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$200(Lcom/android/incallui/coreapps/CoreAppsManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$200(Lcom/android/incallui/coreapps/CoreAppsManager;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v2

    const-string v3, "check_opponent_ask"

    invoke-virtual {v1, v2, v3}, Lcom/android/incallui/coreapps/CoreAppsManager;->sendMessage(Lcom/android/incallui/Call;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$300(Lcom/android/incallui/coreapps/CoreAppsManager;)I

    move-result v1

    if-ge v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/incallui/coreapps/CoreAppsManager$5;->this$0:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-static {v1}, Lcom/android/incallui/coreapps/CoreAppsManager;->access$308(Lcom/android/incallui/coreapps/CoreAppsManager;)I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/incallui/coreapps/CoreAppsManager$5;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
