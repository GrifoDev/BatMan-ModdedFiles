.class Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DesktopModePolicyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/desktopmode/DesktopModePolicyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DeXPolicyDatabaseHelper"
.end annotation


# static fields
.field private static final POLICY_UPDATE_DB:Ljava/lang/String; = "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

.field private static final POLICY_UPDATE_DB_VERSION:I = 0x1

.field private static mDeXPolicyDatabaseHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;


# instance fields
.field private final MODE_COLUMN:Ljava/lang/String;

.field protected final MODE_NONE:I

.field private final PKG_COLUMN:Ljava/lang/String;

.field private final POLICY_LAUNCH_PACKAGE_TABLE:Ljava/lang/String;


# direct methods
.method static synthetic -wrap0()Z
    .locals 1

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->checkDataBase()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->mDeXPolicyDatabaseHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string/jumbo v0, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    const-string/jumbo v0, "LaunchPackageList"

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->POLICY_LAUNCH_PACKAGE_TABLE:Ljava/lang/String;

    const-string/jumbo v0, "packagename"

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->PKG_COLUMN:Ljava/lang/String;

    const-string/jumbo v0, "mode"

    iput-object v0, p0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->MODE_COLUMN:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->MODE_NONE:I

    return-void
.end method

.method private static checkDataBase()Z
    .locals 4

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    const-string/jumbo v2, "/data/user/0/com.sec.android.app.desktoplauncher/databases/DexPkgList.db"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    sget-object v2, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "checkDataBase. There\'s no DB exist. or can not access."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;
    .locals 1

    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->mDeXPolicyDatabaseHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    invoke-direct {v0, p0}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->mDeXPolicyDatabaseHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    :cond_0
    sget-object v0, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->mDeXPolicyDatabaseHelper:Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;

    return-object v0
.end method


# virtual methods
.method protected getAllLaunchPolicy()Ljava/util/HashMap;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager$DeXPolicyDatabaseHelper;->checkDataBase()Z

    move-result v1

    if-nez v1, :cond_0

    return-object v12

    :cond_0
    const/4 v11, 0x0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v1, "LaunchPackageList"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "packagename"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "mode"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    const/4 v10, 0x0

    :goto_0
    invoke-interface {v11}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-ge v10, v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v12, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    if-eqz v11, :cond_2

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    :goto_1
    const/4 v0, 0x0

    :cond_3
    return-object v12

    :catch_0
    move-exception v9

    :try_start_1
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    if-eqz v12, :cond_5

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v11, :cond_6

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_6
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    :catch_1
    move-exception v8

    :try_start_2
    invoke-static {}, Lcom/samsung/android/desktopmode/DesktopModePolicyManager;->-get0()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_7
    if-eqz v12, :cond_8

    invoke-virtual {v12}, Ljava/util/HashMap;->clear()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-eqz v11, :cond_9

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_9
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    goto :goto_1

    :catchall_0
    move-exception v1

    if-eqz v11, :cond_a

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    const/4 v11, 0x0

    :cond_a
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteClosable;->close()V

    const/4 v0, 0x0

    :cond_b
    throw v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->onOpen(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0

    return-void
.end method
