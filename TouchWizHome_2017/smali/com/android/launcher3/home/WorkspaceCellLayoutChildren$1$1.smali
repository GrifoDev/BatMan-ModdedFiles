.class Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;
.super Ljava/lang/Object;
.source "WorkspaceCellLayoutChildren.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;


# direct methods
.method constructor <init>(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;->this$1:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;->this$1:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;->this$1:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1$1;->this$1:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;

    iget-object v0, v0, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren$1;->this$0:Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;

    invoke-static {v0}, Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;->access$000(Lcom/android/launcher3/home/WorkspaceCellLayoutChildren;)Landroid/view/animation/AnimationSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/AnimationSet;->start()V

    :cond_0
    return-void
.end method
