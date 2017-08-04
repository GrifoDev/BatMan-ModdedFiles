.class Lcom/android/launcher3/common/base/view/PagedView$2;
.super Ljava/lang/Object;
.source "PagedView.java"

# interfaces
.implements Landroid/animation/LayoutTransition$TransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/PagedView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/base/view/PagedView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/view/PagedView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$2;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/LayoutTransition;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p0}, Landroid/animation/LayoutTransition;->removeTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$2;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$000(Lcom/android/launcher3/common/base/view/PagedView;)V

    :cond_0
    return-void
.end method

.method public startTransition(Landroid/animation/LayoutTransition;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    return-void
.end method
