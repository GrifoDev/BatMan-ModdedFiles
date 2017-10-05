.class public Lcom/android/launcher3/appspicker/controller/AppsPickerController;
.super Lcom/android/launcher3/common/stage/Stage;
.source "AppsPickerController.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;


# static fields
.field private static final EXIT_HIDE_APPS_DELAY:I = 0xc8

.field public static final KEY_BOUNCED_ITEM:Ljava/lang/String; = "KEY_BOUNCED_ITEM"

.field public static final KEY_BOUNCED_ITEM_USER:Ljava/lang/String; = "KEY_BOUNCED_ITEM_USER"

.field public static final KEY_ITEMS_TO_HIDE:Ljava/lang/String; = "KEY_ITEMS_TO_HIDE"

.field public static final KEY_ITEMS_TO_SHOW:Ljava/lang/String; = "KEY_ITEMS_TO_SHOW"

.field public static final KEY_PICKER_MODE:Ljava/lang/String; = "KEY_PICKER_MODE"

.field public static final KEY_SELECTED_ITEMS:Ljava/lang/String; = "KEY_SELECTED_ITEMS"

.field public static final MODE_FOLDER_ADD_APPS:I = 0x0

.field public static final MODE_HIDE_APPS:I = 0x1

.field public static final REQUEST_CODE_VOICE_RECOGNITION:I = 0x259

.field private static final TAG:Ljava/lang/String; = "AppsPickerController"


# instance fields
.field private mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mAppsToHideForAllApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mBgBlurAmount:F

.field private mBgDrakenAlpha:F

.field private mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

.field private mFromStageMode:I

.field private mNeedRefresh:Z

.field private mPickerMode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/stage/Stage;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method private addResultApps(Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v12, 0x5

    const/4 v6, 0x0

    move-object v0, p1

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v8}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ge v10, v1, :cond_0

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->makeCloneInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v11

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->generateNewItemId()J

    move-result-wide v2

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v1}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iput-wide v2, v11, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, v7}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "FAMA"

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-ne v1, v12, :cond_2

    const/4 v9, 0x1

    :goto_2
    if-eqz v9, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, p0, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(Lcom/android/launcher3/common/stage/Stage;Lcom/android/launcher3/common/stage/StageEntry;)V

    :goto_3
    return-void

    :cond_1
    const-string v1, "KEY_SELECTED_ITEMS"

    invoke-virtual {v8, v1, p1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    move v9, v6

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_4

    const-string v1, "KEY_FOLDER_ICON_VIEW"

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v8, v1, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v12, v8}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v1

    invoke-virtual {v1, v8}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    goto :goto_3
.end method

.method private attachViewToDragLayer()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->addView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method private detachViewFromDragLayer()V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/DragLayer;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/view/DragLayer;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private isTop()Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyAppsListChanged(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->notifyAppsListChanged(Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    :cond_0
    return-void
.end method

.method private setHiddenApps(Ljava/util/ArrayList;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_a

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v7}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->isHiddenByUser()Z

    move-result v8

    if-eqz v8, :cond_0

    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    iget v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->itemType:I

    if-nez v8, :cond_2

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_7

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    const/4 v4, 0x1

    :cond_4
    :goto_2
    if-eqz v4, :cond_2

    const/4 v2, 0x0

    iget v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->hidden:I

    if-nez v8, :cond_8

    instance-of v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_8

    new-instance v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {v2}, Lcom/android/launcher3/common/base/item/IconInfo;-><init>()V

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v8

    iput-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    iget-object v8, v5, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iput-object v8, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    :goto_3
    if-eqz v2, :cond_2

    const/4 v6, 0x1

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v9

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->toComponentKey()Lcom/android/launcher3/util/ComponentKey;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/launcher3/util/ComponentKey;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    iget-object v9, v3, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v10, v2, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {v9, v10}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const/4 v6, 0x0

    :cond_6
    if-eqz v6, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    const/4 v4, 0x1

    goto :goto_2

    :cond_8
    const-string v8, "AppsPickerController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setHiddenApps : already hidden status or invalid info "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    const-string v7, "AppsPickerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setHiddenApps : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " items will be filtered"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const v3, 0x7f110048

    invoke-virtual {v2, v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SearchView;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/launcher3/common/stage/Stage;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    :sswitch_0
    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    :sswitch_1
    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_1
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected getBackgroundBlurAmountForState(I)F
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/util/BlurUtils;->getMaxBlurAmount()F

    move-result v1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgBlurAmount:F

    goto :goto_1
.end method

.method protected getBackgroundDimAlphaForState(I)F
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v2}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v2

    cmpl-float v2, v2, v1

    if-lez v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgDrakenAlpha:F

    goto :goto_1
.end method

.method protected getBackgroundImageAlphaForState(I)F
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    return-object v0
.end method

.method protected getInternalState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPickerMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    return v0
.end method

.method protected getSupportSoftInputParam(Landroid/view/Window;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v0, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    and-int/lit8 v1, v0, -0x11

    return v1
.end method

.method public initStageView()V
    .locals 3

    const-string v0, "AppsPickerController"

    const-string v1, "initStageView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04000d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindController(Lcom/android/launcher3/appspicker/controller/AppsPickerController;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->newAllAppsSearchBarController()Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSearchBarController(Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$2;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-super {p0}, Lcom/android/launcher3/common/stage/Stage;->initStageView()V

    return-void
.end method

.method protected isRestorable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isTopStage()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isTop()Z

    move-result v0

    return v0
.end method

.method public isWhiteBg()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/DragLayer;->getBackgroundImageAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    const/4 v1, 0x0

    const/16 v2, 0x259

    if-ne p1, v2, :cond_0

    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    const-string v2, "android.speech.extra.RESULTS"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->onVoiceSearch(Ljava/lang/String;)V

    return-void
.end method

.method public onAllAppItemListLoadCompleted(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->isTop()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setApps(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected onBackPressed()Z
    .locals 6

    const/4 v4, 0x5

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    if-eq v2, v4, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v2, :cond_0

    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v2, "KEY_FOLDER_ICON_VIEW"

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "KEY_SELECTED_ITEMS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v2

    invoke-virtual {v2, v4, v0}, Lcom/android/launcher3/common/stage/StageManager;->switchStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :goto_0
    return v1

    :cond_0
    iget v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v2, v1, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;

    invoke-direct {v3, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$5;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onChangeColorForBg(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->changeColorAndBackground()V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)Z
    .locals 11

    const v8, 0x7f09012b

    const/4 v10, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->initBounceAnimation()V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->isAppsPickerStage()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    :goto_0
    return v4

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f11003a

    if-ne v6, v7, :cond_1

    const-string v4, "AppsPickerController"

    const-string v6, "onClick : add_button"

    invoke-static {v4, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-ne v4, v5, :cond_6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v4, v1, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getItemsForHideApps(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0901a7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090143

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/2addr v8, v9

    int-to-long v8, v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eq v4, v6, :cond_3

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertHideAppsLog(Ljava/util/ArrayList;)V

    :cond_3
    new-instance v0, Lcom/android/launcher3/common/stage/StageEntry;

    invoke-direct {v0}, Lcom/android/launcher3/common/stage/StageEntry;-><init>()V

    const-string v4, "KEY_ITEMS_TO_HIDE"

    invoke-virtual {v0, v4, v1}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v4, "KEY_ITEMS_TO_SHOW"

    invoke-virtual {v0, v4, v2}, Lcom/android/launcher3/common/stage/StageEntry;->putExtras(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    if-eq v4, v10, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    if-ne v4, v5, :cond_5

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    const/4 v6, 0x6

    invoke-virtual {v4, v6, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishStage(ILcom/android/launcher3/common/stage/StageEntry;)V

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->startHomeSettingActivity()V

    move v4, v5

    goto/16 :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/launcher3/common/stage/StageManager;->finishAllStage(Lcom/android/launcher3/common/stage/StageEntry;)V

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->addResultApps(Ljava/util/List;)V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    if-ne v4, v5, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    const v6, 0x7f0901ae

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    :cond_7
    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v4

    if-ne v4, v10, :cond_7

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v4

    const v6, 0x7f0901a2

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->getSelectedItems()Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    int-to-long v8, v8

    invoke-virtual {v4, v6, v7, v8, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V

    goto :goto_2
.end method

.method public onConfigurationChangedIfNeeded(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged(Z)V

    return-void
.end method

.method public onDestroyActivity()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/LauncherModel;->unregisterOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method protected onStageEnter(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 18

    const-string v3, "AppsPickerController"

    const-string v4, "onStageEnter()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFromStageMode:I

    const-string v3, "KEY_PICKER_MODE"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    const-string v3, "KEY_FOLDER_ICON_VIEW"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/view/FolderIconView;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    const-string v3, "KEY_BOUNCED_ITEM"

    const/4 v4, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v3, "KEY_BOUNCED_ITEM_USER"

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v4}, Lcom/android/launcher3/common/stage/StageEntry;->getExtras(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Lcom/android/launcher3/LauncherModel;->loadAllAppItemList(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged(Z)V

    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setPickerMode(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->bindAdapter()V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    if-eqz v9, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    if-eqz v11, :cond_1

    iget-object v4, v14, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v11, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/item/IconInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-virtual {v10, v4}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3, v11, v10}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setBouncedApp(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    iget-object v0, v14, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3, v13}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowFromSectionName(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setSelection(I)V

    const-string v3, "AppsPickerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "row = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->attachViewToDragLayer()V

    const/4 v12, 0x0

    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/android/launcher3/common/stage/StageEntry;->enableAnimation:Z

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f060004

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v12, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$3;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v12, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x64

    cmp-long v3, v4, v6

    if-nez v3, :cond_3

    const/4 v15, 0x1

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3, v15}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setParentMode(Z)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_4
    :goto_1
    return-object v12

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAlpha(F)V

    goto :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-nez v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v3}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v3

    iget-wide v4, v3, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v6, -0x66

    cmp-long v3, v4, v6

    if-eqz v3, :cond_7

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "FAAH"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_2
    if-eqz v15, :cond_8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0xd

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v3

    const-string v4, "FAAA"

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    goto :goto_2

    :cond_8
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v3

    const/16 v4, 0xe

    invoke-virtual {v3, v4}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_1
.end method

.method protected onStageEnterByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected onStageExit(Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "AppsPickerController"

    const-string v4, "onStageExit()"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->resetBouncedApp()V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->initBounceAnimation()V

    :cond_0
    const/4 v0, 0x0

    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->fromStage:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->toStage:I

    if-ne v3, v1, :cond_3

    :goto_0
    iget v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->stageCountOnFinishAllStage:I

    const/4 v4, 0x2

    if-gt v3, v4, :cond_1

    iget-boolean v3, p1, Lcom/android/launcher3/common/stage/StageEntry;->broughtToHome:Z

    if-nez v3, :cond_1

    if-eqz v1, :cond_4

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->reset()V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->detachViewFromDragLayer()V

    :goto_1
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;->setAppsPickerViewTop(Z)V

    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    const v4, 0x7f06000a

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mContainerView:Lcom/android/launcher3/appspicker/view/AppsPickerContainerView;

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v3, 0x1e

    invoke-static {v3}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v3, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;

    invoke-direct {v3, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$4;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v3}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_1
.end method

.method protected onStageExitByTray()Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public setApps(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setApps(Ljava/util/List;)V

    iget v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mPickerMode:I

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mFolderIconView:Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->setHiddenApps(Ljava/util/List;)V

    iput-boolean v2, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mNeedRefresh:Z

    invoke-direct {p0, v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->notifyAppsListChanged(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->setHiddenApps(Ljava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setup()V
    .locals 3

    const/high16 v2, 0x42c80000    # 100.0f

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAppsToHideForAllApps:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mAllApps:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgBlurAmount:F

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d002f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    iput v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerController;->mBgDrakenAlpha:F

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/LauncherModel;->registerOnAllAppItemListLoadCompletedListener(Lcom/android/launcher3/LauncherModel$OnAllAppItemListLoadCompletedListener;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getLauncherProxy()Lcom/android/launcher3/proxy/LauncherProxy;

    move-result-object v0

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerController$1;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherProxy;->setAppsPickerProxyCallbacks(Lcom/android/launcher3/proxy/AppsPickerProxyCallbacks;)V

    return-void
.end method

.method protected supportNavigationBarForState(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected supportStatusBarForState(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
