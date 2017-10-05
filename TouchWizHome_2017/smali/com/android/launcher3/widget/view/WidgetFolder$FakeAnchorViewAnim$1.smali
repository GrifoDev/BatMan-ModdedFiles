.class Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateOpen(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

.field final synthetic val$anchorView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;->this$1:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$1;->val$anchorView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
