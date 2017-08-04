.class Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;
.super Ljava/lang/Object;
.source "FolderIconView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->animateToAcceptState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

.field final synthetic val$previewSize:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iput p2, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->val$previewSize:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v3, v0

    add-float/2addr v2, v3

    iget v3, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->val$previewSize:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mInnerRingSize:F

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v1, v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator$1;->this$0:Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;

    iget-object v1, v1, Lcom/android/launcher3/folder/view/FolderIconView$FolderRingAnimator;->mCellLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayout;->invalidate()V

    :cond_0
    return-void
.end method
