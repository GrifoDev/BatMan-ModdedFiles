.class Lcom/android/launcher3/allapps/controller/AppsController$23;
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

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->val$finishStage:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$600(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentAppsGridSize(Landroid/content/Context;[I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1, v0}, Lcom/android/launcher3/allapps/controller/AppsController;->access$700(Lcom/android/launcher3/allapps/controller/AppsController;[I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->updateDirtyItems()V

    iget-boolean v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->val$finishStage:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v1, v2, v2}, Lcom/android/launcher3/allapps/controller/AppsController;->changeState(IZ)Z

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-static {v1}, Lcom/android/launcher3/allapps/controller/AppsController;->access$800(Lcom/android/launcher3/allapps/controller/AppsController;)Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/AppsController$23;->this$0:Lcom/android/launcher3/allapps/controller/AppsController;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_0
    return-void
.end method
