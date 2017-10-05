.class public Lcom/android/launcher3/folder/folderlock/FolderLock;
.super Ljava/lang/Object;
.source "FolderLock.java"

# interfaces
.implements Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;,
        Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;,
        Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;,
        Lcom/android/launcher3/folder/folderlock/FolderLock$SingletonHolder;,
        Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;
    }
.end annotation


# static fields
.field public static final APPLOCK_ENABLE_CHANGED:Ljava/lang/String; = "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

.field private static final APPLOCK_PACKAGENAME:Ljava/lang/String; = "com.samsung.android.applock"

.field private static final EMPTY_STRING:Ljava/lang/String; = ""

.field private static final KEY_LASTEST_LOCKED_PACKAGES:Ljava/lang/String; = "last_locked_package"

.field private static final KNOX_SHORTCUT_PACKAGE:Ljava/lang/String; = "com.samsung.knox.rcp.components"

.field public static final LAUNCHER_REQUEST:Ljava/lang/String; = "LAUNCHER_REQUEST"

.field private static final LOCKED_APP_FOLDERS:Ljava/lang/String; = "smartmanager_locked_apps_folders"

.field private static final LOCKED_PACKAGE:Ljava/lang/String; = "smartmanager_locked_apps_packages"

.field public static final LOCKED_PACKAGE_ICON:Ljava/lang/String; = "LOCKED_PACKAGE_ICON"

.field public static final LOCKED_PACKAGE_LABEL:Ljava/lang/String; = "LOCKED_PACKAGE_LABEL"

.field private static final LOCKED_PACKAGE_N:Ljava/lang/String; = "applock_locked_apps_packages"

.field public static final LOCKED_PACKAGE_NAME:Ljava/lang/String; = "LOCKED_PACKAGE_NAME"

.field public static final LOCK_CONTAINER_HOME:Ljava/lang/String; = "home_locked_items"

.field public static final LOCK_CONTAINER_HOME_ONLY:Ljava/lang/String; = "home_only_locked_items"

.field public static final LOCK_CONTAINER_MENU:Ljava/lang/String; = "menu_locked_items"

.field private static final NOTIFY_APPLOCK_UPDATE_ACTION:Ljava/lang/String; = "com.samsung.applock.intent.action.NOTIFYUPDATE"

.field public static final PERMISSION_APPLOCK_STATE_CHANGED:Ljava/lang/String; = "com.samsung.applock.permission.STATUSCHANGED"

.field public static final REQUEST_CODE_FOLDER_LOCK:I = 0x7a

.field public static final REQUEST_CODE_FOLDER_UNLOCK:I = 0x7b

.field public static final REQUEST_CODE_OPEN_LOCKEDFOLDER:I = 0x7c

.field public static final REQUEST_LOCK:Ljava/lang/String; = "request_lock"

.field private static final REQUEST_LOCK_OR_UNLOCK:Ljava/lang/String; = "lock_or_unlock"

.field public static final REQUEST_UNLOCK:Ljava/lang/String; = "request_unlock"

.field public static final REQUEST_VERIFY_FROM:Ljava/lang/String; = "REQUEST_VERIFY_FROM"

.field private static final SEPARATOR_CLS_FOLDERID:Ljava/lang/String; = "-"

.field private static final SEPARATOR_FOLDERID:Ljava/lang/String; = ";"

.field private static final SEPARATOR_PKG_CLS:Ljava/lang/String; = ","

.field private static final SEPARATOR_STRING:Ljava/lang/String; = ","

.field public static final TAG:Ljava/lang/String; = "Launcher.FolderLock"

.field private static final UNLOCK_APP_ACTION:Ljava/lang/String; = "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

.field public static final UNLOCK_CONTAINER_ADDITION:Ljava/lang/String; = "drag"

.field public static final UNLOCK_CONTAINER_HOME:Ljava/lang/String; = "home_tempunlocked_items"

.field public static final UNLOCK_CONTAINER_HOME_ONLY:Ljava/lang/String; = "homeonly_tempunlocked_items"

.field public static final UNLOCK_CONTAINER_MENU:Ljava/lang/String; = "menu_tempunlocked_items"


# instance fields
.field private isFolderLockEnable:Z

.field private mAppContext:Landroid/content/Context;

.field private mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

.field private mFolderLockActionCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRecoverMode:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mLockedFolders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

.field private mReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

.field private mReorderLayout:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mStateReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

.field private mWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    new-instance v1, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    invoke-direct {v1}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iput-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    iput-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mIsRecoverMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isAppLockEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderLock()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

    invoke-direct {v0, p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mStateReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/folder/folderlock/FolderLock$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;-><init>()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/folder/folderlock/FolderLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->checkselfToMoveUnlockItemFromLockedFolder()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/folder/folderlock/FolderLock;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/launcher3/folder/folderlock/FolderLock;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/launcher3/folder/folderlock/FolderLock;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/folder/folderlock/FolderLock;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->clearTempUnlockedFolder()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/launcher3/folder/folderlock/FolderLock;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/folder/folderlock/FolderLock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->putOutUnlockedItemFromLockedFolder(Ljava/lang/String;)V

    return-void
.end method

.method private addLockedRecords(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->add(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private addTempUnlockedFolder(Lcom/android/launcher3/folder/FolderInfo;Z)V
    .locals 6

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getUnlockContainer(Lcom/android/launcher3/folder/FolderInfo;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-virtual {v1, v2, v0, v4, v5}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->add(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private backItemByFolderLock(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/folder/view/FolderView;)V
    .locals 26

    const/4 v5, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setRecoverMode(Z)V

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v0, p4

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/FolderInfo;->remove(Lcom/android/launcher3/common/base/item/IconInfo;)V

    move-object/from16 v0, p2

    iget-wide v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    move-wide/from16 v24, v0

    invoke-virtual/range {p2 .. p3}, Lcom/android/launcher3/common/base/item/ItemInfo;->copyFrom(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    move-wide/from16 v0, v24

    move-object/from16 v2, p2

    iput-wide v0, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    const-wide/16 v6, -0x1

    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    const/4 v11, -0x1

    const/4 v12, -0x1

    if-nez p5, :cond_3

    move-object/from16 v0, p3

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/IconInfo;->container:J

    move-object/from16 v0, p3

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/IconInfo;->screenId:J

    move-object/from16 v0, p3

    iget v10, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellX:I

    move-object/from16 v0, p3

    iget v11, v0, Lcom/android/launcher3/common/base/item/IconInfo;->cellY:I

    move-object/from16 v0, p3

    iget v12, v0, Lcom/android/launcher3/common/base/item/IconInfo;->rank:I

    :goto_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v5

    instance-of v5, v5, Lcom/android/launcher3/common/base/controller/ControllerBase;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getStageManager()Lcom/android/launcher3/common/stage/StageManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/launcher3/common/stage/StageManager;->getTopStage()Lcom/android/launcher3/common/stage/Stage;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/controller/ControllerBase;

    move-object/from16 v5, p2

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-interface/range {v4 .. v12}, Lcom/android/launcher3/common/base/controller/ControllerBase;->recoverCancelItemForFolderLock(Lcom/android/launcher3/common/base/item/IconInfo;JJIII)Z

    if-eqz p5, :cond_0

    move-object/from16 v0, p2

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    move-object/from16 v0, p2

    iget-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    :cond_0
    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v16, -0x66

    cmp-long v5, v14, v16

    if-nez v5, :cond_1

    move-object/from16 v0, p2

    iput v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    :cond_1
    long-to-int v5, v8

    int-to-long v0, v5

    move-wide/from16 v18, v0

    move-object v14, v4

    move-object/from16 v15, p2

    move-wide/from16 v16, v6

    move/from16 v20, v10

    move/from16 v21, v11

    move/from16 v22, v12

    invoke-interface/range {v14 .. v22}, Lcom/android/launcher3/common/base/controller/ControllerBase;->addOrMoveItemInDb(Lcom/android/launcher3/common/base/item/ItemInfo;JJIII)V

    :cond_2
    const/4 v5, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setRecoverMode(Z)V

    return-void

    :cond_3
    invoke-virtual/range {p5 .. p5}, Lcom/android/launcher3/folder/view/FolderView;->getInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v13

    iget-wide v6, v13, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v8, v13, Lcom/android/launcher3/folder/FolderInfo;->screenId:J

    iget v10, v13, Lcom/android/launcher3/folder/FolderInfo;->cellX:I

    iget v11, v13, Lcom/android/launcher3/folder/FolderInfo;->cellY:I

    iget-object v5, v13, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v14, 0x2

    if-ge v5, v14, :cond_4

    iget v12, v13, Lcom/android/launcher3/folder/FolderInfo;->rank:I

    goto :goto_0

    :cond_4
    move-object/from16 v0, p2

    iget v12, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    goto :goto_0
.end method

.method private declared-synchronized checkselfToMoveUnlockItemFromLockedFolder()V
    .locals 14

    monitor-enter p0

    :try_start_0
    iget-object v8, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v8, :cond_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "Launcher.FolderLock"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkselfToMoveUnlockItemFromLockedFolder and the mLockedFolders is   :  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/launcher3/folder/FolderInfo;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    const/4 v5, 0x0

    :goto_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v4}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v7, v7, -0x1

    const/4 v9, 0x2

    if-ge v7, v9, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v9, v10, v12

    if-nez v9, :cond_4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x64

    cmp-long v9, v10, v12

    if-eqz v9, :cond_5

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x65

    cmp-long v9, v10, v12

    if-nez v9, :cond_3

    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    :cond_6
    :try_start_2
    invoke-direct {p0, v1, v3, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->moveoutHomeOrAppsItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeLockedRecordsSinceOnlyOneItemLeft(Ljava/util/List;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

.method private clearTempUnlockedFolder()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    const-string v2, "homeonly_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    const-string v2, "menu_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    const-string v2, "home_tempunlocked_items"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->removeAll(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;
    .locals 1

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    check-cast v0, Landroid/app/ActivityManager;

    return-object v0
.end method

.method private getAppLockedCheckAction()Ljava/lang/String;
    .locals 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v5, "android.app.ActivityManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_0

    :try_start_1
    const-string v5, "getAppLockedCheckAction"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    iget-object v5, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getActivityManager(Landroid/content/Context;)Landroid/app/ActivityManager;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v1, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_0
    :goto_1
    return-object v1

    :catch_0
    move-exception v3

    const-string v5, "Launcher.FolderLock"

    const-string v6, "Can not get Applock Action 1"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v5, "Launcher.FolderLock"

    const-string v6, "Can not get Applock Action 2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method private getFolderIconBitmap(Lcom/android/launcher3/folder/FolderInfo;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;

    invoke-interface {v3, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;->getFolderIconView(Lcom/android/launcher3/folder/FolderInfo;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    :cond_0
    if-eqz v2, :cond_2

    instance-of v3, v2, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v3, :cond_2

    move-object v0, v2

    check-cast v0, Lcom/android/launcher3/folder/view/FolderIconView;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderIconBitmapWithPlate()Landroid/graphics/Bitmap;

    move-result-object v3

    :goto_1
    return-object v3

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private static getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "home_only_locked_items"

    :goto_0
    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const-string v0, "menu_locked_items"

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "home_locked_items"

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getInstance()Lcom/android/launcher3/folder/folderlock/FolderLock;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/folder/folderlock/FolderLock$SingletonHolder;->access$100()Lcom/android/launcher3/folder/folderlock/FolderLock;

    move-result-object v0

    return-object v0
.end method

.method private getLockedAppFolderMapping()Ljava/lang/String;
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smartmanager_locked_apps_folders"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method private getLockedPackagesFromDB()Ljava/lang/String;
    .locals 4

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "applock_locked_apps_packages"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "Launcher.FolderLock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLockedPackagesFromDB result is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v0

    :cond_2
    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "smartmanager_locked_apps_packages"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static getUnlockContainer(Lcom/android/launcher3/folder/FolderInfo;Z)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, ""

    if-eqz p1, :cond_0

    const-string v1, "drag"

    :cond_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "homeonly_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    iget-wide v2, p0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v4, -0x66

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "home_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "menu_tempunlocked_items"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private getWhiteListFromApplock()[Ljava/lang/String;
    .locals 7

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.applock"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    const-string v4, "applock_white_list_pkg"

    const-string v5, "array"

    const-string v6, "com.samsung.android.applock"

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    if-lez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string v4, "Launcher.FolderLock"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "whiteListArr from Applock length is :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0006

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    const/4 v4, 0x0

    return-object v4

    :catch_0
    move-exception v0

    const-string v4, "Launcher.FolderLock"

    const-string v5, "Can not get whitelist from Applock"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initWhiteList()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getWhiteListFromApplock()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method private isAppLockEnable()Z
    .locals 4

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "app_lock_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isInWhiteList(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mWhiteList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isLockedFolderId(Ljava/lang/String;J)Z
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_1

    :cond_0
    const-string v4, "Launcher.FolderLock"

    const-string v5, "A null item or An item without intent we should hide the quick option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v2

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    :cond_2
    const-string v4, "Launcher.FolderLock"

    const-string v5, "An item without componentName or packageName we should hide the quick option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move v2, v3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.samsung.knox.rcp.components"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "Launcher.FolderLock"

    const-string v5, "Knox shortcut we should hide the quick option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isInWhiteList(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "Launcher.FolderLock"

    const-string v5, "An item in whitelist we should hide the quick option;"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    if-eqz p1, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "Launcher.FolderLock"

    const-string v5, "AFW user app. we should hide the quick option"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_6
    move v2, v3

    goto :goto_0
.end method

.method private isTempUnlockedFolder(Lcom/android/launcher3/folder/FolderInfo;Z)Z
    .locals 6

    invoke-static {p1, p2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getUnlockContainer(Lcom/android/launcher3/folder/FolderInfo;Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-wide v4, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private lockApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->sendAppLockChangedBroadcast(Ljava/lang/String;Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private lockAppsInFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    iget-object v7, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v7

    if-nez v7, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_2
    move-object v4, v6

    goto :goto_1

    :cond_3
    invoke-direct {p0, v4}, Lcom/android/launcher3/folder/folderlock/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    return-void
.end method

.method private lockFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 8

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->container:J

    iget-wide v6, p1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    iget v4, p1, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    if-ne v3, v4, :cond_0

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    iget-wide v6, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockAppsInFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    return-void
.end method

.method private makeFolderInfoComponentNames(Lcom/android/launcher3/folder/FolderInfo;)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    :cond_0
    const-string v2, "Launcher.FolderLock"

    const-string v3, "can not make the componentnames of the special folderInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, ""

    :cond_1
    return-object v0

    :cond_2
    const-string v0, ""

    iget-object v2, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->makeIconInfoComponentName(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private makeIconInfoComponentName(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "Launcher.FolderLock"

    const-string v2, "can not make the componentName of the special info"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ""

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private moveoutHomeOrAppsItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/folder/FolderInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;

    invoke-interface {v1, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;->moveOutItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized putOutUnlockedItemFromLockedFolder(Ljava/lang/String;)V
    .locals 20

    monitor-enter p0

    :try_start_0
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    const-string v12, ";"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v12

    if-eqz v12, :cond_0

    const-string v12, "Launcher.FolderLock"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "the unlock componentNames of putOutUnlockedItemFromLockedFolder is :  "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v4, :cond_2

    iget-object v7, v4, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_3
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v15

    if-eqz v15, :cond_3

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v15

    invoke-virtual {v15}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ","

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v9, v9, -0x1

    const/4 v15, 0x2

    if-ge v9, v15, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-wide v0, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x66

    cmp-long v15, v16, v18

    if-nez v15, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v12

    monitor-exit p0

    throw v12

    :cond_5
    :try_start_1
    iget-wide v0, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x65

    cmp-long v15, v16, v18

    if-eqz v15, :cond_6

    iget-wide v0, v4, Lcom/android/launcher3/folder/FolderInfo;->container:J

    move-wide/from16 v16, v0

    const-wide/16 v18, -0x64

    cmp-long v15, v16, v18

    if-nez v15, :cond_3

    :cond_6
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->moveoutHomeOrAppsItemsFromLockedFolder(Lcom/android/launcher3/folder/FolderInfo;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeLockedRecordsSinceOnlyOneItemLeft(Ljava/util/List;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private registerListener()V
    .locals 6

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.sec.android.launcher.intent.action.FOLDERLOCK_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mStateReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

    const-string v4, "com.samsung.applock.permission.STATUSCHANGED"

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/launcher3/LauncherModel;->registerOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    return-void
.end method

.method private removeLockedRecords(Ljava/lang/String;J)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->remove(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method private declared-synchronized removeLockedRecordsSinceOnlyOneItemLeft(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/folder/FolderInfo;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-static {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v2, v4, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    :cond_0
    monitor-exit p0

    return-void
.end method

.method private sendAppLockChangedBroadcast(Ljava/lang/String;Lcom/android/launcher3/common/base/item/IconInfo;Z)V
    .locals 8

    const/4 v4, 0x1

    const/4 v6, 0x0

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.applock.intent.action.NOTIFYUPDATE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.samsung.android.applock"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "last_locked_package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "package_name"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_locked"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p3, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090015

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APLK"

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-static {v1, v7, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09001a

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private startVerifyActivity(ILcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "REQUEST_VERIFY_FROM"

    const-string v2, "LAUNCHER_REQUEST"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "lock_or_unlock"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_ICON"

    iget-object v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_LABEL"

    iget-object v2, p2, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    invoke-virtual {p2}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0, p1}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private startVerifyActivity(ILcom/android/launcher3/folder/FolderInfo;Ljava/lang/String;)V
    .locals 8

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getAppLockedCheckAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "lock_or_unlock"

    invoke-virtual {v2, v6, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "REQUEST_VERIFY_FROM"

    const-string v7, "LAUNCHER_REQUEST"

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "LOCKED_PACKAGE_ICON"

    invoke-direct {p0, p2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getFolderIconBitmap(Lcom/android/launcher3/folder/FolderInfo;)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "LOCKED_PACKAGE_LABEL"

    iget-object v7, p2, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-string v5, ""

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v4, :cond_2

    iget-object v6, p2, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v3}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v6, "LOCKED_PACKAGE_NAME"

    invoke-virtual {v2, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v6, v2, p1}, Lcom/android/launcher3/Utilities;->startActivityForResultSafely(Landroid/app/Activity;Landroid/content/Intent;I)V

    return-void
.end method

.method private unlockApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 9

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    const-string v5, ""

    const-string v0, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v4

    const-string v7, ","

    invoke-virtual {v4, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v6, ""

    const/4 v2, 0x0

    :goto_0
    array-length v7, v3

    if-ge v2, v7, :cond_3

    if-eqz v5, :cond_1

    aget-object v7, v3, v2

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v3, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/folder/folderlock/FolderLock;->putOutUnlockedItemFromLockedFolder(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x0

    invoke-direct {p0, v6, p1, v7}, Lcom/android/launcher3/folder/folderlock/FolderLock;->sendAppLockChangedBroadcast(Ljava/lang/String;Lcom/android/launcher3/common/base/item/IconInfo;Z)V

    :goto_2
    return-void

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private unlockAppsInFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 12

    const-string v9, ""

    const-string v0, ""

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v7

    const-string v2, ""

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const-string v10, ","

    invoke-virtual {v7, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v10, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v6, :cond_3

    iget-object v10, p1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    if-eqz v4, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ";"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :try_start_0
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v10, "Launcher.FolderLock"

    const-string v11, "the pkg not in the licked list"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    const-string v7, ""

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_5

    if-nez v4, :cond_4

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    :cond_5
    invoke-direct {p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->putOutUnlockedItemFromLockedFolder(Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/android/launcher3/folder/folderlock/FolderLock;->updateLockedPackagesToDB(Ljava/lang/String;)V

    return-void
.end method

.method private unlockFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "home_only_locked_items"

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockAppsInFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    return-void

    :cond_2
    iget v0, p1, Lcom/android/launcher3/folder/FolderInfo;->itemType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->removeLockedRecords(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private unregisterListener()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/LauncherModel;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/launcher3/LauncherModel;->unregisterOnLauncherBindingItemsCompletedListener(Lcom/android/launcher3/LauncherModel$OnLauncherBindingItemsCompletedListener;)V

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mStateReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mStateReceiver:Lcom/android/launcher3/folder/folderlock/FolderLock$ApplockStateChangedRecevier;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Launcher.FolderLock"

    const-string v2, "can not unregister a not registed receiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLockedAppFolderMapping(Ljava/lang/String;)V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "smartmanager_locked_apps_folders"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    invoke-static {}, Lcom/android/launcher3/Utilities;->DEBUGGABLE()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Launcher.FolderLock"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateLockedAppFolderMapping is  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " / "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v2, "Launcher.FolderLock"

    const-string v3, "update the mapping failed"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateLockedPackagesToDB(Ljava/lang/String;)V
    .locals 6

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v3, "com.samsung.applock.intent.action.NOTIFYUPDATE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "com.samsung.android.applock"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "last_locked_package"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "smartmanager_locked_apps_packages"

    invoke-static {v3, v4, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLockedPackagesToDB  result ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "Launcher.FolderLock"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateLockedPackagesToDB Settings.System.putString error e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public addFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addLockedRecords(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "home_only_locked_items"

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x66

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-string v0, "menu_locked_items"

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    goto :goto_0

    :cond_2
    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x64

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x65

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    iget-wide v0, p1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    :cond_3
    const-string v0, "home_locked_items"

    iget-wide v2, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v0, v2, v3}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addLockedRecords(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method public applyFolderNameChanged()V
    .locals 14

    const-string v6, ""

    const-string v7, ""

    const-string v0, ""

    const-string v2, ""

    iget-object v8, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    iget-wide v10, v1, Lcom/android/launcher3/folder/FolderInfo;->container:J

    const-wide/16 v12, -0x66

    cmp-long v9, v10, v12

    if-eqz v9, :cond_0

    :cond_1
    iget-object v9, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v5

    iget-object v9, v1, Lcom/android/launcher3/folder/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    iget-object v9, v1, Lcom/android/launcher3/folder/FolderInfo;->contents:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    if-eqz v9, :cond_2

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ";"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "-"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    :cond_5
    invoke-direct {p0, v6}, Lcom/android/launcher3/folder/folderlock/FolderLock;->updateLockedAppFolderMapping(Ljava/lang/String;)V

    return-void
.end method

.method public canShowAddAppsOptions(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isLockedFolderOpenedOnce()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canShowLockOptions(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v1, v4, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v1

    if-nez v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public canShowRemoveOptions(Ljava/lang/Object;)Z
    .locals 2

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    iget-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderInfo;->isLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public canShowUnlockOptions(Ljava/lang/Object;)Z
    .locals 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    return v1

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {p0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isSSecureSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-static {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v1

    iget-wide v4, v0, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-direct {p0, v1, v4, v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isLockedFolderId(Ljava/lang/String;J)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getBackupInfo()Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    return-object v0
.end method

.method public getRecoverMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mIsRecoverMode:Z

    return v0
.end method

.method public getReroderLayout()Lcom/android/launcher3/common/base/view/CellLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReorderLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-object v0
.end method

.method public isFolderLockEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    return v0
.end method

.method public isLockedApp(Lcom/android/launcher3/common/base/item/IconInfo;)Z
    .locals 6

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getLockedPackagesFromDB()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    const/4 v4, 0x1

    :cond_0
    :goto_0
    return v4

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)Z
    .locals 6

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedItemRecords:Lcom/android/launcher3/folder/folderlock/LockedItemRecords;

    iget-object v1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mAppContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getInfoContainer(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v2

    iget-wide v4, p1, Lcom/android/launcher3/folder/FolderInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/folder/folderlock/LockedItemRecords;->contains(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public lockFolderAfterAdd(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockAppsInFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    return-void
.end method

.method public lockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->setLocked(Z)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method

.method public markAsLockedFolderWhenBind(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderInfo;->setLocked(Z)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public needPopupConfirm(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, p1, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isTempUnlockedFolder(Lcom/android/launcher3/folder/FolderInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isTempUnlockedFolder(Lcom/android/launcher3/folder/FolderInfo;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->getBackupInfo()Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    move-result-object v6

    if-nez v6, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getDragInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v2

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getCopyInfo()Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetView()Landroid/view/View;

    move-result-object v11

    packed-switch p1, :pswitch_data_0

    :cond_1
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->setBackupInfo(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_5

    if-eqz v2, :cond_2

    if-nez v3, :cond_3

    :cond_2
    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v10

    instance-of v0, v10, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_4

    check-cast v10, Lcom/android/launcher3/folder/FolderInfo;

    const/4 v0, 0x1

    invoke-direct {p0, v10, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->addTempUnlockedFolder(Lcom/android/launcher3/folder/FolderInfo;Z)V

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->lockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    goto :goto_1

    :cond_5
    if-nez p2, :cond_1

    if-eqz v2, :cond_1

    if-eqz v3, :cond_1

    instance-of v0, v11, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v0, :cond_1

    invoke-virtual {v11}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    move-object v4, v0

    check-cast v4, Lcom/android/launcher3/folder/FolderInfo;

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->isDragInFolder()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getDragParetFolder()Lcom/android/launcher3/folder/view/FolderView;

    move-result-object v5

    :cond_6
    move-object v0, p0

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/folder/folderlock/FolderLock;->backItemByFolderLock(Lcom/android/launcher3/folder/folderlock/FolderLock;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/IconInfo;Lcom/android/launcher3/folder/FolderInfo;Lcom/android/launcher3/folder/view/FolderView;)V

    goto :goto_1

    :pswitch_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_9

    if-eqz v2, :cond_7

    if-nez v3, :cond_8

    :cond_7
    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getTargetInfo()Lcom/android/launcher3/common/base/item/ItemInfo;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0, v2}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->applyFolderNameChanged()V

    goto :goto_1

    :cond_9
    if-nez p2, :cond_1

    goto :goto_1

    :pswitch_2
    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    invoke-virtual {v6}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;->getClickedFolder()Lcom/android/launcher3/folder/view/FolderIconView;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/launcher3/folder/view/FolderIconView;->getFolderInfo()Lcom/android/launcher3/folder/FolderInfo;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/launcher3/folder/folderlock/FolderLock;->openFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v7}, Lcom/android/launcher3/Launcher;->openFolder(Lcom/android/launcher3/folder/view/FolderIconView;)V

    goto/16 :goto_1

    :cond_a
    if-nez p2, :cond_1

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x7a
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unregisterListener()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    return-void
.end method

.method public onLauncherBindingItemsCompleted()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->isFolderLockEnable:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/folder/folderlock/FolderLock$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/folder/folderlock/FolderLock$1;-><init>(Lcom/android/launcher3/folder/folderlock/FolderLock;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public openFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    return-void
.end method

.method public openLockedFolder(Lcom/android/launcher3/folder/FolderInfo;)V
    .locals 2

    const/16 v0, 0x7c

    const-string v1, "request_unlock"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startVerifyActivity(ILcom/android/launcher3/folder/FolderInfo;Ljava/lang/String;)V

    return-void
.end method

.method public removeFolderLockActionCallback(Lcom/android/launcher3/folder/folderlock/FolderLock$FolderLockActionCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mFolderLockActionCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setBackupInfo(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;-><init>(Lcom/android/launcher3/common/base/item/ItemInfo;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    :cond_0
    return-void
.end method

.method public setBackupInfo(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-direct {v0, p1, p2}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;-><init>(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    :cond_0
    return-void
.end method

.method public setBackupInfo(Lcom/android/launcher3/folder/view/FolderIconView;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    invoke-direct {v0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;-><init>(Lcom/android/launcher3/folder/view/FolderIconView;)V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mBackupInfo:Lcom/android/launcher3/folder/folderlock/FolderLock$BackupDragDropInfo;

    :cond_0
    return-void
.end method

.method public setRecoverMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mIsRecoverMode:Z

    return-void
.end method

.method public setReorderLayout(Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mReorderLayout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method

.method public setup(Lcom/android/launcher3/Launcher;)V
    .locals 1

    iput-object p1, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLockedFolders:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->registerListener()V

    invoke-direct {p0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->initWhiteList()V

    return-void
.end method

.method public showItemDropedConfirmDialog(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/folder/folderlock/FolderLock;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, p1}, Lcom/android/launcher3/folder/folderlock/LockedItemDropConfirmDialog;->createAndShow(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    return-void
.end method

.method public startLockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    const/16 v1, 0x7a

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->needPopupConfirm(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    const-string v0, "request_lock"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startVerifyActivity(ILcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    const-string v0, "request_lock"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startVerifyActivity(ILcom/android/launcher3/folder/FolderInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startUnlockVerifyActivity(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    const/16 v1, 0x7b

    invoke-virtual {p0, p1}, Lcom/android/launcher3/folder/folderlock/FolderLock;->needPopupConfirm(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/android/launcher3/common/base/item/IconInfo;

    const-string v0, "request_unlock"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startVerifyActivity(ILcom/android/launcher3/common/base/item/IconInfo;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/launcher3/folder/FolderInfo;

    const-string v0, "request_unlock"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->startVerifyActivity(ILcom/android/launcher3/folder/FolderInfo;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public unlockItem(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 3

    const/4 v2, 0x0

    instance-of v1, p1, Lcom/android/launcher3/folder/FolderInfo;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockFolder(Lcom/android/launcher3/folder/FolderInfo;)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderInfo;->setLocked(Z)V

    invoke-virtual {v0, v2}, Lcom/android/launcher3/folder/FolderInfo;->setLockedFolderOpenedOnce(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->isShouldHideQuickOptions(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/launcher3/folder/folderlock/FolderLock;->unlockApp(Lcom/android/launcher3/common/base/item/IconInfo;)V

    goto :goto_0
.end method
