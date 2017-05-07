.class Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;
.super Ljava/lang/Object;
.source "FolderView.java"

# interfaces
.implements Lcom/android/launcher3/util/alarm/OnAlarmListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/view/FolderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnScrollHintListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 4

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1800(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->scrollLeft()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I
    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1902(Lcom/android/launcher3/folder/view/FolderView;I)I

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I
    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1802(Lcom/android/launcher3/folder/view/FolderView;I)I

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;

    iget-object v2, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v3, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;-><init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mScrollPauseAlarm:Lcom/android/launcher3/util/alarm/Alarm;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$2000(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/util/alarm/Alarm;

    move-result-object v0

    sget v1, Lcom/android/launcher3/common/drag/DragManager;->RESCROLL_DELAY:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mCurrentScrollDir:I
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$1800(Lcom/android/launcher3/folder/view/FolderView;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # getter for: Lcom/android/launcher3/folder/view/FolderView;->mContent:Lcom/android/launcher3/folder/view/FolderPagedView;
    invoke-static {v0}, Lcom/android/launcher3/folder/view/FolderView;->access$900(Lcom/android/launcher3/folder/view/FolderView;)Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderPagedView;->scrollRight()V

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollHintListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    # setter for: Lcom/android/launcher3/folder/view/FolderView;->mScrollHintDir:I
    invoke-static {v0, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$1902(Lcom/android/launcher3/folder/view/FolderView;I)I

    goto :goto_0
.end method
