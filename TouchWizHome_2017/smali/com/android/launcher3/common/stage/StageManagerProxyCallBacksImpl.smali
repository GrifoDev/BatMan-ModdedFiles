.class public Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;
.super Ljava/lang/Object;
.source "StageManagerProxyCallBacksImpl.java"

# interfaces
.implements Lcom/android/launcher3/proxy/StageManagerProxyCallbacks;


# instance fields
.field private final mActivity:Lcom/android/launcher3/Launcher;

.field private final mStageManager:Lcom/android/launcher3/common/stage/StageManager;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/stage/StageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mActivity:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    return-void
.end method


# virtual methods
.method public closeFolder()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public enterFolderAddAppsView(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public enterHideAppsView()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->exitSettingsView()V

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_PICKER_MODE"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public enterWidgetListView()V
    .locals 2

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/Launcher;->showWidgetsView(ZZ)V

    return-void
.end method

.method public exitSettingsView()V
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getSettingsActivity()Lcom/android/launcher3/SettingsActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/SettingsActivity;->finish()V

    :cond_0
    return-void
.end method

.method public finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public getSecondTopStageMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getSecondTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTopStageMode()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/stage/Stage;->getMode()I

    move-result v0

    return v0
.end method

.method public goHome()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public openAppsTray()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mActivity:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    return-void
.end method

.method public openFolderAddIconView(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 3

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v1, "KEY_PICKER_MODE"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "KEY_FOLDER_ICON_VIEW"

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/launcher3/common/stage/StageManager;->startStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method

.method public switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/stage/StageManagerProxyCallBacksImpl;->mStageManager:Lcom/android/launcher3/common/stage/StageManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    return-void
.end method
