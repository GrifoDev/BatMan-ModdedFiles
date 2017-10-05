.class Lcom/android/launcher3/allapps/controller/AppsReorderController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "AppsReorderController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsReorderController;->removeEmptyCellsAndViews(Ljava/util/ArrayList;Lcom/android/launcher3/allapps/DragAppIcon;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

.field final synthetic val$currentEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

.field final synthetic val$endPos:I

.field final synthetic val$page:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$pageE:I

.field final synthetic val$startPos:I

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$v:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$currentEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iput p5, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$startPos:I

    iput p6, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$endPos:I

    iput p7, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$pageE:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$page:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$v:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->this$0:Lcom/android/launcher3/allapps/controller/AppsReorderController;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$currentEmpty:Lcom/android/launcher3/allapps/DragAppIcon;

    iget v2, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$startPos:I

    iget v3, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$endPos:I

    iget v4, p0, Lcom/android/launcher3/allapps/controller/AppsReorderController$2;->val$pageE:I

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsReorderController;->access$000(Lcom/android/launcher3/allapps/controller/AppsReorderController;Lcom/android/launcher3/allapps/DragAppIcon;III)V

    return-void
.end method
