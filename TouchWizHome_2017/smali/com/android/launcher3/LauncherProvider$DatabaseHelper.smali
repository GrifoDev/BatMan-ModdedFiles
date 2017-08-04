.class Lcom/android/launcher3/LauncherProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "LauncherProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/LauncherProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

.field private mIsDownGrade:Z

.field private mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

.field private mListener:Lcom/android/launcher3/LauncherProviderChangeListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/4 v8, 0x0

    const-wide/16 v6, -0x1

    const-string v1, "launcher.db"

    const/4 v4, 0x0

    const/16 v5, 0x1e

    invoke-direct {p0, p1, v1, v4, v5}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    iput-boolean v8, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setContext(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/launcher3/common/model/FavoritesProvider;->getInstance()Lcom/android/launcher3/common/model/FavoritesProvider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportSprintExtension()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherProviderID;->getInstance()Lcom/android/launcher3/LauncherProviderID;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-static {v0}, Lcom/android/launcher3/LauncherProviderID;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->checkTable()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "DB table checking error!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxItemId()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v5, "favorites"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxScreenId()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v4, "workspaceScreens"

    invoke-virtual {v1, v4, v8}, Lcom/android/launcher3/common/model/FavoritesProvider;->getMaxId(Ljava/lang/String;Z)J

    move-result-wide v2

    cmp-long v1, v2, v6

    if-nez v1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->migrationScreenTableByFavoriteTable(Landroid/database/sqlite/SQLiteDatabase;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "Error: could not query max id in workspaceScreens"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v4, "DB version DownGrade error!"

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    return-void
.end method

.method static synthetic access$002(Lcom/android/launcher3/LauncherProvider$DatabaseHelper;Lcom/android/launcher3/LauncherProviderChangeListener;)Lcom/android/launcher3/LauncherProviderChangeListener;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    return-object p1
.end method

.method private migrationScreenTableByFavoriteTable(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 18

    const-string v5, "container = ?"

    const/4 v2, 0x1

    new-array v6, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const/16 v3, -0x64

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v2

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "screen"

    aput-object v3, v4, v2

    const-string v3, "favorites"

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, "screen"

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    if-eqz v10, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-ltz v2, :cond_0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v12

    :try_start_1
    const-string v2, "LauncherProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception e = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_1
    const-string v2, "workspaceScreens"

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v7}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-virtual {v15}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v15, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v14

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v14, :cond_5

    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "_id"

    invoke-virtual {v15, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v11, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "screenRank"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v11, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "workspaceScreens"

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    :cond_3
    if-eqz v10, :cond_1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v10, :cond_4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v2

    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherProviderID;->updateScreenCount()V

    :cond_6
    return-void
.end method

.method private resetSharedPref()V
    .locals 5

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setFlagEmptyDbCreated()V
    .locals 5

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "EMPTY_DATABASE_CREATED"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v0}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteTable()V

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherProviderID;->deleteTable()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 6

    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-static {p1}, Lcom/android/launcher3/LauncherProviderID;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxScreenId(J)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/common/model/FavoritesProvider;->createTable(J)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mLauncherProviderID:Lcom/android/launcher3/LauncherProviderID;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherProviderID;->createPrefsTable()V

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mListener:Lcom/android/launcher3/LauncherProviderChangeListener;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/model/FavoritesProvider;->deleteWidgetHost(Lcom/android/launcher3/LauncherProviderChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    const-string v5, "favorites"

    invoke-virtual {v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->initializeMaxItemId(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/common/model/FavoritesProvider;->setMaxItemId(J)V

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->setFlagEmptyDbCreated()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v1, v4}, Lcom/android/launcher3/home/ManagedProfileHeuristic;->processAllUsers(Ljava/util/List;Landroid/content/Context;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    const-string v0, "LauncherProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Database version downgrade from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Wiping databse."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mIsDownGrade:Z

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 5

    invoke-static {p1}, Lcom/android/launcher3/common/model/DataProvider;->setDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->mFavoritesProvider:Lcom/android/launcher3/common/model/FavoritesProvider;

    invoke-virtual {v4, v2, v3, p2, p3}, Lcom/android/launcher3/common/model/FavoritesProvider;->migrateTable(JII)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->resetSharedPref()V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/LauncherProvider$DatabaseHelper;->createEmptyDB(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_0
    return-void
.end method
