.class Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;
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
    name = "OnScrollFinishedListener"
.end annotation


# instance fields
.field private final mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field final synthetic this$0:Lcom/android/launcher3/folder/view/FolderView;


# direct methods
.method constructor <init>(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-void
.end method


# virtual methods
.method public onAlarm(Lcom/android/launcher3/util/alarm/Alarm;)V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;->this$0:Lcom/android/launcher3/folder/view/FolderView;

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderView$OnScrollFinishedListener;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/folder/view/FolderView;->access$2100(Lcom/android/launcher3/folder/view/FolderView;Lcom/android/launcher3/common/drag/DropTarget$DragObject;I)V

    return-void
.end method
