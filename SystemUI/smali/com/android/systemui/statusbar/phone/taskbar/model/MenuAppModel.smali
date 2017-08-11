.class public final enum Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;
.super Ljava/lang/Enum;
.source "MenuAppModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$1;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$2;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$3;,
        Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

.field private static final DEBUGGABLE:Z

.field public static final enum INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

.field public static final KNOX_DEFAULT_APP:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_ALPHA_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_CUSTOM_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field public static final MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private static mEDMBlockDisableAllList:Z

.field private static mEDMBlockDisableContainList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mEDMBlockDisablePackageList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mNonDisableItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mUninstallBlockedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static mUserIdForSecureFolderItem:I

.field private static sCollator:Ljava/text/Collator;


# instance fields
.field private mAppDisabledItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAppItems:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mInEditMode:Z

.field private mIsSafeMode:Z

.field private mMaxItemsPerPage:I

.field private mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendGets:Z

.field private mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

.field private mTopLevelItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/text/Collator;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->sCollator:Ljava/text/Collator;

    return-object v0
.end method

.method static synthetic -wrap0(II)I
    .locals 1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->integerCompare(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(JJ)I
    .locals 2

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->longCompare(JJ)I

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    const-string/jumbo v1, "INSTANCE"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    new-array v0, v3, [Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    sget-object v1, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->INSTANCE:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->$VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->DEBUGGABLE()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->DEBUGGABLE:Z

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->sCollator:Ljava/text/Collator;

    sput v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUserIdForSecureFolderItem:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    sput-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableAllList:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUninstallBlockedItems:Ljava/util/ArrayList;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.knox.shortcutsms"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.knox.containeragent2"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.sec.knox.switcher"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_CUSTOM_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$3;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_INSTALL_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mIsSafeMode:Z

    return-void
.end method

.method private addDisableAndUninstallBlockedAppToListFromSettingsCSC()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    array-length v4, v1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, v1, v3

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addNonDisableAppToList()V
    .locals 9

    const-string/jumbo v0, "nondisableapps"

    const/4 v6, 0x0

    const/4 v4, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v6

    if-eqz v6, :cond_2

    :try_start_0
    const-string/jumbo v7, "nondisableapps"

    invoke-static {v6, v7}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move-object v4, v6

    :try_start_1
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v3

    :goto_1
    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    const/4 v7, 0x4

    if-ne v3, v7, :cond_0

    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v5

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    sget-object v7, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v6}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v3

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    return-void

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_2

    :cond_2
    const-string/jumbo v7, "[DS]MenuAppModel"

    const-string/jumbo v8, "addNonDisableAppToList resParser is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private addNonDisableAppToListCsc()V
    .locals 15

    const/4 v14, 0x1

    const/4 v8, 0x0

    const/4 v0, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string/jumbo v10, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmp-long v10, v10, v12

    if-lez v10, :cond_2

    new-instance v1, Ljava/io/FileReader;

    const-string/jumbo v10, "/system/csc/default_disableapp_skiplist.xml"

    invoke-direct {v1, v10}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v7

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Lorg/xmlpull/v1/XmlPullParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v7}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v1}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v6

    :goto_0
    if-eq v6, v14, :cond_1

    const/4 v10, 0x4

    if-ne v6, v10, :cond_0

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v9

    sget-object v10, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_0

    sget-object v10, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v6

    goto :goto_0

    :cond_1
    move-object v0, v1

    :cond_2
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v3

    :goto_2
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_3

    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_1

    :catch_3
    move-exception v5

    :goto_3
    :try_start_5
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v0, :cond_3

    :try_start_6
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    :catch_4
    move-exception v4

    goto :goto_1

    :catchall_0
    move-exception v10

    :goto_4
    if-eqz v0, :cond_4

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    :cond_4
    :goto_5
    throw v10

    :catch_5
    move-exception v4

    goto :goto_5

    :catchall_1
    move-exception v10

    move-object v0, v1

    goto :goto_4

    :catch_6
    move-exception v5

    move-object v0, v1

    goto :goto_3

    :catch_7
    move-exception v3

    move-object v0, v1

    goto :goto_2
.end method

.method private static addNonDisableAppToListFromSettingsCSC()V
    .locals 6

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v3

    const-string/jumbo v4, "CscFeature_Setting_ConfigForbidAppDisableButton"

    invoke-virtual {v3, v4}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    array-length v4, v0

    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    sget-object v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x2

    :cond_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    :cond_1
    if-eq v0, v2, :cond_2

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    const-string/jumbo v2, "No start tag found"

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unexpected start tag: found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", expected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    return-void
.end method

.method private findActivitiesForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getEnterprisePolicyBlockUninstallList(Landroid/content/Context;)V
    .locals 11

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v10, 0x0

    const-string/jumbo v0, "content://com.sec.knox.provider2/ApplicationPolicy"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-array v4, v3, [Ljava/lang/String;

    const-string/jumbo v0, "UninstallationBlacklist"

    aput-object v0, v4, v10

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "getApplicationInstallUninstallList"

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_1

    const-string/jumbo v0, "[DS]MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEnterprisePolicyEnabled:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sput-boolean v10, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableAllList:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz v6, :cond_3

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    :cond_0
    const-string/jumbo v0, "getApplicationInstallUninstallList"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, ".*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    const/4 v0, -0x1

    if-le v8, v0, :cond_5

    :goto_1
    if-lez v8, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v9, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v0, ".*"

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "[DS]MenuAppModel"

    const-string/jumbo v2, "getApplicationInstallUninstallList cursor is null:"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-nez v8, :cond_4

    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableAllList:Z

    const-string/jumbo v0, "[DS]MenuAppModel"

    const-string/jumbo v2, "mEDMDisableContainList. all list"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string/jumbo v0, "[DS]MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEDMDisableContainList.add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    :goto_4
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    const-string/jumbo v2, "kr.co.rightbrain.RetailMode"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_4
    :try_start_2
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v7

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :cond_5
    :try_start_3
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "[DS]MenuAppModel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEDMDisablePackageList.add:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method private static integerCompare(II)I
    .locals 1

    const/4 v0, 0x0

    if-le p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    if-ge p0, p1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z
    .locals 4

    const/4 v3, 0x1

    if-nez p0, :cond_0

    return v3

    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableAllList:Z

    if-eqz v2, :cond_1

    return v3

    :cond_1
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisableContainList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_3
    sget-object v2, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mEDMBlockDisablePackageList:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    return v3

    :cond_5
    const/4 v2, 0x0

    return v2
.end method

.method private isKnoxDefaultShortcutApp(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z
    .locals 3

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "[DS]MenuAppModel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "item.getPackageName() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isSystemSignature(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 10

    const/4 v6, 0x0

    if-eqz p1, :cond_0

    if-eqz p1, :cond_1

    const-string/jumbo v7, "com.samsung.android.app.watchmanager"

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    :cond_0
    return v6

    :cond_1
    :try_start_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x80

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    const-string/jumbo v7, "com.sec.android.app.unblockdisabling"

    const/4 v8, 0x0

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string/jumbo v7, "[DS]MenuAppModel"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isSystemSignature Unblocked : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x40

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    const-string/jumbo v7, "android"

    const/16 v8, 0x40

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    if-eqz v3, :cond_3

    iget-object v7, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_3

    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v8, 0x0

    aget-object v7, v7, v8

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    :cond_3
    return v6

    :cond_4
    const-string/jumbo v7, "[DS]MenuAppModel"

    const-string/jumbo v8, "isSystemSignature pkgmgr null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v2

    return v6
.end method

.method private static longCompare(JJ)I
    .locals 2

    const/4 v0, 0x0

    cmp-long v1, p0, p2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    cmp-long v1, p0, p2

    if-gez v1, :cond_0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method private static makeDisableAppListFromMeta(Landroid/content/Context;)V
    .locals 14

    const/4 v13, 0x0

    const/4 v12, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v11, "android.intent.action.MAIN"

    invoke-direct {v4, v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v11, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v11}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v6, v4, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const/4 v9, 0x0

    :try_start_0
    const-string/jumbo v11, "android"

    const/16 v12, 0x40

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v11, :cond_0

    iget-object v11, v10, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v12, 0x0

    aget-object v9, v11, v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    if-eqz v7, :cond_1

    const/4 v3, 0x0

    :try_start_1
    iget-object v11, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/16 v12, 0x80

    invoke-virtual {v6, v11, v12}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    const/4 v5, 0x0

    iget-object v5, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v5, :cond_2

    iget-object v11, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v11, :cond_2

    const-string/jumbo v11, "com.sec.android.app.blockdisabling"

    invoke-virtual {v5, v11}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    :cond_2
    sget-object v11, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    if-eqz v1, :cond_1

    sget-object v11, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    iget-object v12, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    move-exception v2

    const-string/jumbo v11, "[DS]MenuAppModel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "makeDisableAppListFromMeta:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string/jumbo v11, "[DS]MenuAppModel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Failed to read meta data:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;
    .locals 1

    const-class v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->$VALUES:[Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;

    return-object v0
.end method


# virtual methods
.method appsAddedOrRemoved(Ljava/util/List;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v3, :cond_2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->invalidateTopLevelItems()V

    :cond_2
    return-void

    :cond_3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-wide v4, v1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mInEditMode:Z

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->editBegin()V

    goto :goto_1
.end method

.method appsUpdated(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->invalidateTopLevelItems()V

    goto :goto_0
.end method

.method public canAddToSecureFolderItem(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string/jumbo v5, "persona"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/knox/SemPersonaManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/samsung/android/knox/SemPersonaManager;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    const-string/jumbo v4, "com.sec.knox.moveto.containerType"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const/16 v5, 0x3ea

    if-ne v4, v5, :cond_0

    const-string/jumbo v4, "com.sec.knox.moveto.containerId"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUserIdForSecureFolderItem:I

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUserIdForSecureFolderItem:I

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, Lcom/samsung/android/knox/SemPersonaManager;->isInstallableAppInContainer(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v4

    return v4

    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public canDisableable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isNonDisableItem(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isSystemSignature(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isBlockUninstall(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public canUninstallable(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 2

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mSystemApp:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isKnoxDefaultShortcutApp(Lcom/android/systemui/statusbar/phone/taskbar/data/BaseItem;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isBlockUninstall(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getDisabledAppList()Ljava/util/List;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppDisabledItems:Ljava/util/Map;

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppDisabledItems:Ljava/util/Map;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->clear()V

    :goto_0
    const/4 v15, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v20

    const/16 v22, 0x200

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v19

    const-wide/16 v22, 0x1

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v10, 0x0

    :goto_1
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_7

    move-object/from16 v0, v19

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserHandle()Landroid/os/UserHandle;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->findActivitiesForPackage(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v17

    const/4 v9, 0x0

    :try_start_0
    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_2

    :cond_0
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_1
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppDisabledItems:Ljava/util/Map;

    goto :goto_0

    :catch_0
    move-exception v8

    const-string/jumbo v22, "[DS]MenuAppModel"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, ""

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    const/16 v22, 0x2

    move/from16 v0, v22

    if-eq v9, v0, :cond_0

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    const-string/jumbo v23, "com.sec.android.emergencylauncher"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    sget-object v22, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->KNOX_DEFAULT_APP:Ljava/util/List;

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v22 .. v23}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    new-instance v22, Landroid/content/Intent;

    const-string/jumbo v23, "android.intent.action.MAIN"

    invoke-direct/range {v22 .. v23}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v23, "android.intent.category.LAUNCHER"

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v22

    move-object/from16 v0, v18

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v16

    const/16 v22, 0x200

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_3
    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    new-instance v6, Landroid/content/ComponentName;

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v5

    const/16 v22, 0x1

    move/from16 v0, v22

    if-eq v5, v0, :cond_4

    if-nez v5, :cond_3

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-boolean v0, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3

    :cond_4
    new-instance v14, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-direct {v14, v6, v0}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;-><init>(Landroid/content/ComponentName;Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v22

    if-eqz v22, :cond_5

    :try_start_1
    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPkgResCache()Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;

    move-result-object v22

    invoke-virtual {v12}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v23

    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/PkgResCache;->loadBitmap(Landroid/content/res/Resources;ILjava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v15

    :cond_5
    :goto_4
    if-nez v15, :cond_6

    invoke-virtual/range {v20 .. v20}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->createIconBitmap(Landroid/graphics/drawable/Drawable;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v15

    :cond_6
    iput-object v15, v14, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mIconBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    move-wide/from16 v0, v22

    iput-wide v0, v14, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mId:J

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    move-object/from16 v0, v22

    iput-object v0, v14, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mTitle:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppDisabledItems:Ljava/util/Map;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v22

    const-wide/16 v24, 0x1

    add-long v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppDisabledItems:Ljava/util/Map;

    move-object/from16 v22, v0

    sget-object v23, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v22

    return-object v22

    :catch_1
    move-exception v7

    goto :goto_4
.end method

.method public getSearchHistoryItems()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v9, 0x1

    const/4 v12, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isBindAppsLoaded()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string/jumbo v0, "%s IS NOT NULL"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "searchDate"

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "%s DESC"

    new-array v1, v9, [Ljava/lang/Object;

    const-string/jumbo v2, "searchDate"

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getDBManager()Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getCurrentUserId()I

    move-result v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarSettings$AppOrder;->CONTENT_URI(I)Landroid/net/Uri;

    move-result-object v1

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v9, "_id"

    aput-object v9, v2, v12

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/database/TaskBarDBManager;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    if-eqz v7, :cond_1

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v8
.end method

.method public getTopLevelItems()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mSuspendGets:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->normalizeModel(Z)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public invalidateTopLevelItems()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    return-void
.end method

.method public isBlockUninstall(Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;)Z
    .locals 5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isUninstallBlockedItem(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->isEnterprisePolicyBlockUninstall(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string/jumbo v4, "device_policy"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    if-nez v2, :cond_2

    :goto_1
    return v0

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public isNonDisableItem(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo v0, "kr.co.rightbrain.RetailMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNonDisableItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isUninstallBlockedItem(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mUninstallBlockedItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public makeNonDisableAppList()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->getEnterprisePolicyBlockUninstallList(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->makeDisableAppListFromMeta(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->addNonDisableAppToList()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->addNonDisableAppToListCsc()V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->addNonDisableAppToListFromSettingsCSC()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->addDisableAndUninstallBlockedAppToListFromSettingsCSC()V

    return-void
.end method

.method public matchMainActivity(Landroid/content/ComponentName;I)Landroid/content/ComponentName;
    .locals 18

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->isBindAppsLoaded()Z

    move-result v15

    if-eqz v15, :cond_1

    const/4 v11, 0x0

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-object v15, v6, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->user:Landroid/os/UserHandle;

    invoke-virtual {v15}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v15

    move/from16 v0, p2

    if-ne v15, v0, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getPackageName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->getComponentName()Landroid/content/ComponentName;

    move-result-object v15

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v15}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v15, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/utils/TaskBarUtilities;->findMainActivityWithCategoryLauncher(Landroid/content/Context;Landroid/content/ComponentName;I)Landroid/content/ComponentName;

    move-result-object v15

    return-object v15

    :cond_2
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v15, 0x1

    if-le v12, v15, :cond_8

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    move-object v11, v2

    :cond_4
    if-nez v11, :cond_9

    const-string/jumbo v15, "[DS]MenuAppModel"

    const-string/jumbo v16, "matchMainActivity(). There are matched packages more than 2, but not matched equally. compare class name!"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v4, 0x0

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_9

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v15, v13, :cond_7

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v8

    :goto_1
    const/4 v5, 0x0

    :goto_2
    if-ge v5, v8, :cond_5

    invoke-virtual {v14, v5}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-virtual {v10, v5}, Ljava/lang/String;->charAt(I)C

    move-result v16

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    if-le v5, v4, :cond_6

    move v4, v5

    move-object v11, v2

    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_7
    move v8, v13

    goto :goto_1

    :cond_8
    const/4 v15, 0x1

    if-ne v12, v15, :cond_9

    const/4 v15, 0x0

    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/ComponentName;

    :cond_9
    sget-boolean v15, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->DEBUGGABLE:Z

    if-eqz v15, :cond_a

    const-string/jumbo v15, "[DS]MenuAppModel"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "matchMainActivity(). target="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string/jumbo v17, ", result="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-object v11
.end method

.method normalizeAppMap(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;Z)",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;->mHidden:Z

    if-nez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mMaxItemsPerPage:I

    invoke-interface {p2, v2, v3, p3}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;->normalize(Ljava/util/List;IZ)V

    return-object v2
.end method

.method public normalizeModel(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->normalizeAppMap(Ljava/util/Map;Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->DEBUGGABLE:Z

    if-eqz v0, :cond_1

    const-string/jumbo v1, "[DS]MenuAppModel"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "normalizeModel. Normalizer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, ", count: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    if-nez v0, :cond_2

    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTopLevelItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method onLocaleChanged()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mSuspendGets:Z

    return-void
.end method

.method public setModelItems(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mAppItems:Ljava/util/Map;

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->sCollator:Ljava/text/Collator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->getDisabledAppList()Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mSuspendGets:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->invalidateTopLevelItems()V

    return-void
.end method

.method public setNormalizer(Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/data/AppItem;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mNormalizer:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->invalidateTopLevelItems()V

    :cond_0
    return-void
.end method

.method public setTaskBarManager(Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    const/16 v0, 0x64

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mMaxItemsPerPage:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mTaskBar:Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/TaskBar;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->mIsSafeMode:Z

    sget-object v0, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->MENU_ALPHA_NORMALIZER:Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel;->setNormalizer(Lcom/android/systemui/statusbar/phone/taskbar/model/MenuAppModel$Normalizer;)V

    return-void
.end method
