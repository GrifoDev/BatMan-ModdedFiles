.class final Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;
.super Ljava/lang/Object;
.source "UiThreadCircularReveal.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/util/animation/UiThreadCircularReveal;->createCircularReveal(Landroid/view/View;IIFFLandroid/view/ViewOutlineProvider;)Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

.field final synthetic val$revealView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/util/animation/RevealOutlineProvider;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;->val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

    iput-object p2, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;->val$outlineProvider:Lcom/android/launcher3/util/animation/RevealOutlineProvider;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/animation/RevealOutlineProvider;->setProgress(F)V

    iget-object v1, p0, Lcom/android/launcher3/util/animation/UiThreadCircularReveal$2;->val$revealView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidateOutline()V

    return-void
.end method
