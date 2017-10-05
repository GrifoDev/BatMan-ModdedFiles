.class Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;
.super Ljava/lang/Object;
.source "LauncherBackupHelper.java"

# interfaces
.implements Landroid/app/backup/BackupHelper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;
    }
.end annotation


# static fields
.field private static final APPWIDGET_ID_INDEX:I = 0x4

.field private static final APPWIDGET_PROVIDER_INDEX:I = 0x3

.field private static final BACKUP_INVALID_VALUE:I = -0x1

.field private static final BACKUP_VERSION:I = 0x4

.field private static final CELLX_INDEX:I = 0x5

.field private static final CELLY_INDEX:I = 0x6

.field private static final CONTAINER_INDEX:I = 0x7

.field private static final DEBUG:Z = false

.field private static final FAVORITE_PROJECTION:[Ljava/lang/String;

.field private static final ICON_INDEX:I = 0x8

.field private static final ICON_PACKAGE_INDEX:I = 0x9

.field private static final ICON_RESOURCE_INDEX:I = 0xa

.field private static final ICON_TYPE_INDEX:I = 0xb

.field private static final ID_INDEX:I = 0x0

.field private static final ID_MODIFIED:I = 0x1

.field private static final INTENT_INDEX:I = 0x2

.field private static final ITEM_TYPE_INDEX:I = 0xc

.field private static final JOURNAL_KEY:Ljava/lang/String; = "#"

.field private static final MAX_ICONS_PER_PASS:I = 0xa

.field private static final MAX_JOURNAL_SIZE:I = 0xf4240

.field private static final MAX_WIDGETS_PER_PASS:I = 0x5

.field private static final RANK_INDEX:I = 0x12

.field private static final SCREEN_INDEX:I = 0xd

.field private static final SCREEN_PROJECTION:[Ljava/lang/String;

.field private static final SCREEN_RANK_INDEX:I = 0x2

.field private static final SPANX_INDEX:I = 0xe

.field private static final SPANY_INDEX:I = 0xf

.field private static final TAG:Ljava/lang/String; = "LauncherBackupHelper"

.field private static final TITLE_INDEX:I = 0x10

.field private static final VERBOSE:Z


# instance fields
.field private mBackupDataWasUpdated:Z

.field private mBackupManager:Landroid/app/backup/BackupManager;

.field private mBuffer:[B

.field private final mContext:Landroid/content/Context;

.field private mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

.field private final mExistingKeys:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIconCache:Lcom/android/launcher3/common/model/IconCache;

.field private mIsHomeOnly:Z

.field private final mKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mLastBackupRestoreTime:J

.field private final mUserSerial:J

.field restoreSuccessful:Z

.field restoredBackupVersion:I

.field switchDb:Z

.field widgetSizes:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x13

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "intent"

    aput-object v1, v0, v5

    const-string v1, "appWidgetProvider"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "appWidgetId"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "cellX"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "cellY"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "container"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "icon"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "iconPackage"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "iconResource"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "iconType"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "itemType"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "screen"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "spanX"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "spanY"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "profileId"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "rank"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "modified"

    aput-object v1, v0, v4

    const-string v1, "screenRank"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x200

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    iput v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    iput-object p1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iput-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    return-void
.end method

.method private applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 6

    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    iput-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    if-eqz v1, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    iput v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    return-void
.end method

.method private backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v2, "homeOnly"

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v2, "home"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_5

    const/4 v11, 0x5

    :goto_2
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_3
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {p0, v11, v8, v9}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v10

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v12, v2

    if-gez v2, :cond_4

    iget v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_3

    :cond_4
    invoke-direct {p0, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    move-result-object v2

    invoke-direct {p0, v10, v2, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_5
    const/4 v11, 0x1

    goto :goto_2

    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private backupIcons(Landroid/app/backup/BackupDataOutput;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v14, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v22

    const/4 v11, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "(itemType=0 OR itemType=1) AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    if-nez v13, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v5, -0x1

    :try_start_0
    invoke-interface {v13, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_1
    :goto_1
    invoke-interface {v13}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_5

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    const/4 v5, 0x2

    invoke-interface {v13, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v20

    const/4 v5, 0x0

    :try_start_1
    move-object/from16 v0, v20

    invoke-static {v0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    const/16 v21, 0x0

    const/4 v10, 0x0

    if-eqz v12, :cond_2

    const/4 v5, 0x3

    invoke-virtual {v12}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    :goto_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v5, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v15

    :try_start_2
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "invalid URI on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    throw v5

    :cond_2
    :try_start_3
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "empty intent on application favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v15

    :try_start_4
    const-string v5, "LauncherBackupHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unable to save application icon for favorite: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-wide/from16 v0, v18

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_1

    :cond_3
    if-eqz v10, :cond_1

    const/16 v5, 0xa

    if-ge v11, v5, :cond_4

    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->getIcon(Landroid/content/Intent;Lcom/android/launcher3/common/compat/UserHandleCompat;)Landroid/graphics/Bitmap;

    move-result-object v16

    if-eqz v16, :cond_1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    move-object/from16 v0, v16

    move-object/from16 v1, v22

    invoke-virtual {v5, v0, v1}, Lcom/android/launcher3/common/model/IconCache;->isDefaultIcon(Landroid/graphics/Bitmap;Lcom/android/launcher3/common/compat/UserHandleCompat;)Z

    move-result v5

    if-nez v5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v14, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v5, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V
    :try_end_5
    .catch Ljava/net/URISyntaxException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    :cond_5
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0
.end method

.method private backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-static {p1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->parseFrom([B)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    invoke-direct {p0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid key read from stream"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    :catch_0
    move-exception v0

    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2

    :catch_1
    move-exception v0

    new-instance v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    invoke-direct {v2, p0, v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/Throwable;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v2

    :cond_0
    return-object v1
.end method

.method private backupScreens(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p2, :cond_0

    const-string v2, "homeOnly"

    :goto_0
    iget-boolean v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v2, v3}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->SCREEN_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v2, "home"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_4

    const/4 v11, 0x6

    :goto_2
    const/4 v2, -0x1

    :try_start_0
    invoke-interface {v7, v2}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v2, 0x1

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    invoke-direct {p0, v11, v8, v9}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v10

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v2, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    cmp-long v2, v12, v2

    if-ltz v2, :cond_2

    :cond_3
    invoke-direct {p0, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    move-result-object v2

    invoke-direct {p0, v10, v2, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_4
    const/4 v11, 0x2

    goto :goto_2

    :cond_5
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1
.end method

.method private backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v13, v6, Landroid/util/DisplayMetrics;->densityDpi:I

    const/4 v11, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "itemType=4 AND "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getUserSelectionArg(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz p2, :cond_0

    const-string v6, "homeOnly"

    :goto_0
    move-object/from16 v0, p0

    iget-boolean v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v6, v8}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    if-nez v12, :cond_1

    :goto_1
    return-void

    :cond_0
    const-string v6, "home"

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_3

    const/16 v19, 0x7

    :goto_2
    const/4 v6, -0x1

    :try_start_0
    invoke-interface {v12, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :cond_2
    :goto_3
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v6, 0x0

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v14

    const/4 v6, 0x3

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v17

    const/16 v16, 0x0

    const/4 v10, 0x0

    if-eqz v17, :cond_4

    move-object/from16 v0, p0

    move/from16 v1, v19

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v16

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v10

    :goto_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v10}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoredBackupVersion:I

    const/4 v8, 0x3

    if-lt v6, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v6

    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    throw v6

    :cond_3
    const/16 v19, 0x4

    goto :goto_2

    :cond_4
    :try_start_1
    const-string v6, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "empty intent on appwidget: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_5
    if-eqz v10, :cond_2

    const/4 v6, 0x5

    if-ge v11, v6, :cond_6

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-direct {v0, v13, v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    :cond_7
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    goto/16 :goto_1
.end method

.method private checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J
    .locals 6

    const-wide/32 v4, 0xffff

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-wide v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    const/16 v1, 0x20

    shr-long/2addr v2, v1

    and-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update(I)V

    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/zip/CRC32;->update([B)V

    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    return-wide v2
.end method

.method private dataChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    return-void
.end method

.method private getAppVersion()I
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return v1

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 4

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    iget-wide v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->key:[Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getAppVersion()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    const/4 v1, 0x4

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    return-object v0
.end method

.method private getGridSize([IZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, -0x1

    aput v1, p1, v3

    aput v1, p1, v2

    if-eqz p2, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/launcher3/util/ScreenGridUtilities;->loadCurrentGridSize(Landroid/content/Context;[IZ)V

    :cond_2
    aget v0, p1, v2

    if-eq v0, v1, :cond_3

    aget v0, p1, v3

    if-ne v0, v1, :cond_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    aput v0, p1, v2

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0009

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    aput v0, p1, v3

    goto :goto_0
.end method

.method private getKey(IJ)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    iput-wide p2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->id:J

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private getKey(ILjava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;
    .locals 4

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;-><init>()V

    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    iput-object p2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->checkKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->checksum:J

    return-object v0
.end method

.method private initDeviceProfileData()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "EMPTY_DATABASE_CREATED"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "home_only_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    :cond_0
    const/4 v2, 0x2

    new-array v0, v2, [I

    invoke-direct {p0, v0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getGridSize([IZ)V

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v5

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    invoke-direct {p0, v0, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getGridSize([IZ)V

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v4

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    aget v3, v0, v5

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const-string v3, "com.sec.android.app.launcher.home.defaultpage.prefs"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const-string v3, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    const/4 v3, -0x1

    iput v3, v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    goto :goto_0
.end method

.method private isBackupCompatible(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget-object v1, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v1, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-lez v4, :cond_0

    iget v4, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-gtz v4, :cond_2

    :cond_0
    move v2, v3

    :cond_1
    :goto_0
    return v2

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    iget v5, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-lt v4, v5, :cond_3

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    iget v5, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-ge v4, v5, :cond_1

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private launcherIsReady()Z
    .locals 8

    const/4 v7, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->FAVORITE_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-nez v6, :cond_0

    move v1, v7

    :goto_0
    return v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    if-nez v1, :cond_1

    move v1, v7

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private packFavorite(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;
    .locals 13

    const/4 v12, 0x4

    const/4 v10, 0x0

    new-instance v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v3}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    iput-wide v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    const/16 v10, 0xd

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    const/4 v10, 0x7

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    const/4 v10, 0x5

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    const/4 v10, 0x6

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    const/16 v10, 0xe

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    const/16 v10, 0xf

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    const/16 v10, 0xb

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    const/16 v10, 0x12

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    const/16 v10, 0x10

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    iput-object v9, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    :cond_0
    const/4 v10, 0x2

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v6, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    const/4 v10, 0x0

    :try_start_0
    invoke-static {v7, v10}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const-string v10, "profile"

    invoke-virtual {v6, v10}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    const/16 v10, 0xc

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    if-ne v10, v12, :cond_3

    invoke-interface {p1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    iput v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    const/4 v10, 0x3

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    iput-object v0, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    :cond_2
    :goto_1
    return-object v3

    :catch_0
    move-exception v2

    const-string v10, "LauncherBackupHelper"

    const-string v11, "Invalid intent"

    invoke-static {v10, v11, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_3
    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v11, 0x1

    if-ne v10, v11, :cond_2

    const/4 v8, 0x0

    if-eqz v6, :cond_4

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    const/4 v8, 0x1

    :cond_4
    if-nez v8, :cond_2

    iget v10, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-nez v10, :cond_6

    const/16 v10, 0x9

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    iput-object v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    :cond_5
    const/16 v10, 0xa

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    iput-object v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    :cond_6
    const/16 v10, 0x8

    invoke-interface {p1, v10}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v1

    if-eqz v1, :cond_2

    array-length v10, v1

    if-lez v10, :cond_2

    iput-object v1, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    goto :goto_1
.end method

.method private packIcon(ILandroid/graphics/Bitmap;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;
    .locals 2

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    iput p1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    invoke-static {p2}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    return-object v0
.end method

.method private packScreen(Landroid/database/Cursor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;
    .locals 4

    new-instance v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v0}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    return-object v0
.end method

.method private packWidget(ILandroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;
    .locals 8

    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v5, p2, p3}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v2

    new-instance v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v4}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    invoke-virtual {p2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->label:Ljava/lang/String;

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_0
    iput-boolean v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->configure:Z

    iget v5, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    if-eqz v5, :cond_0

    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    iput-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget v7, v2, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->icon:I

    invoke-virtual {v5, v6, v7}, Lcom/android/launcher3/common/model/IconCache;->getFullResIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v5, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, v5}, Lcom/android/launcher3/util/BitmapUtils;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    iget-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->flattenBitmap(Landroid/graphics/Bitmap;)[B

    move-result-object v6

    iput-object v6, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    iget-object v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iput p1, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    :cond_0
    invoke-virtual {v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getMinSpans()Landroid/graphics/Point;

    move-result-object v3

    iget v5, v3, Landroid/graphics/Point;->x:I

    iput v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    iget v5, v3, Landroid/graphics/Point;->y:I

    iput v5, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    return-object v4

    :cond_1
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private static readCheckedBytes([BI)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    const/4 v2, 0x0

    invoke-static {v1, p0, v2, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[BII)Lcom/google/protobuf/nano/MessageNano;

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    iget-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    new-instance v2, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;

    const-string v3, "checksum does not match"

    invoke-direct {v2, v3}, Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    return-object v2
.end method

.method private readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    .locals 12

    new-instance v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    if-nez p1, :cond_0

    :goto_0
    return-object v5

    :cond_0
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    :try_start_0
    invoke-virtual {v4}, Ljava/io/FileInputStream;->available()I

    move-result v0

    const v9, 0xf4240

    if-ge v0, v9, :cond_3

    new-array v1, v0, [B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v2, 0x0

    const/4 v8, 0x0

    const/4 v6, 0x0

    :goto_1
    if-lez v0, :cond_2

    const/4 v9, 0x1

    :try_start_1
    invoke-virtual {v4, v1, v2, v9}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    if-lez v7, :cond_1

    sub-int/2addr v0, v7

    add-int/2addr v2, v7

    :goto_2
    :try_start_2
    invoke-static {v1, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v9

    invoke-static {v5, v9}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;
    :try_end_2
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v8, 0x1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :try_start_3
    const-string v9, "LauncherBackupHelper"

    const-string v10, "unexpected end of file while reading journal."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    :catch_0
    move-exception v3

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v6, v3

    :try_start_4
    invoke-virtual {v5}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->clear()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_2
    move-exception v3

    :try_start_5
    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    :catch_3
    move-exception v3

    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    if-nez v8, :cond_3

    :try_start_7
    const-string v9, "LauncherBackupHelper"

    const-string v10, "could not find a valid journal"

    invoke-static {v9, v10, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_3
    :try_start_8
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_0

    :catch_4
    move-exception v3

    const-string v9, "LauncherBackupHelper"

    const-string v10, "failed to close the journal"

    invoke-static {v9, v10, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v9

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    :goto_3
    throw v9

    :catch_5
    move-exception v3

    const-string v10, "LauncherBackupHelper"

    const-string v11, "failed to close the journal"

    invoke-static {v10, v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3
.end method

.method private restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackFavorite([BI)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v3, "homeOnly"

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getFavoritesUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :cond_0
    const-string v3, "home"

    goto :goto_0
.end method

.method private restoreIcon(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    array-length v4, v4

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    const-string v5, ""

    iget-wide v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/common/model/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method private restoreProfile(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    if-le v4, v8, :cond_5

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    if-le v4, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    iput-boolean v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->switchDb:Z

    :goto_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    new-array v1, v4, [I

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    iget v6, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    invoke-static {v4, v1, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    if-le v4, v8, :cond_2

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    if-le v4, v8, :cond_2

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->colsHomeOnly:I

    iget v6, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rowsHomeOnly:I

    invoke-static {v4, v1, v5, v6}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-static {v4, v5, v6, v9}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    :cond_2
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v4, v1}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v4

    aget v5, v1, v7

    aget v6, v1, v9

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    :cond_3
    iget-object v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "com.sec.android.app.launcher.home.defaultpage.prefs"

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndex:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    if-eq v4, v8, :cond_4

    const-string v4, "com.sec.android.app.launcher.homeonly.defaultpage.prefs"

    iget v5, v3, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->homeIndexHomeOnly:I

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    :cond_4
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v0, v7}, Lcom/android/launcher3/LauncherAppState;->writeHomeOnlyModeEnabled(Z)V

    goto :goto_1

    :cond_6
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_0

    :cond_7
    iput-boolean v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    goto/16 :goto_0
.end method

.method private restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackScreen([BI)Landroid/content/ContentValues;

    move-result-object v2

    if-eqz p4, :cond_0

    const-string v3, "homeOnly"

    :goto_0
    iget-boolean v4, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIsHomeOnly:Z

    invoke-static {v3, v4}, Lcom/android/launcher3/common/bnr/LauncherBnrHelper;->getWorkspaceScreenUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void

    :cond_0
    const-string v3, "home"

    goto :goto_0
.end method

.method private restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;-><init>()V

    invoke-direct {p0, v1, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;

    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v1, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    const/4 v2, 0x0

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget-object v4, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->data:[B

    array-length v4, v4

    invoke-static {v1, v2, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v1, "LauncherBackupHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to unpack widget icon for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->widgetSizes:Ljava/util/HashSet;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "#"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->minSpanY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    iget-object v2, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->provider:Ljava/lang/String;

    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    iget-object v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->icon:Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;

    iget v4, v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Resource;->dpi:I

    iget-object v5, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Widget;->label:Ljava/lang/String;

    iget-wide v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mUserSerial:J

    invoke-virtual/range {v1 .. v7}, Lcom/android/launcher3/common/model/IconCache;->preloadIcon(Landroid/content/ComponentName;Landroid/graphics/Bitmap;ILjava/lang/String;J)V

    goto :goto_0
.end method

.method private unpackFavorite([BI)Landroid/content/ContentValues;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v8, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    invoke-direct {v8}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;-><init>()V

    invoke-direct {p0, v8, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    const-string v8, "_id"

    iget-wide v10, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->id:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v8, "screen"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->screen:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "container"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellX"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "cellY"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "spanX"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "spanY"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "rank"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->rank:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_2

    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    if-eqz v8, :cond_0

    :try_start_0
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    const-string v9, "com.sec.launcher.action.SHOW_APPS_VIEW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v8, "iconType"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/launcher3/LauncherAppState;->setAppsButtonEnabled(Z)V

    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    const-string v8, "title"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->title:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_3

    const-string v8, "intent"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->intent:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v8, "itemType"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v4

    iget-object v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/UserManagerCompat;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/launcher3/common/compat/UserManagerCompat;->getSerialNumberForUser(Lcom/android/launcher3/common/compat/UserHandleCompat;)J

    move-result-wide v6

    const-string v8, "profileId"

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->itemType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_9

    iget-object v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    const-string v8, "appWidgetProvider"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetProvider:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v8, "appWidgetId"

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->appWidgetId:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v8, "restored"

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanX:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-gt v8, v9, :cond_5

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    iget v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->spanY:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-le v8, v9, :cond_b

    :cond_5
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    new-instance v8, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    const-string v9, "Widget not in screen bounds, aborting restore"

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v8

    :catch_0
    move-exception v0

    const-string v8, "LauncherBackupHelper"

    const-string v9, "Invalid intent"

    invoke-static {v8, v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_6
    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconType:I

    if-nez v8, :cond_7

    const-string v8, "iconPackage"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconPackage:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v8, "iconResource"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->iconResource:Ljava/lang/String;

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v8, "icon"

    iget-object v9, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->icon:[B

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    goto/16 :goto_1

    :cond_8
    const-string v8, "title"

    const-string v9, ""

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_9
    const-string v8, "restored"

    const/4 v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v5, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportFlexibleGrid()Z

    move-result v8

    if-nez v8, :cond_b

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->container:I

    const/16 v9, -0x64

    if-ne v8, v9, :cond_b

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellX:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->cols:I

    if-ge v8, v9, :cond_a

    iget v8, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$Favorite;->cellY:I

    iget-object v9, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    iget v9, v9, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->rows:I

    if-lt v8, v9, :cond_b

    :cond_a
    const/4 v8, 0x0

    iput-boolean v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    new-instance v8, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;

    const-string v9, "Item not in desktop bounds, aborting restore"

    const/4 v10, 0x0

    invoke-direct {v8, p0, v9, v10}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$InvalidBackupException;-><init>(Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;Ljava/lang/String;Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper$1;)V

    throw v8

    :cond_b
    return-object v5
.end method

.method private unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/nano/MessageNano;",
            ">(TT;[BI)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    invoke-static {p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    return-object p1
.end method

.method private unpackScreen([BI)Landroid/content/ContentValues;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    new-instance v2, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    invoke-direct {v2}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;-><init>()V

    invoke-direct {p0, v2, p1, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->unpackProto(Lcom/google/protobuf/nano/MessageNano;[BI)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "_id"

    iget-wide v4, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "screenRank"

    iget v3, v0, Lcom/android/launcher3/common/bnr/google/BackupProtos$Screen;->rank:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    return-object v1
.end method

.method private writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B
    .locals 4

    new-instance v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;

    invoke-direct {v1}, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;-><init>()V

    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    new-instance v0, Ljava/util/zip/CRC32;

    invoke-direct {v0}, Ljava/util/zip/CRC32;-><init>()V

    iget-object v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->payload:[B

    invoke-virtual {v0, v2}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v0}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/launcher3/common/bnr/google/BackupProtos$CheckedMessage;->checksum:J

    invoke-static {v1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v2

    return-object v2
.end method

.method private writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V
    .locals 6

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    const-string v4, "LauncherBackupHelper"

    const-string v5, "failed to write backup journal"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v2, v3

    goto :goto_1
.end method

.method private writeRowToBackup(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V

    return-void
.end method

.method private writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeCheckedBytes(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    array-length v1, v0

    invoke-virtual {p3, p1, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    array-length v1, v0

    invoke-virtual {p3, v0, v1}, Landroid/app/backup/BackupDataOutput;->writeEntityData([BI)I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    return-void
.end method


# virtual methods
.method public performBackup(Landroid/os/ParcelFileDescriptor;Landroid/app/backup/BackupDataOutput;Landroid/os/ParcelFileDescriptor;)V
    .locals 16

    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readJournal(Landroid/os/ParcelFileDescriptor;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v5

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->launcherIsReady()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->dataChanged()V

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v11, :cond_1

    new-instance v11, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v11}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->initDeviceProfileData()V

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/common/model/IconCache;

    move-result-object v11

    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    const-string v11, "LauncherBackupHelper"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "lastBackupTime = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-wide v14, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->t:J

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    const/4 v11, 0x0

    :try_start_0
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;Z)V

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupIcons(Landroid/app/backup/BackupDataOutput;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupFavorites(Landroid/app/backup/BackupDataOutput;Z)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupScreens(Landroid/app/backup/BackupDataOutput;Z)V

    const/4 v11, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v11}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupWidgets(Landroid/app/backup/BackupDataOutput;Z)V

    :cond_2
    new-instance v10, Ljava/util/HashSet;

    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v11, "LauncherBackupHelper"

    const-string v12, "launcher backup has failed"

    invoke-static {v11, v12, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V

    goto/16 :goto_0

    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11, v10}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v12, -0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v12}, Landroid/app/backup/BackupDataOutput;->writeEntityHeader(Ljava/lang/String;I)I

    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v11}, Ljava/util/HashSet;->clear()V

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-nez v11, :cond_7

    iget-object v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-eqz v11, :cond_6

    iget-object v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->profile:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-static {v11}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-static {v12}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    if-eqz v11, :cond_6

    iget v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->backupVersion:I

    const/4 v12, 0x4

    if-ne v11, v12, :cond_6

    iget v11, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;->appVersion:I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getAppVersion()I

    move-result v12

    if-eq v11, v12, :cond_8

    :cond_6
    const/4 v11, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v11, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBackupDataWasUpdated:Z

    if-eqz v11, :cond_3

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mLastBackupRestoreTime:J

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v7

    const-string v11, "#"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v11, v7, v1}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeRowToBackup(Ljava/lang/String;Lcom/google/protobuf/nano/MessageNano;Landroid/app/backup/BackupDataOutput;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_8
    const/4 v11, 0x0

    goto :goto_4
.end method

.method public restoreEntity(Landroid/app/backup/BackupDataInputStream;)V
    .locals 10

    iget-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    if-nez v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    if-nez v6, :cond_2

    new-instance v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    invoke-direct {v6}, Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mDeviceProfileData:Lcom/android/launcher3/common/bnr/google/BackupProtos$DeviceProfileData;

    new-instance v6, Lcom/android/launcher3/common/model/IconCache;

    iget-object v7, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00ca

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    invoke-direct {v6, v7, v8}, Lcom/android/launcher3/common/model/IconCache;-><init>(Landroid/content/Context;I)V

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mIconCache:Lcom/android/launcher3/common/model/IconCache;

    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->initDeviceProfileData()V

    :cond_2
    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->size()I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    array-length v6, v6

    if-ge v6, v2, :cond_3

    new-array v6, v2, [B

    iput-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    :cond_3
    :try_start_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7, v2}, Landroid/app/backup/BackupDataInputStream;->read([BII)I

    move-result v1

    invoke-virtual {p1}, Landroid/app/backup/BackupDataInputStream;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v6, "#"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    const-string v7, "LauncherBackupHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    invoke-direct {p0, v6}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->keyToBackupKey(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " received after "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v6, "LauncherBackupHelper"

    const-string v7, "ignoring unparsable backup entry"

    invoke-static {v6, v7, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    :cond_4
    :try_start_1
    new-instance v4, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    invoke-direct {v4}, Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;-><init>()V

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-static {v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->readCheckedBytes([BI)[B

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->applyJournal(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->isBackupCompatible(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreSuccessful:Z

    invoke-direct {p0, v4}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreProfile(Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    goto/16 :goto_0

    :cond_5
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mExistingKeys:Ljava/util/HashSet;

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_6
    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->backupKeyToKey(Ljava/lang/String;)Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v6, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    packed-switch v6, :pswitch_data_0

    const-string v6, "LauncherBackupHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unknown restore entity type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v5, Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;->type:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mKeys:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x0

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreIcon(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V

    goto/16 :goto_0

    :pswitch_4
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreFavorite(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    :pswitch_5
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    const/4 v7, 0x1

    invoke-direct {p0, v5, v6, v2, v7}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreScreen(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BIZ)V

    goto/16 :goto_0

    :pswitch_6
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->mBuffer:[B

    invoke-direct {p0, v5, v6, v2}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->restoreWidget(Lcom/android/launcher3/common/bnr/google/BackupProtos$Key;[BI)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public writeNewStateDescription(Landroid/os/ParcelFileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->getCurrentStateJournal()Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/common/bnr/google/LauncherBackupHelper;->writeJournal(Landroid/os/ParcelFileDescriptor;Lcom/android/launcher3/common/bnr/google/BackupProtos$Journal;)V

    return-void
.end method
