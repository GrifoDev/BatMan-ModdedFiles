.class Lcom/android/launcher3/home/HomeTransitionAnimation$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getOverviewAnimation(ZLjava/util/HashMap;ZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$enter:Z

.field final synthetic val$hotseat:Landroid/view/View;

.field final synthetic val$hotseatAlphaValue:F

.field final synthetic val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field final synthetic val$overviewPanelAlphaValue:F

.field final synthetic val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

.field final synthetic val$pageIndicatorTranslationY:F

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$workspace:Lcom/android/launcher3/home/Workspace;

.field final synthetic val$workspaceShrinkFactor:F

.field final synthetic val$workspaceTranslationY:F


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;Lcom/android/launcher3/home/OverviewPanel;FLandroid/view/View;FLcom/android/launcher3/home/Workspace;FFLcom/android/launcher3/common/view/PageIndicator;FZZLandroid/content/res/Resources;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-object p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    iput p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanelAlphaValue:F

    iput-object p4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$hotseat:Landroid/view/View;

    iput p5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$hotseatAlphaValue:F

    iput-object p6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    iput p7, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspaceShrinkFactor:F

    iput p8, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspaceTranslationY:F

    iput-object p9, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iput p10, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$pageIndicatorTranslationY:F

    iput-boolean p11, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$accessibilityEnabled:Z

    iput-boolean p12, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$enter:Z

    iput-object p13, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$res:Landroid/content/res/Resources;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$overviewPanelAlphaValue:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/OverviewPanel;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$hotseat:Landroid/view/View;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$hotseatAlphaValue:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspaceShrinkFactor:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspaceShrinkFactor:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setScaleY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspaceTranslationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$pageIndicator:Lcom/android/launcher3/common/view/PageIndicator;

    iget v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$pageIndicatorTranslationY:F

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/PageIndicator;->setTranslationY(F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$accessibilityEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$enter:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$workspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->val$res:Landroid/content/res/Resources;

    const v3, 0x7f0900c9

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$3;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$202(Lcom/android/launcher3/home/HomeTransitionAnimation;Z)Z

    return-void
.end method
