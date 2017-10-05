.class Lcom/android/launcher3/home/HomeTransitionAnimation$7;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->animateSwipeHometray(Landroid/animation/AnimatorSet;ZJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$animDuration:J

.field final synthetic val$enter:Z

.field final synthetic val$fromWidget:Z

.field final synthetic val$toTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZFJZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$fromWidget:Z

    iput p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$toTranslationY:F

    iput-wide p4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$animDuration:J

    iput-boolean p6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$enter:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$402(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$enter:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$000(Lcom/android/launcher3/home/HomeTransitionAnimation;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setScaleY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/tray/TrayManager;->setDisallowCallBacksVisibity(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$toTranslationY:F

    iget-wide v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$animDuration:J

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->setSwipeAnimationStatus(ZFJ)V

    :cond_1
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0, v4}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$402(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$fromWidget:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->setDisallowCallBacksVisibity(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$500(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$toTranslationY:F

    iget-wide v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->val$animDuration:J

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/android/launcher3/common/tray/TrayManager;->setSwipeAnimationStatus(ZFJ)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$7;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$600(Lcom/android/launcher3/home/HomeTransitionAnimation;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->resetBlurRunnable()V

    :cond_0
    return-void
.end method
