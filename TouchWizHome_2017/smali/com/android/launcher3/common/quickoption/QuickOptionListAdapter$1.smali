.class Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;
.super Ljava/lang/Object;
.source "QuickOptionListAdapter.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

.field final synthetic val$item:Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

.field final synthetic val$itemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;Lcom/android/launcher3/common/quickoption/QuickOptionListItem;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;->val$itemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    iput-object p3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;->val$item:Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;->val$itemRemoveAnimation:Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/ItemRemoveAnimation;->hasCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/QuickOptionListAdapter$1;->val$item:Lcom/android/launcher3/common/quickoption/QuickOptionListItem;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/QuickOptionListItem;->getCallback()Ljava/lang/Runnable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
