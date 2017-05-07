.class final Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;
.super Landroid/os/Handler;
.source "DesktopModeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/DesktopModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DesktopModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;


# direct methods
.method private constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;-><init>(Lcom/android/server/desktopmode/DesktopModeService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v10, 0x1

    const/4 v7, 0x0

    iget v6, p1, Landroid/os/Message;->what:I

    packed-switch v6, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v7

    :cond_1
    if-nez v7, :cond_2

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap19(Lcom/android/server/desktopmode/DesktopModeService;I)V

    :cond_2
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap20(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_0

    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap33(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto :goto_0

    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get2(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v4, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->setShowForAllUsers()V

    invoke-virtual {v5}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;

    invoke-direct {v7, p0, v5, v4}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler$1;-><init>(Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;Landroid/widget/Toast;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;

    move-result-object v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-set11(Lcom/android/server/desktopmode/DesktopModeService;Ljava/util/List;)Ljava/util/List;

    :cond_3
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Toast.show("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "), mToasts="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)Ljava/util/List;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Starting loading screen... enter="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    if-eqz v2, :cond_5

    const/16 v6, 0x20

    :goto_1
    invoke-static {v11, v6, v8}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v7, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap31(Lcom/android/server/desktopmode/DesktopModeService;ZI)V

    if-eqz v2, :cond_6

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showExternal(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showInternal(I)V

    :goto_2
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/wm/IWindowManagerServiceBridge;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/wm/IWindowManagerServiceBridge;->launchHomeForDesktopMode()V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->removeMessages(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {v8, v7, v9}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    const-wide/16 v8, 0x3e8

    invoke-virtual {v6, v7, v8, v9}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    :cond_5
    move v6, v7

    goto :goto_1

    :cond_6
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v13}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap18(Lcom/android/server/desktopmode/DesktopModeService;I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v10}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap19(Lcom/android/server/desktopmode/DesktopModeService;I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v10

    if-eqz v2, :cond_7

    move v6, v8

    :goto_3
    invoke-virtual {v10, v6}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showExternal(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v6, v8}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showInternal(I)V

    goto :goto_2

    :cond_7
    move v6, v9

    goto :goto_3

    :cond_8
    move v8, v9

    goto :goto_4

    :pswitch_4
    iget v6, p1, Landroid/os/Message;->arg1:I

    const/4 v9, -0x1

    if-ne v6, v9, :cond_c

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Loading screen dismissed by timeout mIsDesktopMode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v11}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-set10(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap41(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/16 v6, 0x30

    :goto_6
    invoke-static {v9, v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap21(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v9

    invoke-static {v6, v9}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    const-string/jumbo v9, "dex_enabled_font"

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v11}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v11

    invoke-static {v6, v9, v11}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap27(Lcom/android/server/desktopmode/DesktopModeService;Ljava/lang/String;Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-nez v6, :cond_e

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get25(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v6

    if-eqz v6, :cond_e

    :goto_7
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get9(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissExternal(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    invoke-virtual {v6, v13}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->showInternal(I)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get18(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v9

    sget v11, Lcom/samsung/android/framework/res/R$string;->dex_touchpad_notice_popup:I

    invoke-virtual {v9, v8, v11, v10}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_a
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap34(Lcom/android/server/desktopmode/DesktopModeService;)V

    :goto_8
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/os/PowerManagerInternal;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/os/PowerManagerInternal;->setGoToSleepPrevention(Z)V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v8, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v8}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v8

    if-eqz v8, :cond_b

    move v7, v10

    :cond_b
    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap17(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto/16 :goto_0

    :cond_c
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "Stopping loading screen... mIsDesktopMode="

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v11, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v11}, Lcom/android/server/desktopmode/DesktopModeService;->-get13(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_d
    const/16 v6, 0x10

    goto/16 :goto_6

    :cond_e
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v6

    iget-object v9, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v9}, Lcom/android/server/desktopmode/DesktopModeService;->-get10(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;

    move-result-object v9

    sget v11, Lcom/samsung/android/framework/res/R$string;->dex_dialog_launch_toast:I

    invoke-virtual {v9, v8, v11, v10}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_7

    :cond_f
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get21(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/samsung/android/desktopmode/DesktopModePresentationManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/samsung/android/desktopmode/DesktopModePresentationManager;->dismissAll()V

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap8(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    goto :goto_8

    :pswitch_5
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap40(Lcom/android/server/desktopmode/DesktopModeService;)V

    goto/16 :goto_0

    :pswitch_6
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$DesktopModeHandler;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-static {v6, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap38(Lcom/android/server/desktopmode/DesktopModeService;I)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method
