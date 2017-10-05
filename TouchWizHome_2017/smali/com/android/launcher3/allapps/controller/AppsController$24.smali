.class Lcom/android/launcher3/allapps/controller/AppsController$24;
.super Ljava/lang/Object;
.source "AppsController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/allapps/controller/AppsController;->restoreScreenGrid(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/allapps/controller/AppsController;

.field final synthetic val$finishStage:Z


# direct methods
.method constructor <init>(Lcom/android/launcher3/allapps/controller/AppsController;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->val$finishStage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x2

    new-array v1, v2, [I

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1700(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2, v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1800(Lcom/android/launcher3/allapps/controller/AppsController;[I)V

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->val$finishStage:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v3, v3}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iput-boolean v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v2}, Lcom/android/launcher3/allapps/controller/AppsController;->access$1900(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AppsController$24;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v2, v3, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_0
    return-void
.end method
