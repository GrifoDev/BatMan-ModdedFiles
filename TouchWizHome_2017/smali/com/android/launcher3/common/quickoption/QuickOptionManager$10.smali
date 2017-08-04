.class Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;
.super Ljava/lang/Object;
.source "QuickOptionManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher3/common/quickoption/QuickOptionManager;->getOptionDeleteFolder(Lcom/android/launcher3/folder/FolderInfo;)Lcom/android/launcher3/common/quickoption/QuickOptionListItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

.field final synthetic val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;


# direct methods
.method constructor <init>(Lcom/android/launcher3/common/quickoption/QuickOptionManager;Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    iput-object p2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    new-instance v0, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;

    invoke-direct {v0}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v1}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$000(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$300(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Lcom/android/launcher3/common/stage/Stage;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->val$folderInfo:Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/common/dialog/FolderDeleteDialog;->show(Landroid/app/FragmentManager;Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/QuickOptionManager$10;->this$0:Lcom/android/launcher3/common/quickoption/QuickOptionManager;

    invoke-static {v2}, Lcom/android/launcher3/common/quickoption/QuickOptionManager;->access$200(Lcom/android/launcher3/common/quickoption/QuickOptionManager;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "HSQO"

    :goto_0
    const-string v3, "Delete folder"

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const-string v2, "APQO"

    goto :goto_0
.end method
