.class Lcom/android/launcher3/allapps/controller/AppsDragController$3;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;->onDropCompletedWithOutExtraItems(Landroid/view/View;Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

.field final synthetic val$cell:Landroid/view/View;

.field final synthetic val$parent:Lcom/android/launcher3/common/base/view/CellLayout;

.field final synthetic val$target:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$parent:Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$cell:Landroid/view/View;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$target:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$parent:Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$cell:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$cell:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$cell:Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$3;->val$target:Landroid/view/View;

    instance-of v2, v2, Lcom/android/launcher3/allapps/view/AppsPagedView;

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    return-void
.end method
