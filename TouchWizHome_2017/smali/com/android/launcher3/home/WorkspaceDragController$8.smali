.class Lcom/android/launcher3/home/WorkspaceDragController$8;
.super Ljava/lang/Object;
.source "WorkspaceDragController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceDragController;->onDropExtraObjects(Ljava/util/ArrayList;Ljava/lang/Runnable;ZZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/home/WorkspaceDragController;

.field final synthetic val$fromOther:Z

.field final synthetic val$restoreExtraDropItems:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iput-object p2, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    iput-boolean p3, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->val$fromOther:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->this$0:Lcom/android/launcher3/home/WorkspaceDragController;

    iget-object v1, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->val$restoreExtraDropItems:Ljava/util/ArrayList;

    iget-boolean v2, p0, Lcom/android/launcher3/home/WorkspaceDragController$8;->val$fromOther:Z

    invoke-static {v0, v1, v2}, Lcom/android/launcher3/home/WorkspaceDragController;->access$600(Lcom/android/launcher3/home/WorkspaceDragController;Ljava/util/ArrayList;Z)V

    return-void
.end method
