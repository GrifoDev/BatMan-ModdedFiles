.class public Lcom/android/server/FDCloseObserver;
.super Ljava/lang/Object;
.source "FDCloseObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/FDCloseObserver$1;,
        Lcom/android/server/FDCloseObserver$2;
    }
.end annotation


# static fields
.field static final FD_LOG_PATH:Ljava/lang/String; = "/data/log/fd_log.txt"

.field static final FINALIZER:Ljava/lang/String; = "FinalizerDaemon"

.field static final KERNEL_FDC_UEVENT:Ljava/lang/String; = "DEVPATH=/devices/virtual/debug/invalid_fdc"

.field static final KERNEL_FDETECT_DBGLEVEL_NODE:Ljava/lang/String; = "/sys/module/sec_fd_detect/parameters/dbg_mode"

.field static final KERNEL_FDETECT_FDMONPID_NODE:Ljava/lang/String; = "/sys/module/sec_fd_detect/parameters/fdmon_pid"

.field static final KERNEL_FDETECT_SYSPID_NODE:Ljava/lang/String; = "/sys/module/sec_fd_detect/parameters/sys_pid"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final fdCloseEventObserver:Landroid/os/UEventObserver;

.field private isBootCompleted:Z

.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private notiStr:Ljava/lang/String;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/FDCloseObserver;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/FDCloseObserver;->isBootCompleted:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/FDCloseObserver;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FDCloseObserver;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/FDCloseObserver;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/FDCloseObserver;->notiStr:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/FDCloseObserver;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/FDCloseObserver;->isBootCompleted:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/FDCloseObserver;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/FDCloseObserver;->notiStr:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/FDCloseObserver;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/FDCloseObserver;->notifyAlarm(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/FDCloseObserver;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/FDCloseObserver;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/FDCloseObserver;->isBootCompleted:Z

    iput-object v1, p0, Lcom/android/server/FDCloseObserver;->notiStr:Ljava/lang/String;

    new-instance v0, Lcom/android/server/FDCloseObserver$1;

    invoke-direct {v0, p0}, Lcom/android/server/FDCloseObserver$1;-><init>(Lcom/android/server/FDCloseObserver;)V

    iput-object v0, p0, Lcom/android/server/FDCloseObserver;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/FDCloseObserver$2;

    invoke-direct {v0, p0}, Lcom/android/server/FDCloseObserver$2;-><init>(Lcom/android/server/FDCloseObserver;)V

    iput-object v0, p0, Lcom/android/server/FDCloseObserver;->fdCloseEventObserver:Landroid/os/UEventObserver;

    iput-object p1, p0, Lcom/android/server/FDCloseObserver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private notifyAlarm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    sget-object v2, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Called notifyAlarm : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/FDCloseObserver;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    new-instance v3, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v3}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v3, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/FDCloseObserver;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    const/16 v3, 0x26fd

    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method


# virtual methods
.method public prepare()V
    .locals 17

    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "prepare"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v13, Lcom/android/server/FDCloseObserver$3;

    const-string/jumbo v14, "FDIntentRegister"

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v14}, Lcom/android/server/FDCloseObserver$3;-><init>(Lcom/android/server/FDCloseObserver;Ljava/lang/String;)V

    invoke-virtual {v13}, Lcom/android/server/FDCloseObserver$3;->start()V

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v12

    :try_start_0
    new-instance v9, Ljava/io/File;

    const-string/jumbo v13, "/sys/module/sec_fd_detect/parameters/sys_pid"

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write to sys_pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "/proc/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "/task"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    move-result-object v11

    const/4 v13, 0x0

    array-length v14, v11
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v2, v1

    :goto_1
    if-ge v13, v14, :cond_7

    :try_start_3
    aget v10, v11, v13

    new-instance v9, Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "/proc/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/task/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, "/comm"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v9, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    const-string/jumbo v15, "FinalizerDaemon"

    invoke-virtual {v15, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    new-instance v9, Ljava/io/File;

    const-string/jumbo v13, "/sys/module/sec_fd_detect/parameters/fdmon_pid"

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v3, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write to fdmon_pid : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v4, v3

    :goto_3
    :try_start_7
    const-string/jumbo v13, "0x494d"

    const-string/jumbo v14, "ro.debug_level"

    const-string/jumbo v15, "0x4f4c"

    invoke-static {v14, v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    new-instance v9, Ljava/io/File;

    const-string/jumbo v13, "/sys/module/sec_fd_detect/parameters/dbg_mode"

    invoke-direct {v9, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v13, Ljava/io/FileWriter;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v8, :cond_4

    :try_start_8
    const-string/jumbo v13, "1"

    :goto_4
    invoke-virtual {v3, v13}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "write to dbg_mode : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :goto_5
    :try_start_9
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/FDCloseObserver;->fdCloseEventObserver:Landroid/os/UEventObserver;

    const-string/jumbo v14, "DEVPATH=/devices/virtual/debug/invalid_fdc"

    invoke-virtual {v13, v14}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const-string/jumbo v13, "sys.fdcloseobs"

    const-string/jumbo v14, "1"

    invoke-static {v13, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v1, :cond_0

    :try_start_a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    :cond_1
    :goto_6
    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "prepare done"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catch_0
    move-exception v7

    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/16 :goto_0

    :catch_1
    move-exception v6

    move-object v3, v4

    :goto_7
    :try_start_c
    sget-object v13, Lcom/android/server/FDCloseObserver;->TAG:Ljava/lang/String;

    const-string/jumbo v14, "Not support FDCloseObserver!"

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v1, :cond_2

    :try_start_d
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_2
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_2

    goto :goto_6

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_3
    move-exception v7

    :try_start_e
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto/16 :goto_2

    :catch_4
    move-exception v6

    goto :goto_7

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move-object v2, v1

    goto/16 :goto_1

    :cond_4
    :try_start_f
    const-string/jumbo v13, "0"
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_5
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_4

    :catch_5
    move-exception v7

    :try_start_10
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception v13

    :goto_8
    if-eqz v1, :cond_5

    :try_start_11
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    :cond_6
    :goto_9
    throw v13

    :catch_6
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catch_7
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    :catchall_1
    move-exception v13

    move-object v3, v4

    goto :goto_8

    :catchall_2
    move-exception v13

    move-object v3, v4

    move-object v1, v2

    goto :goto_8

    :catch_8
    move-exception v6

    move-object v3, v4

    move-object v1, v2

    goto :goto_7

    :cond_7
    move-object v1, v2

    goto/16 :goto_3
.end method
