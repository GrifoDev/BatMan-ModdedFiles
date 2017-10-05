.class Lcom/android/launcher3/common/stage/StageManager$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "StageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/stage/StageManager;->startStageByTray(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/stage/StageManager;

.field final synthetic val$stageMode:I


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/stage/StageManager;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    iput p2, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$stageMode:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v0}, Lcom/android/launcher3/common/stage/StageManager;->access$000(Lcom/android/launcher3/common/stage/StageManager;)V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v0}, Lcom/android/launcher3/common/stage/StageManager;->access$100(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v0}, Lcom/android/launcher3/common/stage/StageManager;->access$100(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManager$1;->this$0:Lcom/android/launcher3/common/stage/StageManager;

    invoke-static {v0}, Lcom/android/launcher3/common/stage/StageManager;->access$100(Lcom/android/launcher3/common/stage/StageManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTrayManager()Lcom/android/launcher3/common/tray/TrayManager;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/stage/StageManager$1;->val$stageMode:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/tray/TrayManager;->trayMoveEnd(I)V

    :cond_0
    return-void
.end method
