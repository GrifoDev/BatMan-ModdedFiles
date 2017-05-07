.class Lcom/android/launcher3/common/drag/DragManager$4;
.super Ljava/lang/Object;
.source "DragManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/drag/DragManager;->removeQuickOptionView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/drag/DragManager;

.field final synthetic val$detailOfremove:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/drag/DragManager;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/drag/DragManager$4;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    iput-object p2, p0, Lcom/android/launcher3/common/drag/DragManager$4;->val$detailOfremove:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$4;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v0}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/common/drag/DragManager$4;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;
    invoke-static {v1}, Lcom/android/launcher3/common/drag/DragManager;->access$600(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/common/quickoption/QuickOptionView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeViewInLayout(Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/launcher3/common/drag/DragManager$4;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    const/4 v1, 0x0

    # setter for: Lcom/android/launcher3/common/drag/DragManager;->mQuickOptionView:Lcom/android/launcher3/common/quickoption/QuickOptionView;
    invoke-static {v0, v1}, Lcom/android/launcher3/common/drag/DragManager;->access$602(Lcom/android/launcher3/common/drag/DragManager;Lcom/android/launcher3/common/quickoption/QuickOptionView;)Lcom/android/launcher3/common/quickoption/QuickOptionView;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    const/16 v1, 0xf

    iget-object v2, p0, Lcom/android/launcher3/common/drag/DragManager$4;->this$0:Lcom/android/launcher3/common/drag/DragManager;

    # getter for: Lcom/android/launcher3/common/drag/DragManager;->mLauncher:Lcom/android/launcher3/Launcher;
    invoke-static {v2}, Lcom/android/launcher3/common/drag/DragManager;->access$000(Lcom/android/launcher3/common/drag/DragManager;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/drag/DragManager$4;->val$detailOfremove:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/util/logging/SALogging;->insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V

    return-void
.end method
