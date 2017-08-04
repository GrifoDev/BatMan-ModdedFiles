.class Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppIconBounceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->animateDown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    iget-object v1, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    invoke-static {v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$000(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$202(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;F)F

    iget-object v0, p0, Lcom/android/launcher3/util/animation/AppIconBounceAnimation$2;->this$0:Lcom/android/launcher3/util/animation/AppIconBounceAnimation;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/launcher3/util/animation/AppIconBounceAnimation;->access$302(Lcom/android/launcher3/util/animation/AppIconBounceAnimation;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;

    return-void
.end method
