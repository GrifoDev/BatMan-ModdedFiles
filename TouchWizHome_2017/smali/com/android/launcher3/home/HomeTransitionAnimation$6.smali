.class Lcom/android/launcher3/home/HomeTransitionAnimation$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getScreenGridAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$accessibilityEnabled:Z

.field final synthetic val$enter:Z

.field final synthetic val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

.field final synthetic val$res:Landroid/content/res/Resources;

.field final synthetic val$screenGridTopContainer:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/OverviewPanel;ZLandroid/content/res/Resources;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$accessibilityEnabled:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    iput-boolean p4, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$enter:Z

    iput-object p5, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$res:Landroid/content/res/Resources;

    iput-object p6, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$screenGridTopContainer:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$accessibilityEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/home/OverviewPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$overviewPanel:Lcom/android/launcher3/home/OverviewPanel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/OverviewPanel;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$enter:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    iget-object v1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$res:Landroid/content/res/Resources;

    const v2, 0x7f090053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/Talk;->postSay(Ljava/lang/String;)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$enter:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$6;->val$screenGridTopContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method
