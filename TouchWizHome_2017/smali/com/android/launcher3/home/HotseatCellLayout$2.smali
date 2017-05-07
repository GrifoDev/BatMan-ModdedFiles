.class Lcom/android/launcher3/home/HotseatCellLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "HotseatCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatCellLayout;->moveIcon(Landroid/view/View;IIZZ)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatCellLayout;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatCellLayout;Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout$2;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    iput-object p2, p0, Lcom/android/launcher3/home/HotseatCellLayout$2;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iput-object p3, p0, Lcom/android/launcher3/home/HotseatCellLayout$2;->val$child:Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$2;->val$lp:Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->isLockedToGrid:Z

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatCellLayout$2;->val$child:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    return-void
.end method
