.class Lcom/android/launcher3/common/base/view/PagedView$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PagedView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/base/view/PagedView;->animatePullingPages()V
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

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, -0x1

    const-string v0, "PagedView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "End of page pulling anim. State is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v2}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$602(Lcom/android/launcher3/common/base/view/PagedView;F)F

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v0}, Lcom/android/launcher3/common/base/view/PagedView;->access$500(Lcom/android/launcher3/common/base/view/PagedView;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/common/base/view/PagedView;->access$702(Lcom/android/launcher3/common/base/view/PagedView;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/PagedView;->resetPulledPages()V

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/PagedView$7;->this$0:Lcom/android/launcher3/common/base/view/PagedView;

    invoke-static {v0, v3}, Lcom/android/launcher3/common/base/view/PagedView;->access$502(Lcom/android/launcher3/common/base/view/PagedView;I)I

    goto :goto_0
.end method
