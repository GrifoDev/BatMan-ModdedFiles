.class public Lcom/android/server/storage/DeviceStorageMonitorService;
.super Lcom/android/server/SystemService;
.source "DeviceStorageMonitorService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/DeviceStorageMonitorService$1;,
        Lcom/android/server/storage/DeviceStorageMonitorService$2;,
        Lcom/android/server/storage/DeviceStorageMonitorService$3;,
        Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;,
        Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;,
        Lcom/android/server/storage/DeviceStorageMonitorService$Shell;,
        Lcom/android/server/storage/DeviceStorageMonitorService$State;
    }
.end annotation


# static fields
.field private static final BOOT_IMAGE_STORAGE_REQUIREMENT:J = 0xfa00000L

.field private static final DEFAULT_CHECK_INTERVAL:J = 0xea60L

.field private static final DEFAULT_LOG_DELTA_BYTES:J = 0x4000000L

.field public static final EXTRA_SEQUENCE:Ljava/lang/String; = "seq"

.field private static final MSG_CHECK:I = 0x1

.field static final OPTION_FORCE_UPDATE:I = 0x1

.field static final SERVICE:Ljava/lang/String; = "devicestoragemonitor"

.field private static final TAG:Ljava/lang/String; = "DeviceStorageMonitorService"

.field private static final TV_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "devicestoragemonitor.tv"

.field private static mExhaustionBytes:J

.field private static mFullBytes:J

.field private static mFullFileNodes:J

.field private static mLastReportedFreeMemTime:J

.field private static mLowBytes:J

.field private static mLowFileNodes:J

.field private static mTotalBytes:J

.field private static mTotalFileNode:J

.field private static mUsableBytes:J

.field private static mUsableFileNode:J


# instance fields
.field private mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

.field private volatile mFnForceLevel:I

.field private final mFnStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mForceLevel:I

.field private final mHandler:Landroid/os/Handler;

.field private mLocalLog:Landroid/util/LocalLog;

.field private final mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

.field private mNotifManager:Landroid/app/NotificationManager;

.field private final mRemoteService:Landroid/os/Binder;

.field private final mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/util/UUID;",
            "Lcom/android/server/storage/DeviceStorageMonitorService$State;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/storage/DeviceStorageMonitorService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/storage/DeviceStorageMonitorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->check()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    sput-wide v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, -0x1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    iput v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iput v2, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$1;

    invoke-static {}, Lcom/android/server/IoThread;->get()Lcom/android/server/IoThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/IoThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$1;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$2;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$2;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$3;

    invoke-direct {v0, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$3;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    return-void
.end method

.method private check()V
    .locals 48

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v7

    const-class v42, Landroid/os/storage/StorageManager;

    move-object/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Landroid/os/storage/StorageManager;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v31

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/StorageManager;->getWritablePrivateVolumes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v41

    :goto_0
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_d

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Landroid/os/storage/VolumeInfo;

    invoke-virtual/range {v40 .. v40}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v18

    invoke-virtual/range {v34 .. v34}, Landroid/os/storage/StorageManager;->getStorageExhaustionBytes()J

    move-result-wide v16

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageFullBytes(Ljava/io/File;)J

    move-result-wide v22

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManager;->getStorageLowBytes(Ljava/io/File;)J

    move-result-wide v26

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sput-wide v14, Lcom/android/server/storage/DeviceStorageMonitorService;->mLastReportedFreeMemTime:J

    sput-wide v16, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    sput-wide v22, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    sput-wide v26, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v42

    const-wide/16 v44, 0x3

    mul-long v44, v44, v26

    const-wide/16 v46, 0x2

    div-long v44, v44, v46

    cmp-long v7, v42, v44

    if-gez v7, :cond_0

    const-string/jumbo v7, "DeviceStorageMonitorService"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "check("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ") freeStorage = "

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v44

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v7, "package"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v30

    check-cast v30, Lcom/android/server/pm/PackageManagerService;

    :try_start_0
    invoke-virtual/range {v40 .. v40}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    const-wide/16 v42, 0x2

    mul-long v42, v42, v26

    const/16 v44, 0x0

    move-object/from16 v0, v30

    move-wide/from16 v1, v42

    move/from16 v3, v44

    invoke-virtual {v0, v7, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->freeStorage(Ljava/lang/String;JI)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_1
    invoke-virtual/range {v40 .. v40}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v35

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;

    move-result-object v32

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v12

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v10

    sput-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    sput-wide v10, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    move-object/from16 v0, v32

    iget v8, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v7, v0, :cond_5

    const/4 v8, -0x1

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    :goto_2
    if-eqz v9, :cond_1

    const-string/jumbo v7, "DeviceStorageMonitorService"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "check("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ") oldLevel:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", newLevel:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " (usableBytes="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ")"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object/from16 v0, v32

    iget-wide v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    move-wide/from16 v42, v0

    sub-long v42, v42, v10

    invoke-static/range {v42 .. v43}, Ljava/lang/Math;->abs(J)J

    move-result-wide v42

    const-wide/32 v44, 0x4000000

    cmp-long v7, v42, v44

    if-gtz v7, :cond_2

    if-eq v8, v9, :cond_3

    :cond_2
    invoke-virtual/range {v35 .. v35}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static/range {v7 .. v13}, Lcom/android/server/EventLogTags;->writeStorageState(Ljava/lang/String;IIJJ)V

    move-object/from16 v0, v32

    iput-wide v10, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    :cond_3
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v31

    invoke-direct {v0, v1, v8, v9, v2}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V

    move-object/from16 v0, v32

    iput v9, v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    new-instance v33, Landroid/os/StatFs;

    move-object/from16 v0, v40

    iget-object v7, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v0, v33

    invoke-direct {v0, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v33 .. v33}, Landroid/os/StatFs;->getTotalFileNode()J

    move-result-wide v36

    invoke-virtual/range {v33 .. v33}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v38

    const-wide/16 v42, 0x64

    div-long v24, v36, v42

    const-wide/16 v42, 0x5

    mul-long v42, v42, v36

    const-wide/16 v44, 0x64

    div-long v28, v42, v44

    sput-wide v24, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    sput-wide v28, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    sput-wide v36, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    sput-wide v38, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService;->findOrCreateFileNodeState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    move-result-object v21

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    const/16 v42, -0x1

    move/from16 v0, v42

    if-eq v7, v0, :cond_a

    const/16 v20, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnForceLevel:I

    move/from16 v19, v0

    :goto_3
    if-eqz v19, :cond_4

    const-string/jumbo v7, "DeviceStorageMonitorService"

    new-instance v42, Ljava/lang/StringBuilder;

    invoke-direct/range {v42 .. v42}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v43, "check("

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v40

    iget-object v0, v0, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    move-object/from16 v43, v0

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ") fn_oldLevel:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ", fn_newLevel:"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, " (usableFileNode="

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    move-object/from16 v0, v42

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v42

    const-string/jumbo v43, ")"

    invoke-virtual/range {v42 .. v43}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v42

    invoke-virtual/range {v42 .. v42}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v42

    move-object/from16 v0, v42

    invoke-static {v7, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v20

    move/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateNotifications_filenode(Landroid/os/storage/VolumeInfo;II)V

    move-object/from16 v0, p0

    move-object/from16 v1, v40

    move/from16 v2, v20

    move/from16 v3, v19

    move/from16 v4, v31

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->updateBroadcasts_filenode(Landroid/os/storage/VolumeInfo;III)V

    move/from16 v0, v19

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    goto/16 :goto_0

    :catch_0
    move-exception v6

    const-string/jumbo v7, "DeviceStorageMonitorService"

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_1

    :cond_5
    cmp-long v7, v10, v22

    if-gtz v7, :cond_6

    const/4 v9, 0x3

    goto/16 :goto_2

    :cond_6
    cmp-long v7, v10, v26

    if-gtz v7, :cond_7

    const/4 v9, 0x2

    goto/16 :goto_2

    :cond_7
    sget-object v7, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    move-object/from16 v0, v35

    invoke-virtual {v7, v0}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_8

    const-wide/32 v42, 0xfa00000

    cmp-long v7, v10, v42

    if-gez v7, :cond_8

    const/4 v9, 0x2

    goto/16 :goto_2

    :cond_8
    cmp-long v7, v10, v16

    if-gtz v7, :cond_9

    const/4 v9, 0x1

    goto/16 :goto_2

    :cond_9
    const/4 v9, 0x0

    goto/16 :goto_2

    :cond_a
    cmp-long v7, v38, v24

    if-gtz v7, :cond_b

    const/16 v19, 0x2

    goto/16 :goto_3

    :cond_b
    cmp-long v7, v38, v28

    if-gtz v7, :cond_c

    const/16 v19, 0x1

    goto/16 :goto_3

    :cond_c
    const/16 v19, 0x0

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    const/16 v42, 0x1

    move/from16 v0, v42

    invoke-virtual {v7, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v7

    if-nez v7, :cond_e

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    move-object/from16 v42, v0

    const/16 v43, 0x1

    invoke-virtual/range {v42 .. v43}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v42

    const-wide/32 v44, 0xea60

    move-object/from16 v0, v42

    move-wide/from16 v1, v44

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_e
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string/jumbo v0, "Device storage monitor service (devicestoragemonitor) commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  force-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Force storage to be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  force-not-low [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Force storage to not be low, freezing storage state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "  reset [-f]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    Unfreeze storage state, returning to current real values."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "    -f: force a storage change broadcast be sent, prints new sequence."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private findOrCreateFileNodeState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    invoke-direct {v0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;)V

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private findOrCreateState(Ljava/util/UUID;)Lcom/android/server/storage/DeviceStorageMonitorService$State;
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    invoke-direct {v0, v2}, Lcom/android/server/storage/DeviceStorageMonitorService$State;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService$State;)V

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private static isBootImageOnDisk()Z
    .locals 6

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/server/pm/InstructionSets;->getAllDexCodeInstructionSets()[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_1

    aget-object v0, v3, v1

    invoke-static {v0}, Ldalvik/system/VMRuntime;->isBootClassPathOnDisk(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "DeviceStorageMonitorService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private updateBroadcasts(Landroid/os/storage/VolumeInfo;III)V
    .locals 14

    const-string/jumbo v11, "DeviceStorageMonitorService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "updateBroadcasts("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") oldLevel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", newLevel:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", seq:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v11, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    return-void

    :cond_0
    new-instance v10, Landroid/os/StatFs;

    iget-object v11, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v10, v11}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_EXHAUSTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_NOT_EXHAUSTION"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v6

    const/4 v11, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_EXHAUSTION"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x5200000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v5

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x5200000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v9

    const/4 v11, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v11

    if-eqz v11, :cond_5

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_LOW"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_2
    :goto_1
    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "android.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v7

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.intent.action.DEVICE_STORAGE_FULL"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v4

    new-instance v11, Landroid/content/Intent;

    const-string/jumbo v12, "com.samsung.intent.action.DEVICE_STORAGE_NOT_FULL"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v12, 0x4000000

    invoke-virtual {v11, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v11

    const-string/jumbo v12, "seq"

    move/from16 v0, p4

    invoke-virtual {v11, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v8

    const/4 v11, 0x3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_FULL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v13, "com.samsung.android.lool"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v4, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_3
    :goto_2
    return-void

    :cond_4
    const/4 v11, 0x1

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_NOT_EXHAUSTION"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v2, v12}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    :cond_5
    const/4 v11, 0x2

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_OK"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v5, v12}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v9, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    :cond_6
    const/4 v11, 0x3

    move/from16 v0, p2

    move/from16 v1, p3

    invoke-static {v11, v0, v1}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "updateBroadcasts("

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") sending intent : ACTION_DEVICE_STORAGE_NOT_FULL"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mUsableBytes : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sget-wide v12, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mUsableFileNode  : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v10}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v3, v12}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v7, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v11

    const-string/jumbo v12, "SEC_FLOATING_FEATURE_SMARTMANAGER_CONFIG_PACKAGE_NAME"

    const-string/jumbo v13, "com.samsung.android.lool"

    invoke-virtual {v11, v12, v13}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v11, v8, v12}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_2
.end method

.method private updateBroadcasts_filenode(Landroid/os/storage/VolumeInfo;III)V
    .locals 8

    const/high16 v7, 0x5200000

    const/4 v6, 0x2

    const-string/jumbo v3, "DeviceStorageMonitorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateBroadcasts_filenode("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ") fn_oldLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", fn_newLevel:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", seq:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    new-instance v2, Landroid/os/StatFs;

    iget-object v3, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.DEVICE_FILENODE_FULL"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "seq"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string/jumbo v4, "com.samsung.intent.action.DEVICE_FILENODE_NOT_FULL "

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "seq"

    invoke-virtual {v3, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-wrap0(III)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcasts_filenode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") sending intent : ACTION_DEVICE_FILENODE_FULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUsableBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUsableFileNode  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-wrap1(III)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateBroadcasts_filenode("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ") sending intent : ACTION_DEVICE_FILENODE_NOT_FULL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mUsableBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", mUsableFileNode  : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/os/StatFs;->getFreeFileNode()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->removeStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private updateNotifications(Landroid/os/storage/VolumeInfo;II)V
    .locals 12

    const v3, 0x10404e1

    const/16 v11, 0x17

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v10

    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap0(III)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v4, "android.os.storage.action.MANAGE_STORAGE"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v4, "android.os.storage.extra.UUID"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const v4, 0x10008000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v4, 0x10404e3

    invoke-virtual {v0, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v9

    sget-object v4, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v4, v10}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/storage/DeviceStorageMonitorService;->isBootImageOnDisk()Z

    move-result v4

    if-eqz v4, :cond_1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_1
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x0

    move v3, v1

    invoke-static/range {v0 .. v5}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v7

    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v1, v0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x1080901

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x10601bc

    invoke-virtual {v0, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, v6}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-string/jumbo v3, "sys"

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v1

    new-instance v3, Landroid/app/Notification$TvExtender;

    invoke-direct {v3}, Landroid/app/Notification$TvExtender;-><init>()V

    const-string/jumbo v4, "devicestoragemonitor.tv"

    invoke-virtual {v3, v4}, Landroid/app/Notification$TvExtender;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$TvExtender;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->extend(Landroid/app/Notification$Extender;)Landroid/app/Notification$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v8, Landroid/app/Notification;->flags:I

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v11, v8, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    const v3, 0x10404e2

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-static {v5, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap1(III)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v10}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v3, v11, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_2
.end method

.method private updateNotifications_filenode(Landroid/os/storage/VolumeInfo;II)V
    .locals 9

    const/16 v8, 0x2d

    const/4 v6, 0x2

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/storage/StorageManager;->convert(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v4

    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-wrap0(III)Z

    move-result v5

    if-eqz v5, :cond_1

    const v5, 0x10404e3

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    const v5, 0x10404e1

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    invoke-direct {v5, v0, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v6, 0x1080901

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    const v6, 0x10601bc

    invoke-virtual {v0, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v6}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v6, v1}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v6, "sys"

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNotifications_filenode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") notifyAsUser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v8, v2, v7}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {v6, p2, p3}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-wrap1(III)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateNotifications_filenode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Landroid/os/storage/VolumeInfo;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") cancelAsUser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/storage/DeviceStorageMonitorService;->loge(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    invoke-virtual {v4}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v6, v8, v7}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method


# virtual methods
.method dumpImpl(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 15

    new-instance v12, Lcom/android/internal/util/IndentingPrintWriter;

    const-string/jumbo v3, "  "

    move-object/from16 v0, p2

    invoke-direct {v12, v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    move-object/from16 v0, p3

    array-length v3, v0

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v3, "Known volumes:"

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const/4 v11, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "Default:"

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v3, "level"

    iget v4, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->level:I

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "lastUsableBytes"

    iget-wide v4, v13, Lcom/android/server/storage/DeviceStorageMonitorService$State;->lastUsableBytes:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v3, "-a"

    const/4 v4, 0x0

    aget-object v4, p3, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v2, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;

    invoke-direct {v2, p0}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;-><init>(Lcom/android/server/storage/DeviceStorageMonitorService;)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    new-instance v9, Landroid/os/ResultReceiver;

    const/4 v4, 0x0

    invoke-direct {v9, v4}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move-object/from16 v7, p3

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :goto_2
    return-void

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_3
    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v11, v3, :cond_5

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/UUID;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mFnStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;

    sget-object v3, Landroid/os/storage/StorageManager;->UUID_DEFAULT:Ljava/util/UUID;

    invoke-virtual {v3, v14}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string/jumbo v3, "Default:"

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()V

    const-string/jumbo v3, "level"

    iget v4, v10, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->level:I

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$FileNodeState;->-wrap2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v3, "mSeq"

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v3, "mForceState"

    iget v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    invoke-static {v4}, Lcom/android/server/storage/DeviceStorageMonitorService$State;->-wrap2(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v3, v4}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v3, "Storage info : "

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mFullBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mLowBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mExhaustionBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mExhaustionBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mTotalBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mUsableBytes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableBytes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mFullFileNodes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mFullFileNodes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mLowFileNodes : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mLowFileNodes:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mTotalFileNode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mTotalFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  mUsableFileNode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-wide v4, Lcom/android/server/storage/DeviceStorageMonitorService;->mUsableFileNode:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    const-string/jumbo v3, "Log history : "

    invoke-virtual {v12, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalLog:Landroid/util/LocalLog;

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v3, v0, v12, v1}, Landroid/util/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    invoke-virtual {v12}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto/16 :goto_2
.end method

.method onShellCommand(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;Ljava/lang/String;)I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x1

    if-nez p2, :cond_0

    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v3

    return v3

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    const-string/jumbo v3, "force-low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x2

    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    :cond_1
    :goto_0
    return v6

    :cond_2
    const-string/jumbo v3, "force-not-low"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iput v6, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "reset"

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/storage/DeviceStorageMonitorService;->parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    invoke-virtual {v3, v4, v7}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mForceLevel:I

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mSeq:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v2

    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, p2}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method public onStart()V
    .locals 9

    const/4 v8, 0x1

    invoke-virtual {p0}, Lcom/android/server/storage/DeviceStorageMonitorService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v3, Landroid/app/NotificationManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationManager;

    iput-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v3, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-direct {v3}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;-><init>()V

    iput-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mCacheFileDeletedObserver:Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;

    invoke-virtual {v3}, Lcom/android/server/storage/DeviceStorageMonitorService$CacheFileDeletedObserver;->startWatching()V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "android.software.leanback"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mNotifManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    const-string/jumbo v5, "devicestoragemonitor.tv"

    const v6, 0x1040294

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x4

    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    :cond_0
    const-string/jumbo v3, "devicestoragemonitor"

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mRemoteService:Landroid/os/Binder;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorInternal;

    iget-object v4, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mLocalService:Lcom/android/server/storage/DeviceStorageMonitorInternal;

    invoke-virtual {p0, v3, v4}, Lcom/android/server/storage/DeviceStorageMonitorService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/storage/DeviceStorageMonitorService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v8}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method parseOptions(Lcom/android/server/storage/DeviceStorageMonitorService$Shell;)I
    .locals 3

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/storage/DeviceStorageMonitorService$Shell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string/jumbo v2, "-f"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method
