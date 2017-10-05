.class Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;
.super Ljava/lang/Object;
.source "LauncherAppWidgetProviderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SupportCellSpans"
.end annotation


# static fields
.field private static final WIDGET_RESIZE:Ljava/lang/String; = "com.sec.android.widgetapp.APPWIDGET_RESIZE"

.field private static final WIDGET_SUPPORT_INFO:Ljava/lang/String; = "com.sec.android.appwidget.widgetinfo"


# instance fields
.field private mMaxXSpan:I

.field private mMaxYSpan:I

.field private mMinXSpan:I

.field private mMinYSpan:I

.field private mResizeMode:I

.field private mSupportSpans:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;


# direct methods
.method private constructor <init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V
    .locals 3

    const/16 v2, 0x3e8

    const/4 v1, 0x1

    iput-object p1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->resizeMode:I

    iput v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;-><init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->parseSupportSpans()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;II)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->isAvailableSize(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->updateSpanAndResizeMode(IIZ)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportSpanCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinXSpan()I

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getMinYSpan()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getResizeMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestWidth(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;I)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getNearestHeight(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->getSupportedSpans()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private addSupportSpan(II)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [I

    aput p1, v1, v3

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0, p1, p2, v3}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->updateSpanAndResizeMode(IIZ)V

    return-void
.end method

.method private getMinXSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    return v0
.end method

.method private getMinYSpan()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    return v0
.end method

.method private getNearestHeight(I)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getNearestWidth(I)I
    .locals 2

    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private getResizeMode()I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    return v0
.end method

.method private getSupportSpanCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method private getSupportedSpans()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    return-object v0
.end method

.method private isAvailableSize(II)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aget v4, v0, v2

    if-ne v4, p1, :cond_0

    aget v4, v0, v1

    if-ne v4, p2, :cond_0

    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method private parseSupportSpans()V
    .locals 26

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/LauncherAppState;->getContext()Landroid/content/Context;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    if-nez v21, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v10, 0x0

    :try_start_0
    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v3, v0, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    new-instance v21, Landroid/content/Intent;

    const-string v22, "com.sec.android.widgetapp.APPWIDGET_RESIZE"

    invoke-direct/range {v21 .. v22}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v8

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    const/16 v22, 0x80

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v8, v1}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_2
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    iget-object v0, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v21, v0

    const-string v22, "com.sec.android.appwidget.widgetinfo"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v9, v1}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    if-eqz v12, :cond_0

    :cond_3
    :try_start_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v19

    const/16 v21, 0x2

    move/from16 v0, v19

    move/from16 v1, v21

    if-eq v0, v1, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v19

    move/from16 v1, v21

    if-ne v0, v1, :cond_3

    :cond_4
    :goto_1
    const/16 v21, 0x0

    const-string v22, "supportCellSizes"

    const/16 v23, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v12, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v16

    if-lez v16, :cond_0

    const/4 v15, 0x0

    :try_start_2
    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    move-result-object v15

    :goto_2
    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->this$0:Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->addSupportSpan(II)V

    array-length v0, v15

    move/from16 v22, v0

    const/16 v21, 0x0

    :goto_3
    move/from16 v0, v21

    move/from16 v1, v22

    if-ge v0, v1, :cond_7

    aget-object v11, v15, v21

    const/16 v23, 0x78

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v20

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v23, 0x0

    :try_start_3
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v11, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    add-int/lit8 v23, v20, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result v18

    move/from16 v0, v17

    if-ne v0, v4, :cond_5

    move/from16 v0, v18

    if-eq v0, v5, :cond_6

    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->addSupportSpan(II)V

    :cond_6
    :goto_4
    add-int/lit8 v21, v21, 0x1

    goto :goto_3

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v6

    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto/16 :goto_1

    :catch_2
    move-exception v6

    invoke-virtual {v6}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :catch_3
    move-exception v6

    const-string v21, "LauncherAWProviderInfo"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Not found the array for supportCellSizes : "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v7, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :catch_4
    move-exception v6

    const-string v23, "LauncherAWProviderInfo"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "parsed = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, " , x = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans$1;-><init>(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;)V

    invoke-static/range {v21 .. v22}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto/16 :goto_0
.end method

.method private updateSpanAndResizeMode(IIZ)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    if-eqz p3, :cond_1

    const/16 v2, 0x3e8

    const/16 v3, 0x3e8

    const/4 v0, 0x1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mSupportSpans:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    aget v6, v4, v7

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    aget v6, v4, v8

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v3

    aget v6, v4, v7

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    aget v6, v4, v8

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_0
    iput v2, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    iput v3, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    iput v0, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    iput v1, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    :cond_1
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    invoke-static {v5, p2}, Ljava/lang/Math;->min(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    invoke-static {v5, p1}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxXSpan:I

    iget v6, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinXSpan:I

    if-eq v5, v6, :cond_2

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    :cond_2
    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMaxYSpan:I

    iget v6, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mMinYSpan:I

    if-eq v5, v6, :cond_3

    iget v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo$SupportCellSpans;->mResizeMode:I

    :cond_3
    return-void
.end method
