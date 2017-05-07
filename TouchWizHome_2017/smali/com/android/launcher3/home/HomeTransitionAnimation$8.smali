.class Lcom/android/launcher3/home/HomeTransitionAnimation$8;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->changeOverviewBackground(Landroid/animation/AnimatorSet;Lcom/android/launcher3/home/Workspace;ZZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

.field final synthetic val$cl:Lcom/android/launcher3/home/WorkspaceCellLayout;

.field final synthetic val$enter:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;ZLcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    iput-boolean p2, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->val$enter:Z

    iput-object p3, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->val$cl:Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->val$enter:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->val$cl:Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$8;->val$cl:Lcom/android/launcher3/home/WorkspaceCellLayout;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImage(IZ)V

    :cond_0
    return-void
.end method
