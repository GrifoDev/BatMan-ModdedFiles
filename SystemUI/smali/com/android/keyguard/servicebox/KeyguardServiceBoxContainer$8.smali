.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;
.super Landroid/os/Handler;
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
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get19()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get5(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eq v1, v0, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    sget-boolean v1, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v1, :cond_3

    move v1, v0

    :goto_0
    invoke-static {v3, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-set4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Z)Z

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get6(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->isKeyguardShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->makeTransitionData()V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;

    invoke-direct {v2, p0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;-><init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get7(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->updateBottomPadding(Landroid/content/Context;Z)V

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get12(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/keyguard/servicebox/utils/GuideArrowAnimator;->updateBottomPadding(Landroid/content/Context;Z)V

    :cond_2
    return-void

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v1

    iget-object v3, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v3}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v2, 0x1

    :cond_5
    invoke-virtual {v1, v2}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    goto :goto_1
.end method
