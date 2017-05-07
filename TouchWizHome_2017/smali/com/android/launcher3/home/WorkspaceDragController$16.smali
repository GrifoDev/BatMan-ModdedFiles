.class Lcom/android/launcher3/home/WorkspaceDragController$16;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->addItemOnNewPage(Ljava/util/ArrayList;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$enterResizeMode:Z

.field final synthetic val$snapScreen:I

.field final synthetic val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;IZLcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$snapScreen:I

    iput-boolean p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$enterResizeMode:Z

    iput-object p4, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mWorkspace:Lcom/android/launcher3/home/Workspace;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$300(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$snapScreen:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->snapToPage(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$enterResizeMode:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->val$widgetHostView:Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mDropToLayout:Lcom/android/launcher3/common/base/view/CellLayout;
    invoke-static {v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$200(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/home/HomeController;->enterResizeStateDelay(Landroid/appwidget/AppWidgetHostView;Lcom/android/launcher3/common/base/view/CellLayout;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$16;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    # getter for: Lcom/android/launcher3/home/WorkspaceDragController;->mHomeController:Lcom/android/launcher3/home/HomeController;
    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceDragController;->access$000(Lcom/android/launcher3/home/WorkspaceDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    goto :goto_0
.end method
