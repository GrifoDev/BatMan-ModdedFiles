.class Lcom/android/launcher3/common/view/IconView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "IconView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/view/IconView;->animateEachScale(Landroid/view/View;ZIJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/view/IconView;

.field final synthetic val$view:Landroid/view/View;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/view/IconView;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/view/IconView$2;->this$0:Lcom/android/launcher3/common/view/IconView;

    iput-boolean p2, p0, Lcom/android/launcher3/common/view/IconView$2;->val$visible:Z

    iput-object p3, p0, Lcom/android/launcher3/common/view/IconView$2;->val$view:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView$2;->val$visible:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView$2;->val$view:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/common/view/IconView$2;->val$visible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/view/IconView$2;->val$view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
