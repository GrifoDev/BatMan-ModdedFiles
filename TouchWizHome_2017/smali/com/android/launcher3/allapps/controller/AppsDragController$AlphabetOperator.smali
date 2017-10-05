.class Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;
.super Lcom/android/launcher3/allapps/controller/DragOperator;
.source "AppsDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AlphabetOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/DragOperator;-><init>()V

    return-void
.end method

.method private normalizeBeforeDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;Z)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v6, v6, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v6, :cond_0

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v6, Lcom/android/launcher3/folder/view/FolderView;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    if-eqz v6, :cond_0

    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gt v2, v7, :cond_0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-ne v2, v7, :cond_0

    iget-object v6, v3, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v6, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_1

    if-nez p3, :cond_1

    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v6, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v6, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-wide/16 v8, -0x1

    const/4 v7, -0x1

    invoke-virtual {p0, v4, v8, v9, v7}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v6

    invoke-interface {v6, v0, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->normalizeWithExtraItems(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-void
.end method

.method private normalizeBeforeDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 1

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, p2}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->normalizeBeforeDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v4, p2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V
    .locals 14

    if-eqz p8, :cond_3

    const/4 v13, 0x0

    :goto_0
    if-eqz p8, :cond_0

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move/from16 v0, p4

    int-to-long v4, v0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p2

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDesiredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingStart()I

    move-result v3

    add-int v11, v2, v3

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v11, v2

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    :cond_1
    if-eqz p7, :cond_4

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    move-object/from16 v13, p5

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2, v3, v13}, Lcom/android/launcher3/common/view/DragLayer;->removeAnimation(Lcom/android/launcher3/common/drag/DragView;Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->setRestorePosition(Z)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->setRestorePosition(Z)V

    goto :goto_0
.end method

.method dropCompletedWithOutExtra(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->getRestorePosition()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator$1;-><init>(Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 2

    if-nez p2, :cond_0

    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderInfo;->getItemCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->repositionByNormalizer(Z)V

    :cond_0
    return-void
.end method

.method dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 10

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-direct {p0, p1, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->normalizeBeforeDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p3, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_2

    move v9, v7

    :goto_0
    if-eqz v9, :cond_1

    const/16 v4, 0x12c

    :cond_1
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, p4

    move v8, v7

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    return-void

    :cond_2
    move v9, v4

    goto :goto_0
.end method

.method dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;Z)V"
        }
    .end annotation

    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v2, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->normalizeBeforeDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/util/ArrayList;Z)V

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v17

    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v6, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v10, v6, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v0, v10

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v9

    move/from16 v0, v16

    invoke-virtual {v9, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$502(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lcom/android/launcher3/allapps/view/AppsPagedView;->rearrangeAllViews(Z)V

    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v9, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v4

    iget-object v15, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v9}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v9

    invoke-interface {v4, v6, v9, v15}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4, v7, v6}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v7}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v4, 0x0

    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v14, v7}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_2
    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v13, 0x1

    :goto_2
    if-eqz v13, :cond_6

    const/16 v8, 0x12c

    :goto_3
    iget-object v9, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    move-object/from16 v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    goto/16 :goto_0

    :cond_3
    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v15

    goto :goto_1

    :cond_4
    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v4, :cond_1

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    instance-of v4, v4, Lcom/android/launcher3/common/view/IconView;

    if-eqz v4, :cond_1

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-nez v4, :cond_1

    iget-object v4, v5, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v15

    goto/16 :goto_1

    :cond_5
    const/4 v13, 0x0

    goto :goto_2

    :cond_6
    const/4 v8, 0x0

    goto :goto_3

    :cond_7
    return-void
.end method

.method makeEmptyCellAndReorderIfNecessary(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    rem-int v2, p2, v0

    div-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/allapps/AppsReorderListener;->makeEmptyCellAndReorder(II)V

    :cond_0
    return-void
.end method

.method refreshObjectsToPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            "II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/drag/DropTarget$DragObject;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V

    return-void
.end method

.method updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V
    .locals 9

    const/4 v6, -0x1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$AlphabetOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    const-wide/16 v2, -0x66

    const-wide/16 v4, -0x1

    move-object v1, p1

    move v7, v6

    move v8, v6

    invoke-interface/range {v0 .. v8}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    return-void
.end method
