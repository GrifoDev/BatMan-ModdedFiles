.class public Lcom/android/launcher3/common/bnr/extractor/LCExtractor;
.super Ljava/lang/Object;
.source "LCExtractor.java"


# static fields
.field public static final ACTION_INTENT_LCEXTRACTOR:Ljava/lang/String; = "com.sec.android.intent.action.LCEXTRACTOR"

.field public static final EXTRACT_TYPE_HOMEDATA:I = 0x1

.field public static final EXTRACT_TYPE_LAYOUT:I = 0x0

.field public static final EXTRACT_TYPE_NO:I = -0x1

.field private static final FILE_NAME_APPS:Ljava/lang/String; = "default_application_order"

.field private static final FILE_NAME_WORKSPACE:Ljava/lang/String; = "default_workspace"

.field public static final HOMEDATA_DIR:Ljava/lang/String; = ".homedata"

.field public static final HOMESCREEN_DIR:Ljava/lang/String; = ".homescreen"

.field public static final LCEXTRACTOR_APPS_SOURCE:Ljava/lang/String; = "LCExtractorApps"

.field public static final LCEXTRACTOR_HOME_SOURCE:Ljava/lang/String; = "LCExtractorHome"

.field public static final SD_DIRECTORY:Ljava/lang/String; = "/LCExtractor"

.field private static final TAG:Ljava/lang/String; = "Launcher.Extractor"

.field public static final strTab:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExtractType:I

.field private mIsEasyMode:Z

.field private mIsHomeOnly:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ""

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "    "

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "        "

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "            "

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "                "

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "                    "

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "                        "

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportEasyModeChange()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->extractData()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsEasyMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mIsHomeOnly:Z

    return v0
.end method

.method private extractData()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v5}, Ljava/io/File;->canWrite()Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v1, "//data//com.sec.android.app.launcher"

    const-string v4, "//.homedata//"

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    invoke-direct {p0, v0, v3}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    :goto_0
    return-void

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    const-string v7, "sd card can\'t write!"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public static getStrTab(IZ)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v1, v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "launcher:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->strTab:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method private recusiveCopyData(Ljava/io/File;Ljava/io/File;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->mkdir()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v8, v2

    :goto_0
    if-ge v7, v8, :cond_4

    aget-object v0, v2, v7

    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    invoke-direct {v10, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {p0, v9, v10}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveCopyData(Ljava/io/File;Ljava/io/File;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    move-result v8

    if-nez v8, :cond_2

    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot create dir "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_2
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v8, 0x800

    new-array v1, v8, [B

    :goto_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v6, v1, v7, v5}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V

    :cond_4
    return-void
.end method

.method private recusiveDeleteData(Ljava/io/File;)V
    .locals 4

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    invoke-direct {p0, v0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->recusiveDeleteData(Ljava/io/File;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    return-void
.end method


# virtual methods
.method public checkCondition()V
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/android/launcher3/util/PermissionUtils;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    invoke-static {v3, v4, v1}, Lcom/android/launcher3/util/PermissionUtils;->hasSelfPermission(Landroid/content/Context;[Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v2

    const-string v3, "Launcher.Extractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "hasSelfPermission : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string v3, "Launcher.Extractor"

    const-string v4, "No storage permission in TouchWizHome"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/Launcher;

    invoke-static {v0, v1}, Lcom/android/launcher3/util/PermissionUtils;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "Launcher.Extractor"

    const-string v4, "Permission denied."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v3, 0x2

    invoke-static {v0, v1, v3}, Lcom/android/launcher3/util/PermissionUtils;->requestPermissions(Lcom/android/launcher3/Launcher;Ljava/util/ArrayList;I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->startExtractLayout()V

    goto :goto_0
.end method

.method public startExtractLayout()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    if-ne v0, v2, :cond_1

    new-instance v0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;-><init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V

    sget-object v1, Lcom/android/launcher3/Utilities;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$1;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mExtractType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/bnr/extractor/LCExtractor;->mContext:Landroid/content/Context;

    const-string v1, "Extracting the home screen layout."

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/common/bnr/extractor/LCExtractor$2;-><init>(Lcom/android/launcher3/common/bnr/extractor/LCExtractor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method
