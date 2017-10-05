.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;
.super Ljava/lang/Object;
.source "DeepShortcutManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x19
.end annotation


# static fields
.field private static final FLAG_GET_ALL:I = 0xb

.field private static final TAG:Ljava/lang/String; = "DeepShortcutManager"


# instance fields
.field private mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLauncherApps:Landroid/content/pm/LauncherApps;

.field private mWasLastCallSuccess:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutCache;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/launcher3/util/MultiHashMap;

    invoke-direct {v0}, Lcom/android/launcher3/util/MultiHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    const-string v0, "launcherapps"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    return-void
.end method

.method private extractIds(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_3

    new-instance v1, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {v1}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {v1, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v1, p3}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-virtual {v1, p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    :cond_0
    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v1, v6}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-nez v4, :cond_2

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_1
    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    :goto_2
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to query for shortcuts"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ShortcutInfo;

    new-instance v6, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    invoke-direct {v6, v2}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;-><init>(Landroid/content/pm/ShortcutInfo;)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method public static supportsShortcuts(Lcom/android/launcher3/common/base/item/ItemInfo;)Z
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public bindDeepShortcutMap(Lcom/android/launcher3/util/MultiHashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MultiHashMap",
            "<",
            "Lcom/android/launcher3/util/ComponentKey;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    const-string v0, "DeepShortcutManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindDeepShortcutMap: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public closeShortcutsContainer(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->closeShortcutsContainer(Landroid/content/Context;Z)V

    return-void
.end method

.method public closeShortcutsContainer(Landroid/content/Context;Z)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->animateClose()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->close()V

    goto :goto_0
.end method

.method public getOpenShortcutsContainer(Landroid/content/Context;)Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportDeepShortcut()Z

    move-result v3

    if-eqz v3, :cond_2

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/common/view/DragLayer;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    :goto_0
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/view/DragLayer;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v3, v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    invoke-virtual {v3}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;->isOpen()Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutsContainer;

    :goto_1
    return-object v0

    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    move-object v0, v4

    goto :goto_1

    :cond_2
    move-object v0, v4

    goto :goto_1
.end method

.method public getShortcutIconDrawable(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    sget-boolean v2, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    const/16 v4, 0x280

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/LauncherApps;->getShortcutIconDrawable(Landroid/content/pm/ShortcutInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    :goto_1
    const-string v2, "DeepShortcutManager"

    const-string v3, "Failed to get shortcut icon"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public getShortcutIdsForItem(Lcom/android/launcher3/common/base/item/IconInfo;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->supportsShortcuts(Lcom/android/launcher3/common/base/item/ItemInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/IconInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_2

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mDeepShortcutMap:Lcom/android/launcher3/util/MultiHashMap;

    new-instance v3, Lcom/android/launcher3/util/ComponentKey;

    iget-object v4, p1, Lcom/android/launcher3/common/base/item/IconInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-direct {v3, v0, v4}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    invoke-virtual {v2, v3}, Lcom/android/launcher3/util/MultiHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_0

    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0
.end method

.method public hasHostPermission()Z
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps;->hasShortcutHostPermission()Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "DeepShortcutManager"

    const-string v2, "Failed to make shortcut manager call"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public onShortcutsChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public pinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to pin shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public queryForAllShortcuts(Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v2, 0x0

    const/16 v1, 0xb

    move-object v0, p0

    move-object v3, v2

    move-object v4, v2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForFullDetails(Ljava/lang/String;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/16 v1, 0xb

    const/4 v3, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v1, 0x2

    move-object v0, p0

    move-object v2, p1

    move-object v4, v3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryForShortcutKey(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;
    .locals 7

    const/4 v3, 0x0

    const/16 v1, 0xb

    iget-object v0, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    :goto_0
    return-object v3

    :cond_0
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;

    move-object v3, v0

    goto :goto_0
.end method

.method public queryForShortcutsContainer(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/launcher3/common/compat/UserHandleCompat;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutInfoCompat;",
            ">;"
        }
    .end annotation

    const/16 v1, 0x9

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->query(ILjava/lang/String;Landroid/content/ComponentName;Ljava/util/List;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public startShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/launcher3/common/compat/UserHandleCompat;)V

    return-void
.end method

.method public startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/launcher3/common/compat/UserHandleCompat;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {p5}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v6

    :goto_1
    const-string v0, "DeepShortcutManager"

    const-string v1, "Failed to start shortcut"

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    :catch_1
    move-exception v6

    goto :goto_1
.end method

.method public unpinShortcut(Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x19
    .end annotation

    sget-boolean v5, Lcom/android/launcher3/Utilities;->ATLEAST_N_MR1:Z

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p1, Lcom/android/launcher3/common/quickoption/shortcuts/ShortcutKey;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    invoke-virtual {p0, v2, v4}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->queryForPinnedShortcuts(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->extractIds(Ljava/util/List;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :try_start_0
    iget-object v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mLauncherApps:Landroid/content/pm/LauncherApps;

    invoke-virtual {v4}, Lcom/android/launcher3/common/compat/UserHandleCompat;->getUser()Landroid/os/UserHandle;

    move-result-object v6

    invoke-virtual {v5, v2, v3, v6}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v5, "DeepShortcutManager"

    const-string v6, "Failed to unpin shortcut"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method public wasLastCallSuccess()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutManager;->mWasLastCallSuccess:Z

    return v0
.end method
