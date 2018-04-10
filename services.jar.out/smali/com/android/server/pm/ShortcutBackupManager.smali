.class public Lcom/android/server/pm/ShortcutBackupManager;
.super Ljava/lang/Object;
.source "ShortcutBackupManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/ShortcutBackupManager$1;,
        Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;
    }
.end annotation


# static fields
.field static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.wssnps.permission.COM_WSSNPS"

.field static final DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

.field private static final FAIL:I = 0x1

.field static final REQUEST_BACKUP_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT_INNER"

.field static final REQUEST_RESTORE_SHORTCUT_INNER:Ljava/lang/String; = "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT_INNER"

.field private static final RESPONSE_BACKUP_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

.field private static final RESPONSE_RESTORE_SHORTCUT:Ljava/lang/String; = "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

.field private static final SUCCESS:I = 0x0

.field static final ShortcutBackupBitmapDir:Ljava/lang/String; = "/data/misc/shortcutbr/bitmaps"

.field static final ShortcutBackupDecryptName:Ljava/lang/String; = "shortcut.de"

.field static final ShortcutBackupDirPath:Ljava/lang/String; = "/data/misc/shortcutbr"

.field static final ShortcutBackupFileName:Ljava/lang/String; = "shortcut.br"

.field static final ShortcutCacheDir:Ljava/lang/String; = "/cache/shortcutbr"

.field static final TAG:Ljava/lang/String; = "ShortcutBackupManager"


# instance fields
.field private cipher:Ljavax/crypto/Cipher;

.field private final mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

.field final mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

.field final mContext:Landroid/content/Context;

.field final mHandler:Landroid/os/Handler;

.field private final mService:Lcom/android/server/pm/ShortcutService;

.field private salt:[B

.field private secretKey:Ljavax/crypto/spec/SecretKeySpec;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/ShortcutBackupManager;->doRestoreShortcut(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/pm/ShortcutBackupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBackupManager;->disConnect()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutBackupManager;->doBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/pm/ShortcutBackupManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBackupManager;->doRemoveBackupDir()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutBackupManager;->doRestoreSmartSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/pm/ShortcutBackupManager;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v1, "com.android.defcontainer"

    const-string/jumbo v2, "com.android.defcontainer.DefaultContainerService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/pm/ShortcutBackupManager;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/pm/ShortcutService;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;-><init>(Lcom/android/server/pm/ShortcutBackupManager;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    new-instance v0, Lcom/android/server/pm/ShortcutBackupManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/ShortcutBackupManager$1;-><init>(Lcom/android/server/pm/ShortcutBackupManager;)V

    iput-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mService:Lcom/android/server/pm/ShortcutService;

    iput-object p3, p0, Lcom/android/server/pm/ShortcutBackupManager;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_BACKUP_SHORTCUT_INNER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v0, "com.samsung.android.intent.action.REQUEST_RESTORE_SHORTCUT_INNER"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupRestoreReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string/jumbo v4, "com.wssnps.permission.COM_WSSNPS"

    iget-object v5, p0, Lcom/android/server/pm/ShortcutBackupManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method private connectToService(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string/jumbo v0, "ShortcutBackupManager"

    const-string/jumbo v1, "Trying to bind to DefaultContainerService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sget-object v1, Lcom/android/server/pm/ShortcutBackupManager;->DEFAULT_CONTAINER_COMPONENT:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v6

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    sget-object v4, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v0, v6, v1, v2, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    if-nez p1, :cond_2

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v3

    :cond_2
    if-ne p1, v2, :cond_1

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_RESTORE_SHORTCUT"

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private copy(Ljava/io/File;Ljava/io/File;)V
    .locals 4

    const-string/jumbo v1, "ShortcutBackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Copy "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " To "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v1, "ShortcutBackupManager"

    const-string/jumbo v2, "src and dst must not be null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutBackupManager;->copyDirectory(Ljava/io/File;Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/ShortcutBackupManager;->copyFile(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShortcutBackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private copyDirectory(Ljava/io/File;Ljava/io/File;)Z
    .locals 7

    const/4 v3, 0x0

    const-string/jumbo v4, "ShortcutBackupManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Copy "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " To "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string/jumbo v4, "ShortcutBackupManager"

    const-string/jumbo v5, "src and dst must not be null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    const-string/jumbo v4, "ShortcutBackupManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "src is not exists : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_3

    const-string/jumbo v4, "ShortcutBackupManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "make backupdir "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    :cond_3
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_4

    aget-object v0, v1, v3

    new-instance v5, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v0, v5}, Lcom/android/server/pm/ShortcutBackupManager;->copy(Ljava/io/File;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string/jumbo v3, "ShortcutBackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 v3, 0x1

    return v3
.end method

.method private copyFile(Ljava/io/File;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Copying "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1, p2}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to copy "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1a4

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method private decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    const/16 v2, 0x10

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->salt:[B

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->salt:[B

    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutBackupManager;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBackupManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherInputStream;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherInputStream;-><init>(Ljava/io/InputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method

.method private deleteDirectory(Ljava/io/File;)Z
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v3, "ShortcutBackupManager"

    const-string/jumbo v4, "path is null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string/jumbo v3, "ShortcutBackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "path is not exists : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    const-string/jumbo v3, "ShortcutBackupManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "delete path = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_4

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_4

    aget-object v0, v1, v2

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutBackupManager;->deleteDirectory(Ljava/io/File;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    move-result v2

    return v2
.end method

.method private disConnect()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private disconnectService()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method private doBackup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 15

    const-string/jumbo v2, "ShortcutBackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doBackup - path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v8, Ljava/io/File;

    const-string/jumbo v2, "/data/misc/shortcutbr"

    invoke-direct {v8, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v8}, Lcom/android/server/pm/ShortcutBackupManager;->deleteDirectory(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1ed

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mService:Lcom/android/server/pm/ShortcutService;

    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v2, v3, v0, p0}, Lcom/android/server/pm/ShortcutService;->getBackupSmartSwitch(ILjava/lang/String;Lcom/android/server/pm/ShortcutBackupManager;)[B

    move-result-object v14

    if-nez v14, :cond_1

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v10

    const-string/jumbo v2, "ShortcutBackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doBackup - chmod Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v11, 0x0

    const/4 v13, 0x0

    :try_start_1
    new-instance v9, Ljava/io/File;

    const-string/jumbo v2, "shortcut.br"

    invoke-direct {v9, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v12, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v12, v9, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object/from16 v0, p3

    invoke-virtual {p0, v12, v0}, Lcom/android/server/pm/ShortcutBackupManager;->encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v13

    if-nez v13, :cond_2

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {p0, v13}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {p0, v12}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    return-void

    :cond_2
    :try_start_3
    invoke-virtual {v13, v14}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1a4

    invoke-static {v2, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-virtual {p0, v13}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {p0, v12}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setTargetPath(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setType(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSource(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSaveKey(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSecurityLevel(I)V

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSessiontime(Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    invoke-direct {p0, v2, v0, v1}, Lcom/android/server/pm/ShortcutBackupManager;->connectToService(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_1
    move-exception v10

    :goto_0
    :try_start_4
    const-string/jumbo v2, "ShortcutBackupManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "doBackup - Exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v2, p0

    move-object/from16 v6, p2

    move-object/from16 v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v13}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {p0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-virtual {p0, v13}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {p0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    return-void

    :catchall_0
    move-exception v2

    :goto_1
    invoke-virtual {p0, v13}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    invoke-virtual {p0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    throw v2

    :catchall_1
    move-exception v2

    move-object v11, v12

    goto :goto_1

    :catch_2
    move-exception v10

    move-object v11, v12

    goto :goto_0
.end method

.method private doRemoveBackupDir()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/shortcutbr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/server/pm/ShortcutBackupManager;->deleteDirectory(Ljava/io/File;)Z

    return-void
.end method

.method private doRestoreShortcut(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)I
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v14, 0x0

    new-instance v2, Ljava/io/File;

    const-string/jumbo v15, "/data/misc/shortcutbr"

    invoke-direct {v2, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    const-string/jumbo v15, "shortcut.br"

    invoke-direct {v3, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    const-string/jumbo v15, "/cache/shortcutbr"

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_0

    const-string/jumbo v15, "ShortcutBackupManager"

    const-string/jumbo v16, "doRestore - cache dir is not exists!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v2}, Lcom/android/server/pm/ShortcutBackupManager;->copy(Ljava/io/File;Ljava/io/File;)V

    const/4 v9, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string/jumbo v15, "shortcut.de"

    invoke-direct {v4, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/FileOutputStream;

    const/4 v15, 0x1

    invoke-direct {v10, v4, v15}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v15, v16, v18

    if-lez v15, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v8, v1}, Lcom/android/server/pm/ShortcutBackupManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    const/4 v12, 0x0

    const/16 v15, 0x400

    new-array v6, v15, [B

    :goto_0
    const/4 v15, 0x0

    const/16 v16, 0x400

    move/from16 v0, v16

    invoke-virtual {v11, v6, v15, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v12

    const/4 v15, -0x1

    if-eq v12, v15, :cond_1

    const/4 v15, 0x0

    invoke-virtual {v10, v6, v15, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v9, v10

    :goto_1
    :try_start_2
    const-string/jumbo v15, "ShortcutBackupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "doRestore - Exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v15, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    return v15

    :cond_1
    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileOutputStream;->flush()V

    :cond_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    :try_start_4
    new-instance v4, Ljava/io/File;

    const-string/jumbo v15, "shortcut.de"

    invoke-direct {v4, v2, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v15

    if-nez v15, :cond_3

    const-string/jumbo v15, "ShortcutBackupManager"

    const-string/jumbo v16, "decryptfile is not exists!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v15, 0x1

    return v15

    :catchall_0
    move-exception v15

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    throw v15

    :cond_3
    :try_start_5
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-int v13, v0

    new-array v14, v13, [B

    const/4 v15, 0x0

    invoke-virtual {v8, v14, v15, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    if-nez v14, :cond_4

    const/4 v15, 0x1

    return v15

    :catch_1
    move-exception v7

    const-string/jumbo v15, "ShortcutBackupManager"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "doRestore - decryptfile read exception: "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v15, 0x1

    return v15

    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/pm/ShortcutBackupManager;->mService:Lcom/android/server/pm/ShortcutService;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v0}, Lcom/android/server/pm/ShortcutService;->applyRestoreSmartSwitch([BI)I

    move-result v15

    if-eqz v15, :cond_5

    const/4 v15, 0x1

    return v15

    :cond_5
    const-string/jumbo v15, "/data/misc/shortcutbr"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v15, v1}, Lcom/android/server/pm/ShortcutBackupManager;->restoreBitmap(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v15, 0x0

    return v15

    :catchall_1
    move-exception v15

    move-object v9, v10

    goto :goto_2

    :catch_2
    move-exception v7

    goto/16 :goto_1
.end method

.method private doRestoreSmartSwitch(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 8

    const/4 v2, 0x1

    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doRestore - path: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v6, Ljava/io/File;

    const-string/jumbo v0, "/data/misc/shortcutbr"

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, v6}, Lcom/android/server/pm/ShortcutBackupManager;->deleteDirectory(Ljava/io/File;)Z

    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1ef

    invoke-static {v0, v1}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setTargetPath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setType(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSource(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, p3}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSaveKey(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, p4}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSecurityLevel(I)V

    iget-object v0, p0, Lcom/android/server/pm/ShortcutBackupManager;->mBackupConn:Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/ShortcutBackupManager$BackupConnection;->setSessiontime(Ljava/lang/String;)V

    invoke-direct {p0, v2, p2, p5}, Lcom/android/server/pm/ShortcutBackupManager;->connectToService(ILjava/lang/String;Ljava/lang/String;)Z

    return-void

    :catch_0
    move-exception v7

    const-string/jumbo v0, "ShortcutBackupManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "doBackup - chmod Exception: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "com.samsung.android.intent.action.RESPONSE_BACKUP_SHORTCUT"

    const/4 v3, 0x0

    move-object v0, p0

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/ShortcutBackupManager;->sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private generateEncryptSalt()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    const/16 v2, 0x10

    new-array v0, v2, [B

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object v0
.end method

.method private generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/spec/InvalidKeySpecException;,
            Ljavax/crypto/NoSuchPaddingException;
        }
    .end annotation

    const/16 v1, 0x3e8

    const/16 v4, 0x100

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const-string/jumbo v6, "PBKDF2WithHmacSHA1"

    invoke-static {v6}, Ljavax/crypto/SecretKeyFactory;->getInstance(Ljava/lang/String;)Ljavax/crypto/SecretKeyFactory;

    move-result-object v3

    new-instance v5, Ljavax/crypto/spec/PBEKeySpec;

    iget-object v6, p0, Lcom/android/server/pm/ShortcutBackupManager;->salt:[B

    invoke-direct {v5, v0, v6, v1, v4}, Ljavax/crypto/spec/PBEKeySpec;-><init>([C[BII)V

    invoke-virtual {v3, v5}, Ljavax/crypto/SecretKeyFactory;->generateSecret(Ljava/security/spec/KeySpec;)Ljavax/crypto/SecretKey;

    move-result-object v2

    new-instance v6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-interface {v2}, Ljavax/crypto/SecretKey;->getEncoded()[B

    move-result-object v7

    const-string/jumbo v8, "AES"

    invoke-direct {v6, v7, v8}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    return-object v6
.end method

.method private restoreBitmap(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24

    new-instance v14, Ljava/io/File;

    const-string/jumbo v16, "bitmaps"

    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-direct {v14, v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    return-void

    :cond_0
    invoke-virtual {v14}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-nez v6, :cond_1

    return-void

    :cond_1
    const/16 v16, 0x0

    array-length v0, v6

    move/from16 v18, v0

    move/from16 v17, v16

    :goto_0
    move/from16 v0, v17

    move/from16 v1, v18

    if-ge v0, v1, :cond_6

    aget-object v5, v6, v17

    const-string/jumbo v16, "ShortcutBackupManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "restoreBitmap - : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v16

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v15

    if-nez v15, :cond_3

    :cond_2
    add-int/lit8 v16, v17, 0x1

    move/from16 v17, v16

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    array-length v0, v15

    move/from16 v19, v0

    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    aget-object v13, v15, v16

    const-string/jumbo v20, "ShortcutBackupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "restoreBitmap - : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_4

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, v13}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/ShortcutBackupManager;->mService:Lcom/android/server/pm/ShortcutService;

    move-object/from16 v20, v0

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ShortcutService;->openIconFileForWriteSmartSwitch(ILjava/lang/String;Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v10

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v9, v1}, Lcom/android/server/pm/ShortcutBackupManager;->decryptStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v11

    const/16 v20, 0x400

    move/from16 v0, v20

    new-array v4, v0, [B

    const/4 v12, 0x0

    :goto_2
    invoke-virtual {v11, v4}, Ljava/io/InputStream;->read([B)I

    move-result v12

    if-lez v12, :cond_5

    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v4, v0, v12}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v7

    move-object v8, v9

    :goto_3
    :try_start_2
    const-string/jumbo v20, "ShortcutBackupManager"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "restoreBitmap Exception - : "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    :cond_4
    :goto_4
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    goto :goto_4

    :catchall_0
    move-exception v16

    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/server/pm/ShortcutBackupManager;->closeStream(Ljava/io/Closeable;)V

    throw v16

    :cond_6
    return-void

    :catchall_1
    move-exception v16

    move-object v8, v9

    goto :goto_5

    :catch_1
    move-exception v7

    goto :goto_3
.end method

.method private sendResponse(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "RESULT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "ERR_CODE"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string/jumbo v1, "SOURCE"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "EXPORT_SESSION_TIME"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/pm/ShortcutBackupManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.wssnps.permission.COM_WSSNPS"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected closeStream(Ljava/io/Closeable;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "ShortcutBackupManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "closeStream Exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected encryptStream(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string/jumbo v2, "AES/CBC/PKCS5Padding"

    invoke-static {v2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    invoke-virtual {v2}, Ljavax/crypto/Cipher;->getBlockSize()I

    move-result v2

    new-array v0, v2, [B

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    new-instance v1, Ljavax/crypto/spec/IvParameterSpec;

    invoke-direct {v1, v0}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0}, Lcom/android/server/pm/ShortcutBackupManager;->generateEncryptSalt()[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->salt:[B

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->salt:[B

    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    invoke-direct {p0, p2}, Lcom/android/server/pm/ShortcutBackupManager;->generatePBKDF2SecretKey(Ljava/lang/String;)Ljavax/crypto/spec/SecretKeySpec;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBackupManager;->secretKey:Ljavax/crypto/spec/SecretKeySpec;

    const/4 v4, 0x1

    invoke-virtual {v2, v4, v3, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    new-instance v2, Ljavax/crypto/CipherOutputStream;

    iget-object v3, p0, Lcom/android/server/pm/ShortcutBackupManager;->cipher:Ljavax/crypto/Cipher;

    invoke-direct {v2, p1, v3}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    return-object v2
.end method
