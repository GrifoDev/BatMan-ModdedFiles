.class public Lcom/android/launcher3/common/customer/PostPositionController;
.super Ljava/lang/Object;
.source "PostPositionController.java"


# static fields
.field public static final SUPPORT_AUTO_FOLDERING:Z = false

.field private static final TAG:Ljava/lang/String; = "PostPositionController"

.field private static sInstance:Lcom/android/launcher3/common/customer/PostPositionController;


# instance fields
.field private mAppsAutoFolderName:Ljava/lang/String;

.field private mAppsInstaller:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mHomeAutoFolderName:Ljava/lang/String;

.field private mHomeInstaller:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mIsNoFDRState:Z

.field private mPositionerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/customer/PostPositionerBase;",
            ">;"
        }
    .end annotation
.end field

.field private mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsNoFDRState:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createItemRecordForAutoFoldering(Landroid/content/ComponentName;)Lcom/android/launcher3/common/customer/ItemRecord;
    .locals 5

    const/4 v4, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Lcom/android/launcher3/common/customer/ItemRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/customer/ItemRecord;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeAdded(Z)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomePreloadFolder(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeAutoFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setHomeFolderName(Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez v1, :cond_1

    new-instance v1, Lcom/android/launcher3/common/customer/ItemRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    invoke-virtual {v3}, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->ordinal()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/launcher3/common/customer/ItemRecord;-><init>(Ljava/lang/String;I)V

    :cond_1
    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsAdded(Z)V

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsPreloadFolder(Z)V

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsAutoFolderName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/common/customer/ItemRecord;->setAppsFolderName(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method private getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v1}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getAutoFolderingInfo(Lcom/android/launcher3/common/customer/PostPositionSharedPref;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/common/customer/PostPositionController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/customer/PostPositionController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/customer/PostPositionController;->sInstance:Lcom/android/launcher3/common/customer/PostPositionController;

    return-object v0
.end method

.method private isAvaliableState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addAllItems()V
    .locals 3

    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "PostPositionController"

    const-string v2, "Not isAvaliableState!"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const-string v1, "PostPositionController"

    const-string v2, "addAllItems() - All"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/customer/PostPositionerBase;

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->checkFolderValidation()V

    goto :goto_1

    :cond_1
    const-string v1, ""

    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V
    .locals 9

    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PostPositionController"

    const-string v7, "Not isAvaliableState!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v5

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->APP:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v6, v7, :cond_2

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getActivityInfo(Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    move-result-object v2

    if-nez v2, :cond_3

    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addHomeItem(): Can\'t find ActivityInfo. - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v6

    sget-object v7, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-ne v6, v7, :cond_3

    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->receivers:[Landroid/content/pm/ActivityInfo;

    invoke-static {v6, v0, v7}, Lcom/android/launcher3/Utilities;->isComponentActive(Landroid/content/Context;Landroid/content/ComponentName;[Landroid/content/pm/ComponentInfo;)Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "PostPositionController"

    const-string v7, "Widget exist and will be added soon"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    const/4 v7, 0x1

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lcom/android/launcher3/common/customer/PostPositionProvider;->updateItemRecordResult(ZLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_4
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/common/customer/PostPositionerBase;

    if-eqz v4, :cond_4

    invoke-virtual {v4, p1, v2, v5}, Lcom/android/launcher3/common/customer/PostPositionerBase;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    goto :goto_1

    :cond_5
    :try_start_1
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find widget component info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Can\'t find widget component info : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addHomeItem(): Wrong Component expression. - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/android/launcher3/common/customer/ItemRecord;->getComponentName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public addItem(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Ljava/lang/String;Z)V

    return-void
.end method

.method public addItem(Ljava/lang/String;Z)V
    .locals 10

    invoke-direct {p0}, Lcom/android/launcher3/common/customer/PostPositionController;->isAvaliableState()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "PostPositionController"

    const-string v7, "Not isAvaliableState!"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v6, "PostPositionController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addItem() - "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", isWidgetOnly : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mHomeInstaller:Ljava/lang/String;

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    if-eqz v6, :cond_4

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/LauncherAppsCompat;

    move-result-object v6

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v7

    invoke-virtual {v6, p1, v7}, Lcom/android/launcher3/common/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lcom/android/launcher3/common/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;

    invoke-virtual {v2}, Lcom/android/launcher3/common/compat/LauncherActivityInfoCompat;->getComponentName()Landroid/content/ComponentName;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/launcher3/common/customer/PostPositionController;->createItemRecordForAutoFoldering(Landroid/content/ComponentName;)Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v6, p1}, Lcom/android/launcher3/common/customer/PostPositionProvider;->getItemRecordsNeedToPosition(Ljava/lang/String;)[Lcom/android/launcher3/common/customer/ItemRecord;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    array-length v7, v3

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v7, :cond_0

    aget-object v1, v3, v6

    if-eqz p2, :cond_5

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/ItemRecord;->getItemType()Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;->WIDGET:Lcom/android/launcher3/common/customer/PostPositionProvider$ITEM_TYPE;

    if-eq v8, v9, :cond_5

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->addItem(Lcom/android/launcher3/common/customer/ItemRecord;)V

    goto :goto_2
.end method

.method public checkAndEnablePositioner()V
    .locals 8

    const/4 v3, 0x1

    const-wide/16 v4, -0x64

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->isEnabled()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/customer/PostPositionController;->getAutoFolderingInfo(Lcom/android/launcher3/common/customer/PostPositionSharedPref;)Z

    move-result v0

    iget-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionProvider;->hasItemRecord()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->setEnabled(Z)V

    iput-boolean v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    :cond_1
    const-string v2, "PostPositionController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkAndEnableProvider() - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    const-string v2, "PostPositionController"

    const-string v3, "checkAndEnableProvider() - ppPref is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public deleteFolder(J)V
    .locals 5

    const-string v1, "PostPositionController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteFolder() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/customer/PostPositionerBase;

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsNoFDRState:Z

    invoke-virtual {v0, p1, p2, v2}, Lcom/android/launcher3/common/customer/PostPositionerBase;->deleteFolder(JZ)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deleteItems(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v2, -0x66

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeItemsInfo(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method public getAppsAutoFolderId(Ljava/lang/String;)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getProvider()Lcom/android/launcher3/common/customer/PostPositionProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-object v0
.end method

.method public getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/customer/PostPositionerBase;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getContainer()I

    move-result v2

    int-to-long v2, v2

    cmp-long v2, v2, p1

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionerBase;->getSharedPref()Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isReloadNeeded()Z
    .locals 5

    const/4 v4, 0x0

    const/4 v1, 0x1

    const-wide/16 v2, -0x64

    invoke-virtual {p0, v2, v3}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getOMCPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "PostPositionController"

    const-string v3, "isReloadNeeded() - true"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsNoFDRState:Z

    iget-object v2, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    sget-object v3, Lcom/android/launcher3/common/customer/PostPositionProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4, v4}, Lcom/android/launcher3/common/customer/PostPositionProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeOMCPath()V

    invoke-virtual {v0}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->clearRemovedFolderInfo()V

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onFinishLoaderTask()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsNoFDRState:Z

    return-void
.end method

.method public registerPositioner(Lcom/android/launcher3/common/customer/PostPositionerBase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mPositionerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeAutoFolderInfo(J)V
    .locals 7

    const-wide/16 v4, -0x66

    invoke-virtual {p0, v4, v5}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsAutoFolderName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->getPreloadedFolderId(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v3, p1, v0

    if-nez v3, :cond_0

    const-string v3, ""

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeAutoFolderingInfo(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mAppsInstaller:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/launcher3/common/customer/PostPositionProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mProvider:Lcom/android/launcher3/common/customer/PostPositionProvider;

    return-void
.end method

.method public writeFolderReadyIdForNoFDR(JLjava/lang/String;J)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/launcher3/common/customer/PostPositionController;->mIsNoFDRState:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p3}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removePreloadedFolderId(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->removeFolderId(Ljava/lang/String;Z)V

    const/4 v1, 0x1

    invoke-virtual {v0, p3, p4, p5, v1}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

    :cond_0
    return-void
.end method
