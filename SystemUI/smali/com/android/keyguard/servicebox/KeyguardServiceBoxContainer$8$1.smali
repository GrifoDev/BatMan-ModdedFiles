.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;
.super Ljava/lang/Object;
.source "KeyguardServiceBoxContainer.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get13(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;

    move-result-object v2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get4(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPageAdapter;->setPageType(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get10(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8$1;->this$1:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;

    iget-object v0, v0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$8;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-get2(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v1

    :cond_1
    move v0, v1

    goto :goto_0
.end method
