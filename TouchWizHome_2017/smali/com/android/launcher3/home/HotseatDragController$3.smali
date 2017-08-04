.class Lcom/android/launcher3/home/HotseatDragController$3;
.super Ljava/lang/Object;
.source "HotseatDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/HotseatDragController;->onDropExternalFromOther(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/HotseatDragController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/HotseatDragController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/HotseatDragController$3;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HotseatDragController$3;->this$0:Lcom/android/launcher3/home/HotseatDragController;

    invoke-static {v0}, Lcom/android/launcher3/home/HotseatDragController;->access$000(Lcom/android/launcher3/home/HotseatDragController;)Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed()V

    return-void
.end method
