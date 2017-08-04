.class Lcom/android/launcher3/home/HomeTransitionAnimation$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HomeTransitionAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HomeTransitionAnimation;->getDragAnimation(ZLjava/util/HashMap;ZZZ)Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HomeTransitionAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$4;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HomeTransitionAnimation$4;->this$0:Lcom/android/launcher3/home/HomeTransitionAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/home/HomeTransitionAnimation;->access$302(Lcom/android/launcher3/home/HomeTransitionAnimation;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;

    return-void
.end method
