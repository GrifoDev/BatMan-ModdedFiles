.class Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;
.super Ljava/lang/Object;
.source "AppsPickerController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/appspicker/controller/AppsPickerController;->onBackPressed()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;


# direct methods
.method constructor <init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$800(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$900(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;->this$0:Lcom/android/launcher3/appspicker/controller/AppsPickerController;

    invoke-static {v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->access$1000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :cond_0
    return-void
.end method
