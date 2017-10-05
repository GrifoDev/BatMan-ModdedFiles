.class public interface abstract Lcom/android/launcher3/common/drag/DragState;
.super Ljava/lang/Object;
.source "DragState.java"


# static fields
.field public static final DRAG_MODE_ADD_TO_FOLDER:I = 0x2

.field public static final DRAG_MODE_CREATE_FOLDER:I = 0x1

.field public static final DRAG_MODE_FOLDER_OPENED:I = 0x4

.field public static final DRAG_MODE_NONE:I = 0x0

.field public static final DRAG_MODE_REORDER:I = 0x3


# virtual methods
.method public abstract addFolder(Lcom/android/launcher3/common/base/view/CellLayout;Lcom/android/launcher3/common/base/item/IconInfo;)Lcom/android/launcher3/folder/view/FolderIconView;
.end method

.method public abstract canOpenFolder()Z
.end method

.method public abstract commit(Lcom/android/launcher3/common/base/view/CellLayout;)V
.end method

.method public abstract setDragMode(I)V
.end method
