.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onReceive : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v2, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get3(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v2

    if-eq v2, v1, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set1(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v2, "android.intent.action.USER_PRESENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "KeyguardServiceBoxContainer"

    const-string/jumbo v3, "Go to the clock page due to unlocking"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    const-string/jumbo v3, "servicebox_clock"

    invoke-static {v2, v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap11(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$5;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->reissueAllPages()V

    goto :goto_0
.end method
