.class Lcom/android/launcher3/widget/folder/WidgetFolderController$1;
.super Ljava/lang/Object;
.source "WidgetFolderController.java"

# interfaces
.implements Lcom/android/launcher3/widget/controller/WidgetState$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/folder/WidgetFolderController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/widget/folder/WidgetFolderController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyChangeState(Lcom/android/launcher3/widget/controller/WidgetState$State;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->access$000(Lcom/android/launcher3/widget/folder/WidgetFolderController;Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V

    return-void
.end method

.method public openFolder(Landroid/view/View;Z)V
    .locals 0

    return-void
.end method

.method public startDrag(Landroid/view/View;)V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-static {v2}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->access$100(Lcom/android/launcher3/widget/folder/WidgetFolderController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    new-instance v3, Lcom/android/launcher3/widget/controller/WidgetDragController;

    iget-object v4, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-static {v4}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->access$200(Lcom/android/launcher3/widget/folder/WidgetFolderController;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/launcher3/widget/controller/WidgetDragController;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->access$102(Lcom/android/launcher3/widget/folder/WidgetFolderController;Lcom/android/launcher3/widget/controller/WidgetDragController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v2

    iput v2, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-static {v2}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->access$100(Lcom/android/launcher3/widget/folder/WidgetFolderController;)Lcom/android/launcher3/widget/controller/WidgetDragController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/launcher3/widget/controller/WidgetDragController;->startDrag(Landroid/view/View;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "WidgetFolderController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "fail to widget drag : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/widget/folder/WidgetFolderController$1;->this$0:Lcom/android/launcher3/widget/folder/WidgetFolderController;

    invoke-virtual {v4}, Lcom/android/launcher3/widget/folder/WidgetFolderController;->getState()Lcom/android/launcher3/widget/controller/WidgetState$State;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method
