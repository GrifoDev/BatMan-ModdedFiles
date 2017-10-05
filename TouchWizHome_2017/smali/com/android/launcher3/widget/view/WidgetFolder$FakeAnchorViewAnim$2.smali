.class Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->animateClose(Landroid/view/View;Landroid/animation/AnimatorSet;Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;Ljava/util/HashMap;)V
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

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->this$1:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->val$anchorView:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method

.method private animationComplete()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->val$anchorView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->this$1:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v1, v1, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->this$0:Lcom/android/launcher3/widget/view/WidgetFolder;

    invoke-static {v1}, Lcom/android/launcher3/widget/view/WidgetFolder;->access$200(Lcom/android/launcher3/widget/view/WidgetFolder;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->this$1:Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;

    iget-object v1, v1, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim;->mAnimView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetFolder$FakeAnchorViewAnim$2;->animationComplete()V

    return-void
.end method
