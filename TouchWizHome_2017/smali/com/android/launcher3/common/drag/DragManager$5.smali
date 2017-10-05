.class Lcom/android/launcher3/common/drag/DragManager$5;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragManager;->handleMoveEvent(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;

.field final synthetic val$targetView:Lcom/android/launcher3/common/drag/DragView;

.field final synthetic val$touchX:I

.field final synthetic val$touchY:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/drag/DragView;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$5;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$targetView:Lcom/android/launcher3/common/drag/DragView;

    iput p3, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$touchX:I

    iput p4, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$touchY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$targetView:Lcom/android/launcher3/common/drag/DragView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$targetView:Lcom/android/launcher3/common/drag/DragView;

    iget v1, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$touchX:I

    iget v2, p0, Lcom/android/launcher3/common/drag/DragManager$5;->val$touchY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/drag/DragView;->move(II)V

    :cond_0
    return-void
.end method
