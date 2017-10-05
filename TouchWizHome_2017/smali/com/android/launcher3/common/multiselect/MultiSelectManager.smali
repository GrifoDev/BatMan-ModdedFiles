.class public Lcom/android/launcher3/common/multiselect/MultiSelectManager;
.super Ljava/lang/Object;
.source "MultiSelectManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;
    }
.end annotation


# static fields
.field private static final CONFIGURATION_CHANGE_DELAY:I = 0x12c

.field private static final MAX_COUNT:I = 0x32

.field private static final MIN_COUNT_CREATE_FOLDER:I = 0x2

.field private static final TAG:Ljava/lang/String; = "MultiSelectManager"


# instance fields
.field private mAddToPersonalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAddToPersonalPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedAppsSourceMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/launcher3/common/drag/DragSource;",
            ">;"
        }
    .end annotation
.end field

.field private mCheckedAppsViewList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentMobileKeyboard:I

.field private mCurrentOrientation:I

.field private mIsFromHomeKey:Z

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMultiSelectCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

.field private mMultiSelectMode:Z

.field private mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

.field private mPostUninstallPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureFolderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecureFolderPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mToast:Landroid/widget/Toast;

.field private mUninstallAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mUninstallPendingList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    iput-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method private addToPersonal()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->addToPersonal(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private addToSecureFolder()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/SecureFolderHelper;->addAppToSecureFolder(Landroid/content/Context;Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private disableApp(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v2}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v2}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v7, 0x0

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v9, v2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v9, p2}, Landroid/content/pm/PackageManager;->getActivityIcon(Landroid/content/ComponentName;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    new-instance v6, Lcom/android/launcher3/common/multiselect/MultiSelectManager$2;

    invoke-direct {v6, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$2;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    if-eqz v7, :cond_4

    if-nez v4, :cond_3

    invoke-virtual {v9, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v3, p1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->createAndShow(Landroid/content/Context;Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Landroid/app/FragmentManager;Ljava/lang/Runnable;)V

    goto :goto_0

    :catch_0
    move-exception v8

    const-string v0, "MultiSelectManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NameNotFoundException : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-virtual {v0, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private enableHelpDialog()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.multiselect.help.prefs"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private startUninstallActivity()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearUninstallApplist()V

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    :cond_1
    return-void
.end method

.method private updateEnabledButton(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->updateEnabledButton(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public acceptDropToFolder()Z
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragMgr()Lcom/android/launcher3/common/drag/DragManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/drag/DragManager;->getDragObject()Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->acceptDropToFolder()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public addAddToPersonalList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAddToPersonalPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCheckedApp(Landroid/view/View;Lcom/android/launcher3/common/drag/DragSource;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->updateEnabledButton(Landroid/view/View;Z)V

    return-void
.end method

.method public addMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-interface {p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onSetPageScrollListener(Lcom/android/launcher3/common/base/view/PagedView$PageScrollListener;)V

    :cond_0
    return-void
.end method

.method public addSecureFolderList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addSecureFolderPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addUninstallPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canLongClick(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lcom/android/launcher3/folder/view/FolderIconView;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFolderSelect()Z

    move-result v0

    goto :goto_0
.end method

.method public canSelectItem()Z
    .locals 7

    const/16 v6, 0x32

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v6, :cond_1

    move v0, v2

    :goto_0
    if-nez v0, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f09006b

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :cond_0
    return v0

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2, v1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public clearCheckedApps()V
    .locals 4

    const/4 v3, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    instance-of v2, v1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/launcher3/common/view/IconView;

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/IconView;->getCheckBox()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearUninstallApplist()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearUninstallPendigList()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public containsAddToPersonalList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAddToPersonalPendingList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsSecureFolderList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsSecureFolderPendingList(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAddToPersonalListSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedAppCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getCheckedAppDragSource(I)Lcom/android/launcher3/common/drag/DragSource;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DragSource;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCheckedAppsViewList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCheckedItemCountInFolder(J)I
    .locals 7

    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-wide v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    cmp-long v4, p1, v4

    if-nez v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getMultiSelectPanel()Lcom/android/launcher3/common/multiselect/MultiSelectPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    return-object v0
.end method

.method public getSecureFolderListSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public hasFolderItem()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->hasFolderItem()Z

    move-result v0

    return v0
.end method

.method public hideHelpDialog(Z)V
    .locals 2

    const-string v0, "MultiSelectManager"

    const-string v1, "hideHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->hide(Z)V

    :cond_0
    return-void
.end method

.method public homeKeyPressed()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    return-void
.end method

.method public isMultiSelectMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    return v0
.end method

.method public isShowingHelpDialog()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onChangeSelectMode(ZZ)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "MultiSelectManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChangeSelectMode - enter = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    if-eqz v3, :cond_0

    if-nez p1, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v3, v2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->setFolderSelect(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    invoke-interface {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onChangeSelectMode(ZZ)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->enableHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showHelpDialog(Z)V

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v3}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showMultiSelectPanel(ZZ)V

    :cond_3
    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    if-eqz v5, :cond_6

    :goto_2
    invoke-virtual {v3, v4, v2, v1}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V

    :cond_4
    iput-boolean v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mIsFromHomeKey:Z

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    goto :goto_1

    :cond_6
    move v1, v2

    goto :goto_2
.end method

.method public onClickMultiSelectPanel(I)V
    .locals 6

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v5}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getTextForUninstallButton()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, p1, v3, v4, v5}, Lcom/android/launcher3/util/logging/SALogging;->insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v2, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getButtonEnabled(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;

    if-nez v1, :cond_2

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->startUninstallActivity()V

    const/4 v1, 0x1

    :cond_2
    :goto_2
    invoke-interface {v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;->onClickMultiSelectPanel(I)V

    goto :goto_1

    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addToSecureFolder()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x4

    if-ne p1, v3, :cond_2

    invoke-direct {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->addToPersonal()V

    const/4 v1, 0x1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->clearCheckedApps()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->semMobileKeyboardCovered:I

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->onConfigurationChangedIfNeeded()V

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/common/multiselect/MultiSelectManager$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager$1;-><init>(Lcom/android/launcher3/common/multiselect/MultiSelectManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public postUninstallActivity()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/common/dialog/DisableAppConfirmationDialog;->isActive(Landroid/app/FragmentManager;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MultiSelectManager"

    const-string v5, "postUninstallActivity - return by previous disable dialog"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v4, "MultiSelectManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postUninstallActivity - size = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallAppList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    const-string v2, ""

    instance-of v4, v3, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v4, :cond_3

    move-object v1, v3

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v0, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher3/Utilities;->canDisable(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->disableApp(Lcom/android/launcher3/common/base/item/IconInfo;Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2}, Lcom/android/launcher3/Utilities;->canUninstall(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4}, Lcom/android/launcher3/util/DualAppUtils;->supportDualApp(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4, v2}, Lcom/android/launcher3/util/DualAppUtils;->isDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4, v2}, Lcom/android/launcher3/util/DualAppUtils;->hasDualApp(Lcom/android/launcher3/common/compat/UserHandleCompat;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-static {v4, v2, v5}, Lcom/android/launcher3/util/DualAppUtils;->uninstallOrDisableDualApp(Landroid/content/Context;Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    goto :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v3}, Lcom/android/launcher3/util/UninstallAppUtils;->startUninstallActivity(Lcom/android/launcher3/Launcher;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    check-cast v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v5, v3, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->postUninstallActivity()V

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->showToast(I)V

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_0
.end method

.method public removeAddToPersonalList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAddToPersonalPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeCheckedApp(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsSourceMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->remove(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->updateEnabledButton(Landroid/view/View;Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isShowingHelpDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->hideHelpDialog(Z)V

    :cond_1
    return-void
.end method

.method public removeMultiSelectCallbacks(Lcom/android/launcher3/common/multiselect/MultiSelectManager$MultiSelectListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeSecureFolderList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeSecureFolderPendingList(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setEnableHelpDialog(Z)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.multiselect.help.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setup(Landroid/app/Activity;)V
    .locals 3

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100b0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iput-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v2, 0x7f1100b1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iput-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentOrientation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCurrentMobileKeyboard:I

    return-void
.end method

.method public showHelpDialog(Z)V
    .locals 3

    const-string v0, "MultiSelectManager"

    const-string v1, "showHelpDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectHelpDialog:Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0, p1}, Lcom/android/launcher3/common/multiselect/MultiSelectHelpDialog;->show(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public showMultiSelectPanel(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->showMultiSelectPanel(ZZ)V

    :cond_1
    return-void
.end method

.method public showToast(I)V
    .locals 11

    const v10, 0x7f09006c

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v2, ""

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    if-nez v4, :cond_d

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v4, v2, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    :goto_1
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    move v0, v5

    :goto_2
    if-eqz v0, :cond_4

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mPostUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    :goto_4
    if-le v1, v5, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090069

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v3, v7, v6

    add-int/lit8 v8, v1, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    move v0, v6

    goto :goto_2

    :cond_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mUninstallPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v3, v4

    goto :goto_4

    :cond_6
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090068

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v3, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :pswitch_1
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f09006e

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-array v8, v9, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v4, v8, v6

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mCheckedAppsViewList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_2
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v5, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090065

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v9, :cond_8

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f090066

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mMultiSelectPanel:Lcom/android/launcher3/common/multiselect/MultiSelectPanel;

    invoke-virtual {v4}, Lcom/android/launcher3/common/multiselect/MultiSelectPanel;->getDimTypeCreateFolder()I

    move-result v4

    if-ne v4, v8, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v5, 0x7f090064

    invoke-virtual {v4, v5}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_3
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_9

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090071

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v8, 0x7f09006f

    invoke-virtual {v5, v8}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_9
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_a

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090072

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f09006f

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_a
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090070

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mSecureFolderPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v9, 0x7f09006f

    invoke-virtual {v8, v9}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :pswitch_4
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v4, v5, :cond_1

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-le v4, v9, :cond_b

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090071

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v8, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v5

    iget-object v5, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v9

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_b
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ne v4, v9, :cond_c

    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090072

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_c
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    const v7, 0x7f090070

    invoke-virtual {v4, v7}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v7, v9, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mAddToPersonalPendingList:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    iget-object v8, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v8, v10}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v5

    invoke-static {v4, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_0

    :cond_d
    iget-object v4, p0, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4, v2}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
