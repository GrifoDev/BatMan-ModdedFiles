.class public interface abstract Lcom/android/launcher3/common/tray/FakeView$DragEventCallback;
.super Ljava/lang/Object;
.source "FakeView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/tray/FakeView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DragEventCallback"
.end annotation


# virtual methods
.method public abstract getDropTarget(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;)Lcom/android/launcher3/common/drag/DropTarget;
.end method

.method public abstract onChangeStage(Lcom/android/launcher3/common/tray/TrayManager$TrayLevel;I)V
.end method

.method public abstract onDragEnter(I)V
.end method

.method public abstract onDragExit(I)V
.end method
