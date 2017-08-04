.class Lcom/android/launcher3/home/CancelDropTarget$1;
.super Ljava/lang/Object;
.source "CancelDropTarget.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/CancelDropTarget;->onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/CancelDropTarget;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/CancelDropTarget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/CancelDropTarget$1;->this$0:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget$1;->this$0:Lcom/android/launcher3/home/CancelDropTarget;

    invoke-static {v0}, Lcom/android/launcher3/home/CancelDropTarget;->access$000(Lcom/android/launcher3/home/CancelDropTarget;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeController;->exitDragStateDelayed(I)V

    return-void
.end method
