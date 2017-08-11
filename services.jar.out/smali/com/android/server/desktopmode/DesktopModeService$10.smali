.class Lcom/android/server/desktopmode/DesktopModeService$10;
.super Ljava/lang/Object;
.source "DesktopModeService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/desktopmode/DesktopModeService;->onConfigurationChanged(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/desktopmode/DesktopModeService;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/android/server/desktopmode/DesktopModeService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iput-boolean p2, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v7, 0x0

    const/16 v1, 0x30

    const/16 v2, 0x10

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    const/4 v5, 0x3

    if-ne v0, v5, :cond_5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    const/16 v5, 0x20

    if-ne v0, v5, :cond_6

    :goto_0
    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onConfigurationChanged(), enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    const/4 v6, 0x4

    invoke-static {v5, v0, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-set5(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap40(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap36(Lcom/android/server/desktopmode/DesktopModeService;)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/IActivityManagerServiceBridge;->clearHomeStack()V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap24(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v5

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    :goto_2
    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get28(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v6

    invoke-interface {v5, v0, v6}, Lcom/android/server/am/IActivityManagerServiceBridge;->moveAllTasksToStack(II)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get23(Lcom/android/server/desktopmode/DesktopModeService;)Lcom/android/server/am/IActivityManagerServiceBridge;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/server/am/IActivityManagerServiceBridge;->dispatchForceMultiWindowModeChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v5}, Lcom/android/server/desktopmode/DesktopModeService;->-get29(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v6}, Lcom/android/server/desktopmode/DesktopModeService;->-get28(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v6

    invoke-static {v0, v5, v6}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap37(Lcom/android/server/desktopmode/DesktopModeService;Landroid/content/Intent;I)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap11(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-set11(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v7}, Lcom/android/server/desktopmode/DesktopModeService;->-set3(Lcom/android/server/desktopmode/DesktopModeService;Lcom/android/server/desktopmode/DesktopModeService$Enabler;)Lcom/android/server/desktopmode/DesktopModeService$Enabler;

    :cond_2
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap27(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    invoke-static {v0, v5}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap33(Lcom/android/server/desktopmode/DesktopModeService;Z)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-virtual {v0}, Lcom/android/server/desktopmode/DesktopModeService;->isDesktopDockConnected()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_9

    move v0, v4

    :goto_3
    invoke-static {v5, v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap32(Lcom/android/server/desktopmode/DesktopModeService;ZI)V

    :goto_4
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get0()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/desktopmode/DesktopModeService;->-get1()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "Ongoing phone call!"

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0, v3}, Lcom/android/server/desktopmode/DesktopModeService;->-set12(Lcom/android/server/desktopmode/DesktopModeService;Z)Z

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get26(Lcom/android/server/desktopmode/DesktopModeService;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    :cond_4
    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-boolean v3, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-eqz v3, :cond_e

    :goto_5
    const/4 v2, 0x5

    invoke-static {v0, v1, v2}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap22(Lcom/android/server/desktopmode/DesktopModeService;II)V

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap16(Lcom/android/server/desktopmode/DesktopModeService;)V

    :cond_5
    return-void

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->val$enabled:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get7(Lcom/android/server/desktopmode/DesktopModeService;)I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_7
    move v0, v2

    goto/16 :goto_1

    :cond_8
    move v0, v3

    goto/16 :goto_2

    :cond_9
    move v0, v3

    goto :goto_3

    :cond_a
    move v0, v4

    goto :goto_3

    :cond_b
    iget-object v5, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get15(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get11(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/desktopmode/DesktopModeService$10;->this$0:Lcom/android/server/desktopmode/DesktopModeService;

    invoke-static {v0}, Lcom/android/server/desktopmode/DesktopModeService;->-get20(Lcom/android/server/desktopmode/DesktopModeService;)Z

    move-result v0

    if-eqz v0, :cond_c

    move v0, v4

    :goto_6
    invoke-static {v5, v0, v4}, Lcom/android/server/desktopmode/DesktopModeService;->-wrap32(Lcom/android/server/desktopmode/DesktopModeService;ZI)V

    goto :goto_4

    :cond_c
    move v0, v3

    goto :goto_6

    :cond_d
    move v0, v4

    goto :goto_6

    :cond_e
    move v1, v2

    goto :goto_5
.end method
