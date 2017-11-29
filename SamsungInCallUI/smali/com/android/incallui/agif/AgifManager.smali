.class public Lcom/android/incallui/agif/AgifManager;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "AgifManager"

.field private static sInstance:Lcom/android/incallui/agif/AgifManager;


# instance fields
.field private mAgifRecentUri:Ljava/lang/String;

.field private mCallList:Lcom/android/incallui/CallList;

.field private mContext:Landroid/content/Context;

.field private mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCallList:Lcom/android/incallui/CallList;

    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    return-void
.end method

.method public static getInstance()Lcom/android/incallui/agif/AgifManager;
    .locals 2

    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/incallui/agif/AgifManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/incallui/agif/AgifManager;

    invoke-direct {v0}, Lcom/android/incallui/agif/AgifManager;-><init>()V

    sput-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/android/incallui/agif/AgifManager;->sInstance:Lcom/android/incallui/agif/AgifManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getRawUriFromAgifName(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    const-string v6, ""

    if-nez p1, :cond_1

    move-object v0, v7

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Lcom/samsung/android/provider/agifcallprovider/AgifCallProvider;->c:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "agif_name = \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_4

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAgifUniqueId() agif name filed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/provider/agifcallprovider/AgifCallProvider;->b:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    move-object v0, v6

    :goto_1
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "AgifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAgifUniqueId query error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-object v0, v6

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0

    :cond_3
    move-object v0, v6

    goto/16 :goto_0

    :cond_4
    move-object v0, v6

    goto :goto_1
.end method

.method private redial(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "redial: agifRecentUri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCoreAppsManager:Lcom/android/incallui/coreapps/CoreAppsManager;

    invoke-virtual {v0, p1}, Lcom/android/incallui/coreapps/CoreAppsManager;->receiveContactUri(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public redial()V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mCallList:Lcom/android/incallui/CallList;

    invoke-virtual {v0}, Lcom/android/incallui/CallList;->getRedialCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    const-string v1, "AgifManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "redial: isRedialing-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " , send recent Agif."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/incallui/agif/AgifManager;->redial(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public saveLastAgifInfoForRedial(Ljava/lang/String;)V
    .locals 3

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastAgifInfoForRedial: uriString-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/incallui/agif/AgifManager;->getRawUriFromAgifName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-object v0, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    const-string v0, "AgifManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveLastAgifInfoForRedial: mAgifRecentUri-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/agif/AgifManager;->mAgifRecentUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
