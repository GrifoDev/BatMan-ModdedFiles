.class Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;
.super Lcom/android/launcher3/allapps/controller/DragOperator;
.source "AppsDragController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/controller/AppsDragController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CustomOperator"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/DragOperator;-><init>()V

    return-void
.end method


# virtual methods
.method addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v1, p2, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v4, p2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v1

    const/4 v4, 0x0

    aget v1, v1, v4

    if-gez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v1

    int-to-long v4, v1

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    long-to-int v4, v2

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v2

    goto :goto_0
.end method

.method animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V
    .locals 13

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v10

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v2, v2

    sub-int/2addr v2, v10

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getDesiredWidth()I

    move-result v3

    mul-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getPaddingStart()I

    move-result v3

    add-int v11, v2, v3

    new-instance v12, Landroid/graphics/Rect;

    invoke-direct {v12}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v3

    invoke-virtual {v2, v3, v12}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v2, v12, Landroid/graphics/Rect;->left:I

    sub-int v8, v11, v2

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v2, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getPageTop()I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v3

    iget v3, v3, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->appsExtraPaddingTop:I

    sub-int/2addr v2, v3

    iget v3, v12, Landroid/graphics/Rect;->top:I

    sub-int v9, v2, v3

    :cond_0
    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v5, 0x12c

    const/4 v7, 0x0

    move-object/from16 v4, p3

    move-object/from16 v6, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;II)V

    :goto_0
    return-void

    :cond_1
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    move/from16 v0, p4

    int-to-long v4, v0

    move-object/from16 v0, p5

    invoke-virtual {v2, v0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method dragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 8

    const/4 v5, 0x1

    const/4 v7, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    if-eq v0, v5, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$800(Lcom/android/launcher3/allapps/controller/AppsDragController;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/allapps/controller/AppsDragController;->setDragMode(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    iget-wide v2, v2, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->setRestorePosition(Z)V

    const-string v0, "AppsDragController"

    const-string v1, "onDragOver mRestorePositionOnDrop = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/android/launcher3/common/base/view/PagedView;->PAGE_SNAP_ANIMATION_DURATION:I

    div-int/lit8 v0, v0, 0x2

    add-int/lit16 v0, v0, 0xfa

    int-to-long v0, v0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget v1, v1, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iput v1, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/drag/DragView;->getDragOutline()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v3}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v3

    aget v3, v3, v7

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    aget v4, v4, v5

    move v6, v5

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher3/common/base/view/CellLayout;->visualizeDropLocation(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/graphics/drawable/Drawable;IIIIZ)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_6

    const/16 v0, 0xfa

    :goto_1
    int-to-long v0, v0

    goto :goto_0

    :cond_6
    const/16 v0, 0x1f4

    goto :goto_1
.end method

.method dropAddToExistingFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    return-void
.end method

.method dropCompletedWithOutExtra(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    :cond_0
    return-void
.end method

.method dropCreateFolder(Lcom/android/launcher3/common/base/item/ItemInfo;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1100(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    return-void
.end method

.method dropExternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    if-gez v4, :cond_6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v4

    iget-wide v0, v4, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    move-wide/from16 v18, v0

    :goto_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v18

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->snapToPage(I)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getNextPage()I

    move-result v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v4

    const/4 v5, 0x0

    aget v4, v4, v5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1200(Lcom/android/launcher3/allapps/controller/AppsDragController;)[I

    move-result-object v5

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-virtual {v15, v4, v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v17

    if-nez v17, :cond_3

    invoke-virtual {v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->findFirstEmptyCell(I)I

    move-result v14

    if-ge v14, v13, :cond_1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    if-le v4, v13, :cond_3

    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iput v13, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1600(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/controller/DragOperator;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/controller/DragOperator;->removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "remove emptycell if necessary : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iput v13, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    iget-wide v6, v5, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iput-wide v6, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    const-string v4, "AppsDragController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "assign empty : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget-wide v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v6}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getItemCountPageAt(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v5

    if-lt v4, v5, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-wide/from16 v0, v18

    long-to-int v5, v0

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    if-nez v4, :cond_5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget-wide v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    long-to-int v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v5

    iget v5, v5, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v4

    iget v4, v4, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-object/from16 v0, p3

    move-object/from16 v1, p2

    invoke-virtual {v4, v0, v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    const/16 v8, 0x12c

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x1

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v9, p4

    invoke-virtual/range {v4 .. v12}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    return-void

    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v5}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v18

    goto/16 :goto_0
.end method

.method dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V
    .locals 12
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

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v2, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getMaxItemsPerScreen()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt p3, v0, :cond_4

    const/4 p3, 0x0

    add-int/lit8 p2, p2, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getExtraEmptyScreenIndex()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$900(Lcom/android/launcher3/allapps/controller/AppsDragController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$502(Lcom/android/launcher3/allapps/controller/AppsDragController;Lcom/android/launcher3/common/base/view/CellLayout;)Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->makeEmptyCellAndReorderIfNecessary(II)V

    const/4 v10, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    iget-object v4, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;

    move-result-object v0

    iget-object v10, v0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v4}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$500(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v4

    invoke-interface {v0, v2, v4, v10}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->createItemView(Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v3

    int-to-long v4, p2

    invoke-virtual {p0, v2, v4, v5, p3}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView;->addItem(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Lcom/android/launcher3/common/base/view/CellLayout;

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v9, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->measureChild(Landroid/view/View;)V

    :cond_3
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->isAppsStage()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v7, 0x1

    :goto_3
    const/16 v4, 0x12c

    iget-object v5, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v6

    const/4 v8, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;ZZ)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto/16 :goto_0

    :cond_4
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_5
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v10

    goto :goto_2

    :cond_6
    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/common/view/IconView;

    if-eqz v0, :cond_2

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, v1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->getSourceView()Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/view/IconView;

    goto/16 :goto_2

    :cond_7
    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    if-eqz p5, :cond_9

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    :cond_9
    return-void
.end method

.method dropInternal(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Lcom/android/launcher3/common/base/item/ItemInfo;Landroid/view/View;)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$1400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->cancelAlarm()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(Lcom/android/launcher3/allapps/DragAppIcon;Lcom/android/launcher3/allapps/DragAppIcon;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iget-wide v0, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-wide v2, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    invoke-virtual {v0, v1, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertMoveToPageLog(Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    const v1, 0x7f0901ac

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f090186

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->addItemToTarget(Landroid/view/View;Lcom/android/launcher3/allapps/DragAppIcon;)V

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragView;->hasDrawn()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$700(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/16 v3, 0x12c

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->postAnimationRunnable:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v5

    move-object v2, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/view/DragLayer;->animateViewIntoPosition(Lcom/android/launcher3/common/drag/DragView;Landroid/view/View;ILjava/lang/Runnable;Landroid/view/View;)V

    :goto_0
    invoke-virtual {v6, p3}, Lcom/android/launcher3/common/base/view/CellLayout;->onDropChild(Landroid/view/View;)V

    :cond_2
    return-void

    :cond_3
    iput-boolean v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->deferDragViewCleanupPostAnimation:Z

    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0, p3, v4}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateCountBadge(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method makeEmptyCellAndReorderIfNecessary(II)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellCountX()I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$400(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/launcher3/allapps/view/AppsPagedView;->getCellLayout(I)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    rem-int v2, p2, v0

    div-int v3, p2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/android/launcher3/allapps/AppsReorderListener;->makeEmptyCellAndReorder(II)V

    :cond_0
    return-void
.end method

.method onAdjustDraggedObjectPosition(Lcom/android/launcher3/common/drag/DropTarget$DragObject;III)V
    .locals 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x1

    move v3, p2

    move v4, p3

    move v6, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/launcher3/allapps/AppsReorderListener;->realTimeReorder(IFIIII)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iput p3, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$200(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    iput p3, v0, Lcom/android/launcher3/allapps/DragAppIcon;->rank:I

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$100(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/DragAppIcon;

    move-result-object v0

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/allapps/DragAppIcon;->screenId:J

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput p3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-object v0, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    int-to-long v2, p4

    iput-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

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

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->dropExtraObjects(Lcom/android/launcher3/common/drag/DropTarget$DragObject;IILjava/util/ArrayList;Z)V

    return-void
.end method

.method removeEmptyCellIfNecessary(Lcom/android/launcher3/allapps/DragAppIcon;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$300(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/AppsReorderListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/launcher3/allapps/AppsReorderListener;->removeEmptyCell(Lcom/android/launcher3/allapps/DragAppIcon;)V

    return-void
.end method

.method updateDirtyItemsToDb()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsDragController$CustomOperator;->this$0:Lcom/android/launcher3/allapps/controller/AppsDragController;

    invoke-static {v0}, Lcom/android/launcher3/allapps/controller/AppsDragController;->access$000(Lcom/android/launcher3/allapps/controller/AppsDragController;)Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/launcher3/allapps/view/AppsPagedView$Listener;->updateDirtyItems()V

    return-void
.end method

.method updateItemPosition(Lcom/android/launcher3/common/base/item/ItemInfo;JI)V
    .locals 2

    const-wide/16 v0, -0x66

    iput-wide v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide p2, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput p4, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    return-void
.end method
