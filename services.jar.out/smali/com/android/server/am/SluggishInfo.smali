.class public Lcom/android/server/am/SluggishInfo;
.super Ljava/lang/Object;
.source "SluggishInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
    }
.end annotation


# static fields
.field private static CurrentLocale:Ljava/util/Locale; = null

.field private static final DATE_FORMAT_PATTERN:Ljava/lang/String; = "MM-dd HH:mm:ss.SSS"

.field private static DEBUG:Z = false

.field private static final DEFAULT_MAXIMUM_LOG_COUNT:I = 0x3e8

.field private static DateFormat:Ljava/text/SimpleDateFormat; = null

.field public static ENABLE:Z = false

.field private static FLAG_DHA:Z = false

.field private static FLAG_MEMINFO:Z = false

.field private static FLAG_VMSTAT:Z = false

.field private static LogList:Ljava/util/LinkedList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static MAXIMUM_LOG_COUNT:I = 0x0

.field private static final MSG_ADD_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SluggishInfo"

.field private static final TypeDHA:[Ljava/lang/String;

.field private static final TypeMeminfo:[Ljava/lang/String;

.field private static final TypeVmstat:[Ljava/lang/String;

.field private static final UNKNOWN:I = -0x1

.field private static instance:Lcom/android/server/am/SluggishInfo;

.field private static numCached:I

.field private static numCachedHiddenProcs:I

.field private static numEmpty:I

.field private static numNonCachedProcs:I


# instance fields
.field private final mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Lcom/android/server/am/SluggishInfo;
    .locals 1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    return-object v0
.end method

.method static synthetic -wrap0(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->addLog(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, -0x1

    const/4 v3, 0x0

    const/4 v2, 0x1

    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    const/16 v0, 0x3e8

    sput v0, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    sput-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    sput-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    sput-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->Reset()V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SluggishInfo"

    const-string/jumbo v1, "SluggishInfo static initialize"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initDateFormat()V

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initSluggishInfo()V

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "MemFree"

    aput-object v1, v0, v3

    const-string/jumbo v1, "Cached"

    aput-object v1, v0, v2

    const-string/jumbo v1, "SwapFree"

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    sput v4, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput v4, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput v4, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput v4, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "numCached"

    aput-object v1, v0, v3

    const-string/jumbo v1, "numEmpty"

    aput-object v1, v0, v2

    const-string/jumbo v1, "numCachedHiddenProcs"

    aput-object v1, v0, v5

    const-string/jumbo v1, "numNonCachedProcs"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "pgpgin"

    aput-object v1, v0, v3

    const-string/jumbo v1, "pgmajfault"

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_kswapd_dma"

    aput-object v1, v0, v5

    const-string/jumbo v1, "pgsteal_kswapd_normal"

    aput-object v1, v0, v6

    const-string/jumbo v1, "pgsteal_kswapd_movable"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_dma"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_normal"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "pgsteal_direct_movable"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "allocstall"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "compact_stall"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SluggishInfo"

    const-string/jumbo v1, "SluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string/jumbo v1, "SluggishInfo"

    const/16 v2, 0xa

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    iget-object v1, p0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1, p0}, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;-><init>(Lcom/android/server/am/SluggishInfo;Landroid/os/Looper;Lcom/android/server/am/SluggishInfo;)V

    iput-object v0, p0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    return-void
.end method

.method private static Clear()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SluggishInfo"

    const-string/jumbo v1, "Clear()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    :cond_1
    sget-object v0, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method private static Clear(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->Clear()V

    const-string/jumbo v0, "CLEAR SLUGGISH INFO LOG"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private static Reset()V
    .locals 8

    const/16 v7, 0x3e8

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SluggishInfo"

    const-string/jumbo v5, "Reset()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v4, "0x4f4c"

    const-string/jumbo v5, "ro.debug_level"

    const-string/jumbo v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "sys.config.slginfo_enable"

    const-string/jumbo v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v4, "false"

    const-string/jumbo v5, "sys.config.slginfo_enable"

    const-string/jumbo v6, "Unknown"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v3, :cond_1

    if-eqz v2, :cond_3

    :cond_1
    sput-boolean v3, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    :goto_0
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "sys.config.slginfo_debug"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    :try_start_0
    const-string/jumbo v4, "sys.config.slginfo_max_count"

    const/16 v5, 0x3e8

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const-string/jumbo v4, "true"

    const-string/jumbo v5, "sys.config.slginfo_meminfo"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "sys.config.slginfo_dha"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    const-string/jumbo v4, "true"

    const-string/jumbo v5, "sys.config.slginfo_vmstat"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->isAvailableModel()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    :cond_2
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->refreshSysprop()V

    return-void

    :cond_3
    if-eqz v1, :cond_4

    const/4 v4, 0x0

    :goto_2
    sput-boolean v4, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    goto :goto_0

    :cond_4
    const/4 v4, 0x1

    goto :goto_2

    :catch_0
    move-exception v0

    sput v7, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    goto :goto_1
.end method

.method private static Reset(Ljava/io/PrintWriter;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->Reset()V

    const-string/jumbo v0, "RESET SLUGGISH INFO CONFIG"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static declared-synchronized addEndLaunchLog(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SluggishInfo_addEndLaunchLog()"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[E] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->addLaunchLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized addLaunchLog(Ljava/lang/String;)V
    .locals 6

    const-class v3, Lcom/android/server/am/SluggishInfo;

    monitor-enter v3

    :try_start_0
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    if-nez p0, :cond_1

    :cond_0
    monitor-exit v3

    return-void

    :cond_1
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "SluggishInfo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "addLaunchLog() - log : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v2, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v2, v2, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v2, :cond_6

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->initSluggishInfo()V

    :cond_4
    sget-object v2, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v2, v2, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, p0}, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    sget-object v2, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v2, v2, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;->sendMessage(Landroid/os/Message;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string/jumbo v2, "SluggishInfo"

    const-string/jumbo v4, "addLaunchLog() - failed to send Message"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit v3

    return-void

    :cond_6
    :try_start_2
    sget-object v2, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v2, v2, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_4

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static declared-synchronized addLog(Ljava/lang/String;)V
    .locals 12

    const-class v7, Lcom/android/server/am/SluggishInfo;

    monitor-enter v7

    :try_start_0
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v6, :cond_0

    if-nez p0, :cond_1

    :cond_0
    monitor-exit v7

    return-void

    :cond_1
    :try_start_1
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string/jumbo v6, "SluggishInfo"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "addLog() - log : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v6, "SluggishInfo_addLog()"

    const-wide/16 v8, 0x40

    invoke-static {v8, v9, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    sget-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v6, :cond_3

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    sput-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    :cond_3
    sget-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->size()I

    move-result v6

    sget v8, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    if-ne v6, v8, :cond_4

    sget-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v6}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_4
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    sget-object v6, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    if-eq v5, v6, :cond_6

    :cond_5
    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentStat()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v6, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    if-eqz v6, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    sget-object v6, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v6, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_7

    const-wide/16 v8, 0x40

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_7
    monitor-exit v7

    return-void

    :cond_8
    :try_start_4
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "00-00 00:00:00.000 "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_5
    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v8, "addLog() - ERROR"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    :catch_1
    move-exception v2

    :try_start_6
    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v8, "addLog() - DateFormat ERROR"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v4

    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v8, "addLog() - failed to remove element in LogList"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/util/NoSuchElementException;->printStackTrace()V

    goto :goto_1

    :catch_3
    move-exception v3

    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v8, "addLog() - ERROR"

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1
.end method

.method static declared-synchronized addStartLaunchLog(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/android/server/am/SluggishInfo;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    if-nez p0, :cond_1

    :cond_0
    monitor-exit v1

    return-void

    :cond_1
    :try_start_1
    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "SluggishInfo_addStartLaunchLog()"

    const-wide/16 v2, 0x40

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[S] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->addLaunchLog(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_3

    const-wide/16 v2, 0x40

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static convertIntArrToString([I)Ljava/lang/String;
    .locals 6

    const-wide/16 v4, 0x40

    if-nez p0, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SluggishInfo_convertIntArrToString()"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    aget v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method static dump(Ljava/io/PrintWriter;)V
    .locals 10

    const-wide/16 v8, 0x40

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "SluggishInfo"

    const-string/jumbo v5, "dump()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    const-string/jumbo v4, "SLUGGISH INFO (dumpsys activity slginfo)"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "==================================================="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " ENABLE:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " DEBUG:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " MAXIMUM_LOG_COUNT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " FLAG_MEMINFO:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " FLAG_DHA:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " FLAG_VMSTAT:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "==================================================="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-nez v4, :cond_2

    return-void

    :cond_2
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string/jumbo v4, "SluggishInfo_dump()"

    const-wide/16 v6, 0x40

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    const/4 v3, 0x1

    :cond_3
    const-string/jumbo v4, " DataFormat : "

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_4
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-eqz v4, :cond_5

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeDHA:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_5
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getTypeString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "==================================================="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    if-nez v4, :cond_7

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    :cond_7
    sget-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    if-eqz v2, :cond_9

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v4

    if-eqz v4, :cond_a

    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v4, "SluggishInfo"

    const-string/jumbo v5, "dump() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/util/NoSuchElementException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    const-string/jumbo v4, "SluggishInfo"

    const-string/jumbo v5, "dump() - ERROR"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    if-eqz v3, :cond_8

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_8
    return-void

    :cond_9
    :try_start_3
    const-string/jumbo v4, "SluggishInfo"

    const-string/jumbo v5, "dump() - LogList is not available, reset LogList"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    sput-object v4, Lcom/android/server/am/SluggishInfo;->LogList:Ljava/util/LinkedList;

    :cond_a
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    const-string/jumbo v4, "==================================================="

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v4, "END OF SLUGGISH INFO"

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1
.end method

.method static executeCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 12

    const-wide/16 v10, 0x40

    const/4 v8, 0x1

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-void

    :cond_1
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_2

    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executeCommand() - cmd : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v5, "SluggishInfo_executeCommand()"

    invoke-static {v10, v11, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    const-string/jumbo v5, "slginfo"

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    :try_start_0
    const-string/jumbo v5, "slginfo_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e

    const-string/jumbo v5, "slginfo_"

    const-string/jumbo v6, ""

    invoke-virtual {p1, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "="

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    if-ne v5, v8, :cond_6

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "CLEAR"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    :goto_0
    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->dump(Ljava/io/PrintWriter;)V

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_4

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_4
    return-void

    :cond_5
    const/4 v5, 0x0

    :try_start_1
    aget-object v5, v4, v5

    const-string/jumbo v6, "RESET"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Reset(Ljava/io/PrintWriter;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v5, "SluggishInfo"

    const-string/jumbo v6, "executeCommand() - ERROR"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_6
    :try_start_2
    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_d

    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "ENABLE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string/jumbo v5, "true"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change ENABLE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_7
    :goto_1
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->refreshSysprop()V

    goto :goto_0

    :cond_8
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "DEBUG"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    const-string/jumbo v5, "true"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change DEBUG:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "MAXIMUM_LOG_COUNT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v5

    if-eqz v5, :cond_a

    const/4 v5, 0x1

    :try_start_3
    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    sput v5, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change MAXIMUM_LOG_COUNT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executeCommand() - ERROR parseInt : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v4, v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown value : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_a
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "FLAG_MEMINFO"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const-string/jumbo v5, "true"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change FLAG_MEMINFO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_1

    :cond_b
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "FLAG_DHA"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    const-string/jumbo v5, "true"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change FLAG_MEMINFO:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_1

    :cond_c
    const/4 v5, 0x0

    aget-object v5, v4, v5

    const-string/jumbo v6, "FLAG_VMSTAT"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string/jumbo v5, "true"

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "change FLAG_VMSTAT:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/server/am/SluggishInfo;->Clear(Ljava/io/PrintWriter;)V

    goto/16 :goto_1

    :cond_d
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executeCommand() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unknown command : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "executeCommand() - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method

.method private static getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const-wide/16 v6, 0x40

    const/4 v4, 0x0

    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    return-object v4

    :cond_1
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "SluggishInfo_getCommonLines()"

    invoke-static {v6, v7, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_2
    array-length v0, p0

    array-length v4, p0

    new-array v1, v4, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    array-length v4, p1

    if-ge v2, v4, :cond_6

    if-lez v0, :cond_6

    const/4 v3, 0x0

    :goto_1
    array-length v4, p0

    if-ge v3, v4, :cond_5

    if-lez v0, :cond_5

    aget-object v4, v1, v3

    if-eqz v4, :cond_4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    aget-object v4, p1, v2

    aget-object v5, p0, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget-object v4, p1, v2

    aput-object v4, v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_7

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V

    :cond_7
    return-object v1
.end method

.method private static getCurrentDHAStat()[I
    .locals 6

    const-wide/16 v4, 0x40

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SluggishInfo_getCurrentDHAStat()"

    invoke-static {v4, v5, v1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [I

    sget v1, Lcom/android/server/am/SluggishInfo;->numCached:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    const/4 v2, 0x1

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    const/4 v2, 0x2

    aput v1, v0, v2

    sget v1, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    const/4 v2, 0x3

    aput v1, v0, v2

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_1

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    return-object v0
.end method

.method private static getCurrentMeminfo()[I
    .locals 10

    const-wide/16 v8, 0x40

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SluggishInfo_getCurrentMeminfo()"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "/proc/meminfo"

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    :try_start_0
    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/android/server/am/SluggishInfo;->TypeMeminfo:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aget-object v4, v0, v3

    const-string/jumbo v5, "kB"

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SluggishInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCurrentMeminfo() - ERROR parseInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_2

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-object v1
.end method

.method private static getCurrentStat()Ljava/lang/String;
    .locals 18

    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    :cond_0
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    if-eqz v14, :cond_2

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_1
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentMeminfo()[I

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(meminfo_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_3
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentDHAStat()[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(dha_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    if-eqz v14, :cond_6

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_5

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v12

    :cond_5
    invoke-static {}, Lcom/android/server/am/SluggishInfo;->getCurrentVmstat()[I

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/am/SluggishInfo;->convertIntArrToString([I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_6

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long v14, v6, v12

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "(vmstat_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms) "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    sget-boolean v14, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v14, :cond_7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sub-long v14, v0, v2

    long-to-double v14, v14

    const-wide v16, 0x412e848000000000L    # 1000000.0

    div-double v8, v14, v16

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "(total_Took: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " ms)"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    :cond_7
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14
.end method

.method private static getCurrentVmstat()[I
    .locals 10

    const-wide/16 v8, 0x40

    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "SluggishInfo_getCurrentVmstat()"

    invoke-static {v8, v9, v4}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getUnknownValueArray([Ljava/lang/String;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    const-string/jumbo v4, "/proc/vmstat"

    invoke-static {v4}, Lcom/android/server/am/SluggishInfo;->getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    sget-object v4, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    invoke-static {v4, v0}, Lcom/android/server/am/SluggishInfo;->getCommonLines([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v3, 0x0

    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_1

    :try_start_0
    aget-object v4, v0, v3

    sget-object v5, Lcom/android/server/am/SluggishInfo;->TypeVmstat:[Ljava/lang/String;

    aget-object v5, v5, v3

    const-string/jumbo v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v1, v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v4, "SluggishInfo"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getCurrentVmstat() - ERROR parseInt : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    :cond_1
    sget-boolean v4, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v4, :cond_2

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-object v1
.end method

.method private static getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;
    .locals 12

    const-wide/16 v10, 0x40

    const/4 v8, 0x0

    if-nez p0, :cond_0

    return-object v8

    :cond_0
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "SluggishInfo_getLinesFromFile()"

    invoke-static {v10, v11, v6}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    :try_start_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    :goto_0
    invoke-virtual {p0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v7, "getLinesFromBufferedReader() - ERROR readLine "

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_2

    invoke-static {v10, v11}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    return-object v8

    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    sget-boolean v6, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v6, :cond_4

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    return-object v5

    :catch_1
    move-exception v3

    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v7, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    :catch_2
    move-exception v2

    const-string/jumbo v6, "SluggishInfo"

    const-string/jumbo v7, "getLinesFromBufferedReader() - ERROR"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/ArrayStoreException;->printStackTrace()V

    goto :goto_1
.end method

.method private static getLinesFromFile(Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const-wide/16 v8, 0x40

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "SluggishInfo_getLinesFromFile()"

    invoke-static {v8, v9, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v1}, Lcom/android/server/am/SluggishInfo;->getLinesFromBufferedReader(Ljava/io/BufferedReader;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_1

    const-wide/16 v6, 0x40

    invoke-static {v6, v7}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v0

    :catch_0
    move-exception v3

    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getStringFromFile() - ERROR IOException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    sget-boolean v5, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v5, :cond_2

    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    :cond_2
    const/4 v5, 0x0

    return-object v5

    :catch_1
    move-exception v2

    const-string/jumbo v5, "SluggishInfo"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getStringFromFile() - ERROR FileNotFoundException : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static getTypeString([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static getUnknownValueArray([Ljava/lang/String;)[I
    .locals 6

    const-wide/16 v4, 0x40

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    :cond_0
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SluggishInfo_getUnknownValueArray()"

    invoke-static {v4, v5, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_1
    array-length v2, p0

    new-array v0, v2, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    const/4 v2, -0x1

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_3

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    :cond_3
    return-object v0
.end method

.method private static initDateFormat()V
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/SluggishInfo;->initDateFormat(Ljava/util/Locale;)V

    return-void
.end method

.method private static initDateFormat(Ljava/util/Locale;)V
    .locals 6

    const/4 v5, 0x0

    if-nez p0, :cond_0

    return-void

    :cond_0
    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "SluggishInfo"

    const-string/jumbo v3, "initDateFormat()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object p0, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    :try_start_0
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v3, "MM-dd HH:mm:ss.SSS"

    sget-object v4, Lcom/android/server/am/SluggishInfo;->CurrentLocale:Ljava/util/Locale;

    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v2, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v2, "SluggishInfo"

    const-string/jumbo v3, "initDateFormat() - ERROR"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    sput-object v5, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0

    :catch_1
    move-exception v1

    const-string/jumbo v2, "SluggishInfo"

    const-string/jumbo v3, "initDateFormat() - ERROR"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    sput-object v5, Lcom/android/server/am/SluggishInfo;->DateFormat:Ljava/text/SimpleDateFormat;

    goto :goto_0
.end method

.method private static initSluggishInfo()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SluggishInfo"

    const-string/jumbo v1, "initSluggishInfo()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_3

    :cond_1
    :goto_0
    new-instance v0, Lcom/android/server/am/SluggishInfo;

    invoke-direct {v0}, Lcom/android/server/am/SluggishInfo;-><init>()V

    sput-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    :cond_2
    return-void

    :cond_3
    sget-object v0, Lcom/android/server/am/SluggishInfo;->instance:Lcom/android/server/am/SluggishInfo;

    iget-object v0, v0, Lcom/android/server/am/SluggishInfo;->mHandler:Lcom/android/server/am/SluggishInfo$SluggishInfoHandler;

    if-nez v0, :cond_2

    goto :goto_0
.end method

.method private static isAvailableModel()Z
    .locals 3

    const-string/jumbo v1, "ssrm_dream2l_xx"

    const-string/jumbo v2, "_j3pop"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method static refreshDHAStatForSluggishInfo(IIII)V
    .locals 4

    const-wide/16 v2, 0x40

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SluggishInfo_refreshDHAStatForSluggishInfo()"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :cond_0
    sput p0, Lcom/android/server/am/SluggishInfo;->numCached:I

    sput p1, Lcom/android/server/am/SluggishInfo;->numEmpty:I

    sput p2, Lcom/android/server/am/SluggishInfo;->numCachedHiddenProcs:I

    sput p3, Lcom/android/server/am/SluggishInfo;->numNonCachedProcs:I

    sget-boolean v0, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v0, :cond_1

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    :cond_1
    return-void

    :cond_2
    return-void
.end method

.method private static refreshSysprop()V
    .locals 3

    sget-boolean v1, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "SluggishInfo"

    const-string/jumbo v2, "refreshSysprop()"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    const-string/jumbo v1, "sys.config.slginfo_enable"

    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->ENABLE:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sys.config.slginfo_debug"

    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->DEBUG:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sys.config.slginfo_max_count"

    sget v2, Lcom/android/server/am/SluggishInfo;->MAXIMUM_LOG_COUNT:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sys.config.slginfo_meminfo"

    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_MEMINFO:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sys.config.slginfo_dha"

    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_DHA:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "sys.config.slginfo_vmstat"

    sget-boolean v2, Lcom/android/server/am/SluggishInfo;->FLAG_VMSTAT:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SluggishInfo"

    const-string/jumbo v2, "refreshSysprop() - ERROR"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method
