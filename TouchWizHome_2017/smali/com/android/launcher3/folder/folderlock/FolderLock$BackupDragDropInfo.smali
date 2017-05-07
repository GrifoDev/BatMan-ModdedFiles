.class Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;
.super Ljava/lang/Object;
.source "FolderLock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/folder/folderlock/FolderLock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BackupDragDropInfo"
.end annotation


# instance fields
.field private mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

.field private mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

.field private mDragSource:Lcom/android/launcher3/common/drag/DragSource;

.field private mDragView:Lcom/android/launcher3/common/drag/DragView;

.field private mIsDragInFolder:Z

.field private mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

.field private mTargetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mIsDragInFolder:Z

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V
    .locals 4

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mIsDragInFolder:Z

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragView:Lcom/android/launcher3/common/drag/DragView;

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    instance-of v1, v1, Lcom/android/launcher3/folder/view/FolderView;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mIsDragInFolder:Z

    :cond_0
    instance-of v1, p2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iput-wide v2, v1, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :cond_1
    iput-object p2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetView:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    :cond_2
    return-void
.end method

.method constructor <init>(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragView:Lcom/android/launcher3/common/drag/DragView;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mIsDragInFolder:Z

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    return-void
.end method


# virtual methods
.method public getClickedFolder()Lcom/android/launcher3/folder/view/FolderIconView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mClickedFolder:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0
.end method

.method public getCopyInfo()Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mCopyInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public getDragInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragObject:Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    return-object v0
.end method

.method public getDragParetFolder()Lcom/android/launcher3/folder/view/FolderView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    check-cast v0, Lcom/android/launcher3/folder/view/FolderView;

    return-object v0
.end method

.method public getDragView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragView:Lcom/android/launcher3/common/drag/DragView;

    return-object v0
.end method

.method public getDragparent()Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mDragSource:Lcom/android/launcher3/common/drag/DragSource;

    return-object v0
.end method

.method public getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetInfo:Lcom/android/launcher3/common/base/item/ItemInfo;

    return-object v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mTargetView:Landroid/view/View;

    return-object v0
.end method

.method public isDragInFolder()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->mIsDragInFolder:Z

    return v0
.end method
