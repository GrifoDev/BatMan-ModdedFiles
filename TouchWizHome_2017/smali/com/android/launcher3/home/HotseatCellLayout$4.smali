.class Lcom/android/launcher3/home/HotseatCellLayout$4;
.super Ljava/lang/Object;
.source "HotseatCellLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatCellLayout;->updateFolderGrid()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatCellLayout;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatCellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatCellLayout$4;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v6, p0, Lcom/android/launcher3/home/HotseatCellLayout$4;->this$0:Lcom/android/launcher3/home/HotseatCellLayout;

    invoke-virtual {v6}, Lcom/android/launcher3/home/HotseatCellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v1

    add-int/lit8 v4, v1, -0x1

    :goto_0
    if-ltz v4, :cond_1

    invoke-virtual {v0, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v6, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v6, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->getContent()Lcom/android/launcher3/folder/view/FolderPagedView;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/folder/view/FolderPagedView;->updateFolderGrid()V

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderView()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/view/FolderView;->rearrangeChildren()V

    :cond_0
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method
