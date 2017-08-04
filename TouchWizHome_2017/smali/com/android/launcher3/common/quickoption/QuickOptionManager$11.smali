.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionAddApps(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$100(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$11;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Add Apps"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
