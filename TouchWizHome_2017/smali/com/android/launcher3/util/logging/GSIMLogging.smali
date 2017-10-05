.class public final Lcom/android/launcher3/util/logging/GSIMLogging;
.super Lcom/android/launcher3/util/logging/Logging;
.source "GSIMLogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;,
        Lcom/android/launcher3/util/logging/GSIMLogging$SingletonHolder;
    }
.end annotation


# static fields
.field private static final APP_ID:Ljava/lang/String; = "com.sec.android.app.launcher"

.field public static final FEATURE_NAME_APPS_FOLDER_COUNT:Ljava/lang/String; = "APFO"

.field public static final FEATURE_NAME_APPS_FOLDER_NAME:Ljava/lang/String; = "APFN"

.field public static final FEATURE_NAME_APPS_ICON_STARTED:Ljava/lang/String; = "APIS"

.field public static final FEATURE_NAME_APPS_PAGE_COUNT:Ljava/lang/String; = "APPS"

.field public static final FEATURE_NAME_APPS_QUICK_OPTION:Ljava/lang/String; = "APQO"

.field public static final FEATURE_NAME_APP_LOCK:Ljava/lang/String; = "APLK"

.field public static final FEATURE_NAME_APP_SEARCH:Ljava/lang/String; = "APSC"

.field public static final FEATURE_NAME_ATOZ_APPS_REORDER:Ljava/lang/String; = "AZBT"

.field public static final FEATURE_NAME_AUTO_ALIGN:Ljava/lang/String; = "ATAN"

.field public static final FEATURE_NAME_CANCEL_DROP_ITEM:Ljava/lang/String; = "HCMS"

.field public static final FEATURE_NAME_DELETE_APPS_FOLDER:Ljava/lang/String; = "DTAF"

.field public static final FEATURE_NAME_DELETE_HOME_FOLDER:Ljava/lang/String; = "DTHF"

.field public static final FEATURE_NAME_DISABLE_APP:Ljava/lang/String; = "HSDS"

.field public static final FEATURE_NAME_ENTER_ZEROPAGE:Ljava/lang/String; = "ZPEN"

.field public static final FEATURE_NAME_FOLDER_ADD_APPS_IN_APPS:Ljava/lang/String; = "FAAA"

.field public static final FEATURE_NAME_FOLDER_ADD_APPS_IN_HOME:Ljava/lang/String; = "FAAH"

.field public static final FEATURE_NAME_FOLDER_ADD_MULTIPLE_APPS:Ljava/lang/String; = "FAMA"

.field public static final FEATURE_NAME_FOLDER_N_SEC_OPEN:Ljava/lang/String; = "FNSO"

.field public static final FEATURE_NAME_GRID_STATUS:Ljava/lang/String; = "HSGR"

.field public static final FEATURE_NAME_HOME_DEFAULT_ICON_CLICK:Ljava/lang/String; = "HDIC"

.field public static final FEATURE_NAME_HOME_DEFAULT_PAGE_INDEX:Ljava/lang/String; = "HDPI"

.field public static final FEATURE_NAME_HOME_EDIT_ENTER:Ljava/lang/String; = "HOEE"

.field public static final FEATURE_NAME_HOME_EDIT_OPTION:Ljava/lang/String; = "HOEO"

.field public static final FEATURE_NAME_HOME_EMPTY_PAGE_COUNT:Ljava/lang/String; = "HEPC"

.field public static final FEATURE_NAME_HOME_FOLDER_COUNT:Ljava/lang/String; = "HSFO"

.field public static final FEATURE_NAME_HOME_FOLDER_NAME:Ljava/lang/String; = "HOFN"

.field public static final FEATURE_NAME_HOME_ICON_STARTED:Ljava/lang/String; = "HOIS"

.field public static final FEATURE_NAME_HOME_ITEM_COUNT:Ljava/lang/String; = "HOIC"

.field public static final FEATURE_NAME_HOME_ONLY_MODE_ENABLED:Ljava/lang/String; = "HOMD"

.field public static final FEATURE_NAME_HOME_PAGE_COUNT:Ljava/lang/String; = "HOME"

.field public static final FEATURE_NAME_HOME_PAGE_REORDER:Ljava/lang/String; = "HPRO"

.field public static final FEATURE_NAME_HOME_QUICK_OPTION:Ljava/lang/String; = "HSQO"

.field public static final FEATURE_NAME_HOTSEAT_ADD:Ljava/lang/String; = "HSAD"

.field public static final FEATURE_NAME_HOTSEAT_DELETE:Ljava/lang/String; = "HSDT"

.field public static final FEATURE_NAME_HOTSEAT_LIST:Ljava/lang/String; = "HST"

.field public static final FEATURE_NAME_ITEM_ARRANGMENT:Ljava/lang/String; = "IWAR"

.field public static final FEATURE_NAME_SEARCH_WIDGET_STARTED:Ljava/lang/String; = "GSWS"

.field public static final FEATURE_NAME_WIDGET_ADD:Ljava/lang/String; = "WGAD"

.field public static final FEATURE_NAME_WIDGET_COUNT:Ljava/lang/String; = "WGCT"

.field public static final FEATURE_NAME_WIDGET_DELETE:Ljava/lang/String; = "WGDT"

.field public static final FEATURE_NAME_WIDGET_LIST:Ljava/lang/String; = "LIST"

.field public static final FEATURE_NAME_WIDGET_SEARCH:Ljava/lang/String; = "WGSC"

.field public static final FEATURE_NAME_ZERO_PAGE_ENABLED:Ljava/lang/String; = "ZPON"

.field public static final FEATURE_NAME_ZERO_PAGE_STAY_TIME:Ljava/lang/String; = "ZPST"

.field public static final HOME_EDIT_OPTION_SETTINGS:Ljava/lang/String; = "Settings"

.field public static final HOME_EDIT_OPTION_WALLPAPER_AND_THEME:Ljava/lang/String; = "Wallpaper and theme"

.field public static final HOME_EDIT_OPTION_WIDGET:Ljava/lang/String; = "Widget"

.field public static final HOME_EDIT_OPTION_ZEROPAGE:Ljava/lang/String; = "Zero page"

.field private static final PREFERECES_WEEKLOGGING_WEEK_NUMBER:Ljava/lang/String; = "week_of_year_number"

.field private static final TAG:Ljava/lang/String; = "Launcher.GSIMLogging"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/Logging;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->homeWidgetListLogging()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->homeDefaultPageIndexLogging()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->homeItemCountLogging()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->zeroPageStatusLogging()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/logging/GSIMLogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->homeScreenModeLogging()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/launcher3/util/logging/GSIMLogging;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->hotseatListLogging()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/util/logging/GSIMLogging;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/GSIMLogging;->getGridInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getGridInfo()Ljava/lang/String;
    .locals 5

    const/4 v3, 0x2

    new-array v0, v3, [I

    sget-object v3, Lcom/android/launcher3/util/logging/GSIMLogging;->sContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/launcher3/Utilities;->loadCurrentGridSize(Landroid/content/Context;[I)V

    const/4 v3, 0x0

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging$SingletonHolder;->access$000()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v0

    return-object v0
.end method

.method private homeDefaultPageIndexLogging()V
    .locals 7

    sget-object v1, Lcom/android/launcher3/util/logging/GSIMLogging;->sContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/launcher3/Utilities;->getHomeDefaultPageKey(Landroid/content/Context;)I

    move-result v0

    const-string v2, "HDPI"

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, -0x1

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private homeItemCountLogging()V
    .locals 7

    const/16 v1, -0x64

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/launcher3/util/logging/GSIMLogging;->getItemCountByContainer(IZ)I

    move-result v0

    const-string v2, "HOIC"

    const/4 v3, 0x0

    int-to-long v4, v0

    const/4 v6, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void
.end method

.method private homeScreenModeLogging()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v6

    :goto_0
    const-string v2, "HOMD"

    const/4 v3, 0x0

    int-to-long v4, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private homeWidgetListLogging()V
    .locals 21

    const-string v5, "itemType=4"

    const-string v7, "screen"

    sget-object v2, Lcom/android/launcher3/util/logging/GSIMLogging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    if-eqz v8, :cond_2

    :try_start_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :try_start_1
    const-string v2, "appWidgetProvider"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    if-eqz v20, :cond_0

    const-string v2, "/"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v19, v2, v3

    new-instance v17, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    const-string v2, "LIST"

    const-wide/16 v10, -0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    invoke-direct {v0, v2, v1, v10, v11}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v15

    :cond_1
    :try_start_2
    const-string v10, "WGCT"

    const/4 v11, 0x0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    int-to-long v12, v2

    const/4 v14, 0x1

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertMultiLogging(Ljava/util/ArrayList;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    return-void

    :catch_1
    move-exception v15

    :try_start_3
    const-string v2, "Launcher.GSIMLogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "homeWidgetListLogging Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v15}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2
.end method

.method private hotseatListLogging()Ljava/util/ArrayList;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/logging/GSIMLoggingInfo;",
            ">;"
        }
    .end annotation

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x1

    new-array v6, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "intent"

    aput-object v5, v6, v4

    const-string v7, "container=-101"

    const-string v9, "screen"

    sget-object v4, Lcom/android/launcher3/util/logging/GSIMLogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/common/model/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    const/16 v17, 0x0

    if-eqz v10, :cond_0

    :try_start_0
    const-string v4, "intent"

    invoke-interface {v10, v4}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v13

    :goto_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v17, v17, 0x1

    :try_start_1
    invoke-interface {v10, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_1

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v12

    :goto_1
    :try_start_2
    new-instance v18, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "HST"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-wide/16 v20, -0x1

    move-object/from16 v0, v18

    move-wide/from16 v1, v20

    invoke-direct {v0, v4, v12, v1, v2}, Lcom/android/launcher3/util/logging/GSIMLoggingInfo;-><init>(Ljava/lang/String;Ljava/lang/String;J)V

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v11

    :try_start_3
    const-string v4, "Launcher.GSIMLogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hotseatListLogging Exception : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_2
    return-object v15

    :cond_1
    :try_start_4
    const-string v12, "Folder"
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v11

    :cond_2
    :goto_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catch_2
    move-exception v11

    goto :goto_3

    :catchall_0
    move-exception v4

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4
.end method

.method private zeroPageStatusLogging()V
    .locals 7

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isEnableZeroPage()Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v6

    :goto_0
    const-string v2, "ZPON"

    const/4 v3, 0x0

    int-to-long v4, v0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public classifyZeroPageStayTime(J)I
    .locals 3

    const-wide/16 v0, 0x12c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/16 v0, 0x12c

    :goto_0
    return v0

    :cond_0
    const-wide/16 v0, 0x3c

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    const/16 v0, 0x3c

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x1e

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    const/16 v0, 0x1e

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    const/4 v0, 0x5

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFolderNameValue(J)I
    .locals 7

    const/4 v6, 0x1

    const/16 v5, -0x64

    const/16 v4, -0x66

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, -0x64

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    invoke-virtual {p0, v5, v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->getItemCountByContainer(IZ)I

    move-result v1

    invoke-virtual {p0, v1, v5}, Lcom/android/launcher3/util/logging/GSIMLogging;->getNamedFolderCount(II)I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const-wide/16 v2, -0x66

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v4, v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->getItemCountByContainer(IZ)I

    move-result v0

    invoke-virtual {p0, v0, v4}, Lcom/android/launcher3/util/logging/GSIMLogging;->getNamedFolderCount(II)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public getZeroPageStayTime()J
    .locals 2

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->getZeroPageStayTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V
    .locals 7

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/logging/GSIMLogging$1;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging$1;-><init>(Lcom/android/launcher3/util/logging/GSIMLogging;Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public insertMultiLogging(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/util/logging/GSIMLoggingInfo;",
            ">;)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/logging/GSIMLogging$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/GSIMLogging$2;-><init>(Lcom/android/launcher3/util/logging/GSIMLogging;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public runAllStatusLogging()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/logging/GSIMLogging$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/GSIMLogging$3;-><init>(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public runFirstAppStatusLogging()V
    .locals 1

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportContextServiceSurveyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/logging/GSIMLogging$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/GSIMLogging$4;-><init>(Lcom/android/launcher3/util/logging/GSIMLogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/GSIMLogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setZeroPageStartTime()V
    .locals 0

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging$PreferencesLogging;->setZeroPageStartTime()V

    return-void
.end method
