.class public Lcom/android/launcher3/home/HomeDefaultLayoutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser;
.source "HomeDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;,
        Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;
    }
.end annotation


# static fields
.field private static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final OMC_ETC_PATH:Ljava/lang/String; = "/etc"

.field private static final TAG:Ljava/lang/String; = "HomeDefaultLayoutParser"

.field private static final XML_WORKSPACE:Ljava/lang/String; = "/default_workspace.xml"

.field private static final XML_WORKSPACE_EASY:Ljava/lang/String; = "/default_workspace_easy.xml"

.field private static final XML_WORKSPACE_GUEST:Ljava/lang/String; = "/default_workspace_guest.xml"

.field private static final XML_WORKSPACE_HOMEONLY:Ljava/lang/String; = "/default_workspace_homeonly.xml"

.field private static final XML_WORKSPACE_HOMEONLY_KNOX:Ljava/lang/String; = "/default_workspace_homeonly_knox.xml"

.field private static final XML_WORKSPACE_KNOX:Ljava/lang/String; = "/default_workspace_knox.xml"


# instance fields
.field private OMC_PATH:Ljava/lang/String;

.field private mDWPath:Ljava/lang/String;

.field private mDWPathEasy:Ljava/lang/String;

.field private mDWPathGuest:Ljava/lang/String;

.field private mDWPathHomeOnly:Ljava/lang/String;

.field private mDWPathHomeOnlyKnox:Ljava/lang/String;

.field private mDWPathKnox:Ljava/lang/String;

.field private mHomeParseContainer:I

.field private mIsCSC:Z

.field private mIsEasyMode:Z

.field private mIsGuest:Z

.field private mIsHomeOnly:Z

.field private mIsKnoxMode:Z

.field private mIsWifiDevice:Z

.field private mUsedGridSize:[I


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v6, "favorites"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    iput-boolean v7, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_guest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_guest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_easy.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_easy.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_homeonly.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_homeonly.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_workspace_homeonly_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_workspace_homeonly_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/16 v0, -0x64

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J
    .locals 2

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->addShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->changeGridAndLayout(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->setUsedGridSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method private changeGridAndLayout(II)V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    invoke-static {v1, p1, p2, v2}, Lcom/android/launcher3/util/ScreenGridUtilities;->storeGridLayoutPreference(Landroid/content/Context;IIZ)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->setCurrentGrid(II)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkValidCurrentGrid()V
    .locals 7

    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-array v1, v2, [I

    new-array v0, v2, [I

    iget-object v2, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v3, v3, v5

    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v4, v4, v6

    invoke-static {v2, v1, v3, v4}, Lcom/android/launcher3/util/ScreenGridUtilities;->findNearestGridSize(Landroid/content/Context;[III)Z

    iget-object v2, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    aget v2, v1, v5

    aget v3, v0, v5

    if-gt v2, v3, :cond_0

    aget v2, v1, v6

    aget v3, v0, v6

    if-le v2, v3, :cond_1

    :cond_0
    aget v2, v1, v5

    aget v3, v1, v6

    invoke-direct {p0, v2, v3}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->changeGridAndLayout(II)V

    const-string v2, "HomeDefaultLayoutParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenGrid currentGrid x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "HomeDefaultLayoutParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "changeScreenGrid newGrid x : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", y : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " isHomeOnly : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private setUsedGridSize(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v0, 0x1

    const/4 v1, 0x1

    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    :cond_2
    add-int v4, v2, v0

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v5, v5, v6

    if-le v4, v5, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    add-int v5, v2, v0

    aput v5, v4, v6

    :cond_3
    add-int v4, v3, v1

    iget-object v5, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    aget v5, v5, v7

    if-le v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    add-int v5, v3, v1

    aput v5, v4, v7

    goto :goto_0
.end method


# virtual methods
.method defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;I)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    move/from16 v0, p5

    iput v0, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mHomeParseContainer:I

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v3

    const/4 v2, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v3, :cond_2

    :cond_1
    const/4 v10, 0x1

    if-ne v9, v10, :cond_3

    :cond_2
    return v2

    :cond_3
    const/4 v10, 0x2

    if-ne v9, v10, :cond_0

    iget-object v10, p0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v10}, Landroid/content/ContentValues;->clear()V

    const-string v10, "homeGridInfo"

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    if-eqz v8, :cond_0

    invoke-interface {v8, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    goto :goto_0

    :cond_4
    const-string v10, "screen"

    invoke-static {p1, v10}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    if-nez v8, :cond_5

    const-string v10, "HomeDefaultLayoutParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Ignoring unknown element tag: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    invoke-interface {v8, p1, p2}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v10, 0x0

    cmp-long v10, v4, v10

    if-ltz v10, :cond_0

    const/16 v10, -0x64

    move/from16 v0, p5

    if-ne v0, v10, :cond_6

    const-wide/16 v10, 0x0

    cmp-long v10, v6, v10

    if-ltz v10, :cond_6

    if-eqz p4, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0
.end method

.method protected getFolderElementsMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$AppShortcutWithUriParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$ShortcutParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getHiddenApps()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method protected getLayoutElementsMap()Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "favorite"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appwidget"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultAppWidgetParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcut"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$UriShortcutParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeFolderParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$DefaultHomeAutoInstallParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "homeGridInfo"

    new-instance v2, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/home/HomeDefaultLayoutParser$HomeGridInfoParser;-><init>(Lcom/android/launcher3/home/HomeDefaultLayoutParser;Lcom/android/launcher3/home/HomeDefaultLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mUsedGridSize:[I

    const/4 v7, 0x1

    const/16 v19, 0x0

    aput v19, v6, v7

    aput v19, v2, v4

    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v11

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_3

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnlyKnox:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    :cond_0
    :goto_0
    if-eqz v12, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v2, v6, v20

    if-lez v2, :cond_9

    new-instance v15, Ljava/io/FileReader;

    invoke-direct {v15, v12}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v11}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v15}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v14, v15

    :goto_1
    if-eqz v3, :cond_14

    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v5

    :cond_1
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v18

    const/4 v2, 0x3

    move/from16 v0, v18

    if-ne v0, v2, :cond_2

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v2

    if-le v2, v9, :cond_14

    :cond_2
    const/4 v2, 0x1

    move/from16 v0, v18

    if-eq v0, v2, :cond_14

    const/4 v2, 0x2

    move/from16 v0, v18

    if-ne v0, v2, :cond_1

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v17

    const-string v2, "home"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const-string v4, "favorites"

    const/16 v7, -0x64

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v2

    add-int/2addr v8, v2

    goto :goto_2

    :cond_3
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathKnox:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    goto :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    if-eqz v2, :cond_5

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathEasy:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_7

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathGuest:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v20, 0x0

    cmp-long v2, v6, v20

    if-gtz v2, :cond_16

    :cond_6
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    invoke-direct {v12, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_0

    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_8

    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPathHomeOnly:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    goto/16 :goto_0

    :cond_8
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mDWPath:Ljava/lang/String;

    invoke-direct {v13, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v12, v13

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_a

    const v16, 0x7f08000a

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    goto/16 :goto_1

    :cond_a
    const v16, 0x7f08000b

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsEasyMode:Z

    if-eqz v2, :cond_c

    const v16, 0x7f080007

    goto :goto_3

    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mLayoutId:I

    move/from16 v16, v0

    goto :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_e

    const v16, 0x7f080008

    goto :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsHomeOnly:Z

    if-eqz v2, :cond_f

    const v16, 0x7f080009

    goto :goto_3

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->mIsWifiDevice:Z

    if-eqz v2, :cond_10

    const v16, 0x7f08000c

    goto :goto_3

    :cond_10
    const v16, 0x7f080006

    goto :goto_3

    :cond_11
    const-string v2, "hotseat"

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v4, "favorites"

    const/16 v7, -0x65

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->defaultHomeParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)I

    move-result v2

    add-int/2addr v8, v2

    goto/16 :goto_2

    :cond_12
    const-string v2, "HomeDefaultLayoutParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "invalid tag : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    :catch_0
    move-exception v10

    :goto_4
    :try_start_5
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v14, :cond_13

    :try_start_6
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_13
    :goto_5
    return v8

    :cond_14
    :try_start_7
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/HomeDefaultLayoutParser;->checkValidCurrentGrid()V
    :try_end_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v14, :cond_13

    :try_start_8
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_5

    :catch_1
    move-exception v10

    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_2
    move-exception v10

    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_3
    move-exception v10

    :goto_6
    :try_start_9
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v14, :cond_13

    :try_start_a
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_5

    :catch_4
    move-exception v10

    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_5
    move-exception v10

    :goto_7
    :try_start_b
    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v14, :cond_13

    :try_start_c
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_5

    :catch_6
    move-exception v10

    const-string v2, "HomeDefaultLayoutParser"

    const-string v4, "Got exception parsing favorites."

    invoke-static {v2, v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catchall_0
    move-exception v2

    :goto_8
    if-eqz v14, :cond_15

    :try_start_d
    invoke-virtual {v14}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_15
    :goto_9
    throw v2

    :catch_7
    move-exception v10

    const-string v4, "HomeDefaultLayoutParser"

    const-string v6, "Got exception parsing favorites."

    invoke-static {v4, v6, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :catchall_1
    move-exception v2

    move-object v12, v13

    goto :goto_8

    :catchall_2
    move-exception v2

    move-object v14, v15

    goto :goto_8

    :catch_8
    move-exception v10

    move-object v12, v13

    goto :goto_7

    :catch_9
    move-exception v10

    move-object v14, v15

    goto :goto_7

    :catch_a
    move-exception v10

    move-object v12, v13

    goto :goto_6

    :catch_b
    move-exception v10

    move-object v14, v15

    goto :goto_6

    :catch_c
    move-exception v10

    move-object v12, v13

    goto :goto_4

    :catch_d
    move-exception v10

    move-object v14, v15

    goto :goto_4

    :cond_16
    move-object v12, v13

    goto/16 :goto_0
.end method
