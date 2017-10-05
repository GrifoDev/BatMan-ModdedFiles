.class public Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;
.super Lcom/android/launcher3/common/model/DefaultLayoutParser;
.source "AppsDefaultLayoutParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;,
        Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;
    }
.end annotation


# static fields
.field static final CSC_PATH:Ljava/lang/String; = "/system/csc"

.field private static final OMC_ETC_PATH:Ljava/lang/String; = "/etc"

.field private static final TAG:Ljava/lang/String; = "AppsDefaultLayoutParser"

.field static final XML_APPORDER:Ljava/lang/String; = "/default_application_order.xml"

.field static final XML_APPORDER_GUEST:Ljava/lang/String; = "/default_application_order_guest.xml"

.field static final XML_APPORDER_KNOX:Ljava/lang/String; = "/default_application_order_knox.xml"


# instance fields
.field private OMC_PATH:Ljava/lang/String;

.field private mAppOrderPath:Ljava/lang/String;

.field private mAppOrderPathGuest:Ljava/lang/String;

.field private mAppOrderPathKnox:Ljava/lang/String;

.field private mAppsParseContainer:J

.field private mIsCSC:Z

.field private mIsGuest:Z

.field private mIsKnoxMode:Z

.field protected mRank:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;I)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x0

    const-string v6, "appOrder"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    iput-object v8, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    iput-boolean v7, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->getOmcPath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_guest.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_guest.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->OMC_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/etc"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/default_application_order_knox.xml"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/system/csc/default_application_order_knox.xml"

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->chooseFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct/range {p0 .. p6}, Lcom/android/launcher3/common/model/DefaultLayoutParser;-><init>(Landroid/content/Context;Landroid/appwidget/AppWidgetHost;Lcom/android/launcher3/common/model/DefaultLayoutParser$LayoutParserCallback;Landroid/content/res/Resources;ILjava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    const-wide/16 v0, -0x66

    iput-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)Landroid/content/ContentValues;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    return-object v0
.end method


# virtual methods
.method protected defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    .locals 16
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
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v9

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    :cond_0
    :goto_0
    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v11

    const/4 v12, 0x3

    if-ne v11, v12, :cond_1

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v12

    if-le v12, v9, :cond_2

    :cond_1
    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    :cond_2
    return-void

    :cond_3
    const/4 v12, 0x2

    if-ne v11, v12, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v12}, Landroid/content/ContentValues;->clear()V

    const-string v12, "appsGridInfo"

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    if-eqz v10, :cond_0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    goto :goto_0

    :cond_4
    const-string v12, "screen"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;

    if-nez v10, :cond_5

    const-string v12, "AppsDefaultLayoutParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Ignoring unknown element tag: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-interface/range {p1 .. p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const-wide/16 v12, -0x66

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppsParseContainer:J

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v10, v0, v1}, Lcom/android/launcher3/common/model/DefaultLayoutParser$TagParser;->parseAndAdd(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-ltz v12, :cond_0

    const/16 v12, -0x66

    move/from16 v0, p5

    if-ne v0, v12, :cond_6

    if-eqz p4, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    move-object/from16 v0, p4

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    iput v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-lez v12, :cond_0

    const-string v12, "reservedFolder"

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mContext:Landroid/content/Context;

    invoke-static {v12}, Lcom/android/launcher3/common/customer/PostPositionController;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/customer/PostPositionController;

    move-result-object v12

    const-wide/16 v14, -0x66

    invoke-virtual {v12, v14, v15}, Lcom/android/launcher3/common/customer/PostPositionController;->getSharedPref(J)Lcom/android/launcher3/common/customer/PostPositionSharedPref;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v12, 0x1

    invoke-virtual {v4, v5, v2, v3, v12}, Lcom/android/launcher3/common/customer/PostPositionSharedPref;->writeFolderId(Ljava/lang/String;JZ)V

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

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/common/model/DefaultLayoutParser$AutoInstallParser;-><init>(Lcom/android/launcher3/common/model/DefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected getHiddenApps()Ljava/util/ArrayList;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    const/4 v13, 0x1

    invoke-virtual {v4, v13}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v5, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-lez v13, :cond_4

    new-instance v7, Ljava/io/FileReader;

    invoke-direct {v7, v5}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    invoke-interface {v10, v7}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v6, v7

    :goto_0
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v11

    :cond_0
    :goto_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v12

    const/4 v13, 0x3

    if-ne v12, v13, :cond_1

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v13

    if-le v13, v11, :cond_2

    :cond_1
    const/4 v13, 0x1

    if-ne v12, v13, :cond_5

    :cond_2
    if-eqz v6, :cond_3

    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    return-object v8

    :cond_4
    :try_start_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    const v14, 0x7f080002

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    goto :goto_0

    :cond_5
    const/4 v13, 0x2

    if-ne v12, v13, :cond_0

    const-string v13, "favorite"

    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "hidden"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "packageName"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v13, "className"

    invoke-static {v10, v13}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getAttributeValue(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v13, Landroid/content/ComponentName;

    invoke-direct {v13, v9, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_3
    :try_start_5
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v6, :cond_3

    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v3

    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_3
    move-exception v3

    :goto_4
    :try_start_7
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v6, :cond_3

    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    :catch_4
    move-exception v3

    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_5
    move-exception v3

    :goto_5
    :try_start_9
    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v6, :cond_3

    :try_start_a
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v3

    const-string v13, "AppsDefaultLayoutParser"

    const-string v14, "Got exception parsing appOrder."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v13

    :goto_6
    if-eqz v6, :cond_6

    :try_start_b
    invoke-virtual {v6}, Ljava/io/FileReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    :cond_6
    :goto_7
    throw v13

    :catch_7
    move-exception v3

    const-string v14, "AppsDefaultLayoutParser"

    const-string v15, "Got exception parsing appOrder."

    invoke-static {v14, v15, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    :catchall_1
    move-exception v13

    move-object v6, v7

    goto :goto_6

    :catch_8
    move-exception v3

    move-object v6, v7

    goto :goto_5

    :catch_9
    move-exception v3

    move-object v6, v7

    goto :goto_4

    :catch_a
    move-exception v3

    move-object v6, v7

    goto :goto_3
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

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "folder"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppsFolderParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "autoinstall"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$DefaultAppAutoInstallParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "appsGridInfo"

    new-instance v2, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$AppsGridInfoParser;-><init>(Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser$1;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method protected parseLayout(Ljava/util/ArrayList;)I
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)I"
        }
    .end annotation

    const/4 v10, 0x0

    const/4 v12, 0x0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v2

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v9

    const/4 v2, 0x1

    invoke-virtual {v9, v2}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_2

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathKnox:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    :cond_0
    :goto_0
    if-eqz v10, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-lez v2, :cond_5

    new-instance v13, Ljava/io/FileReader;

    invoke-direct {v13, v10}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v9}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v13}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsCSC:Z
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v13

    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRootTag:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->getLayoutElementsMap()Ljava/util/HashMap;

    move-result-object v5

    const-string v4, "favorites"

    const/16 v7, -0x66

    move-object/from16 v2, p0

    move-object/from16 v6, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->defaultAppsParseAndAddNode(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/HashMap;Ljava/util/ArrayList;I)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v12, :cond_1

    :try_start_3
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mRank:I

    return v2

    :cond_2
    :try_start_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z

    if-eqz v2, :cond_4

    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPathGuest:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_3

    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v16, 0x0

    cmp-long v2, v6, v16

    if-gtz v2, :cond_a

    :cond_3
    new-instance v10, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v10, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :cond_4
    :try_start_6
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mAppOrderPath:Ljava/lang/String;

    invoke-direct {v11, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v10, v11

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsKnoxMode:Z

    if-eqz v2, :cond_6

    const v14, 0x7f080004

    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mSourceRes:Landroid/content/res/Resources;

    invoke-virtual {v2, v14}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v3

    goto :goto_1

    :cond_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mLayoutId:I

    goto :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/model/AppsDefaultLayoutParser;->mIsGuest:Z
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_8

    const v14, 0x7f080003

    goto :goto_3

    :cond_8
    const v14, 0x7f080002

    goto :goto_3

    :catch_0
    move-exception v8

    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :catch_1
    move-exception v8

    :goto_4
    :try_start_7
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v12, :cond_1

    :try_start_8
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_2

    :catch_2
    move-exception v8

    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_3
    move-exception v8

    :goto_5
    :try_start_9
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v12, :cond_1

    :try_start_a
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_4

    goto/16 :goto_2

    :catch_4
    move-exception v8

    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catch_5
    move-exception v8

    :goto_6
    :try_start_b
    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v12, :cond_1

    :try_start_c
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_6

    goto/16 :goto_2

    :catch_6
    move-exception v8

    const-string v2, "AppsDefaultLayoutParser"

    const-string v4, "Got exception parsing appOrder."

    invoke-static {v2, v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :catchall_0
    move-exception v2

    :goto_7
    if-eqz v12, :cond_9

    :try_start_d
    invoke-virtual {v12}, Ljava/io/FileReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    :cond_9
    :goto_8
    throw v2

    :catch_7
    move-exception v8

    const-string v4, "AppsDefaultLayoutParser"

    const-string v6, "Got exception parsing appOrder."

    invoke-static {v4, v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    :catchall_1
    move-exception v2

    move-object v10, v11

    goto :goto_7

    :catchall_2
    move-exception v2

    move-object v12, v13

    goto :goto_7

    :catch_8
    move-exception v8

    move-object v10, v11

    goto :goto_6

    :catch_9
    move-exception v8

    move-object v12, v13

    goto :goto_6

    :catch_a
    move-exception v8

    move-object v10, v11

    goto :goto_5

    :catch_b
    move-exception v8

    move-object v12, v13

    goto :goto_5

    :catch_c
    move-exception v8

    move-object v10, v11

    goto :goto_4

    :catch_d
    move-exception v8

    move-object v12, v13

    goto :goto_4

    :cond_a
    move-object v10, v11

    goto/16 :goto_0
.end method
