.class public final Lcom/android/launcher3/util/logging/SALogging;
.super Lcom/android/launcher3/util/logging/Logging;
.source "SALogging.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/logging/SALogging$QOAction;,
        Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;
    }
.end annotation


# static fields
.field private static final EASY_MODE_ID:C = '5'

.field private static final EMPTY_DETAIL:Ljava/lang/String; = "Empty"

.field static final FOLDER_DETAIL:Ljava/lang/String; = "Folder"

.field private static final HOME_APPS_MODE_ID:C = '0'

.field private static final HOME_ONLY_MODE_ID:C = '3'

.field private static final MODE_INDEX:I = 0x1

.field private static final MULTI_SELECT_CANCEL_DELAY:I = 0x3e8

.field private static final QUICKOPTION_ADD_TO_SECURE_FOLDER:I = 0x7

.field private static final QUICKOPTION_APPINFO:I = 0xb

.field private static final QUICKOPTION_CLEAR_BADGE_APP:I = 0x5

.field private static final QUICKOPTION_CLEAR_BADGE_FOLDER:I = 0x6

.field public static final QUICKOPTION_ClOSE:I = 0xf

.field private static final QUICKOPTION_DISABLE:I = 0xa

.field private static final QUICKOPTION_PUT_TO_SLEEP:I = 0x8

.field private static final QUICKOPTION_REMOVE_FOLDER:I = 0x4

.field private static final QUICKOPTION_REMOVE_SHORTCUT:I = 0x2

.field private static final QUICKOPTION_REMOVE_WIDGET:I = 0x3

.field private static final QUICKOPTION_SELECT_APP:I = 0x1

.field private static final QUICKOPTION_SELECT_FOLDER:I = 0x10

.field private static final QUICKOPTION_SELECT_WIDGET:I = 0x11

.field private static final QUICKOPTION_UNINSTALL:I = 0x9

.field private static final QUICKOPTION_WIDGETINFO:I = 0xc

.field private static final STATUS_APPS:Ljava/lang/String; = "status_apps"

.field private static final STATUS_HOME:Ljava/lang/String; = "status_home"

.field private static final TAG:Ljava/lang/String; = "Launcher.SALogging"

.field private static final TRACKING_ID:Ljava/lang/String; = "401-399-1029810"

.field private static final VERSION:Ljava/lang/String; = "8.13"

.field private static mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private static sIsFinishAppBinding:Z

.field private static sIsFinishHomeBinding:Z

.field private static sPrevScreenId:Ljava/lang/String;


# instance fields
.field private final mModeList:[C

.field mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

.field private mStatusIDMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

.field private mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    sput-boolean v1, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    sput-boolean v1, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/Logging;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$23;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$23;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$24;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$24;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mQOInfo:Lcom/android/launcher3/util/logging/SALogging$QOAction;

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x33s
        0x35s
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->deleteLegacyFileIfExist()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/launcher3/util/logging/SALogging;ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging;->getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1702(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/launcher3/util/logging/SALogging;->sPrevScreenId:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/launcher3/util/logging/SALogging;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->registerStatusPref()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/util/logging/SALogging;)[C
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getFolderAppsCountAndColorDetail(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/util/logging/SALogging;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;C)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/util/logging/SALogging;I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/logging/SALogging;->getHotSeatAppStatusID(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/launcher3/util/logging/SALogging;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/logging/SALogging;->isBixbyRunning()Z

    move-result v0

    return v0
.end method

.method private analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I
    .locals 7

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v4, v4, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_0

    if-eqz p2, :cond_0

    iget-object v2, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-direct {p0, v2}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    iget-object v1, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    const-string v5, ","

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v4, "Launcher.SALogging"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "analysePackagesOfDragObject : invalid parameter - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v3
.end method

.method private changeEmptyDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "Empty"

    :cond_1
    return-object p1
.end method

.method private changeIdByMode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-ge v2, v1, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isEasyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x35

    :goto_0
    aput-char v1, v0, v2

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->isHomeOnlyModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x33

    goto :goto_0

    :cond_2
    aget-char v1, v0, v2

    goto :goto_0
.end method

.method private changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v1, v0

    if-ge v2, v1, :cond_0

    const/16 v1, 0x30

    if-eq p2, v1, :cond_0

    aput-char p2, v0, v2

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private deleteLegacyFileIfExist()V
    .locals 5

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/shared_prefs/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "SASettingPref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    const-string v2, "Launcher.SALogging"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteLegacyFileIfExist : success = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private getBixbyEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8

    const v7, 0x7f090158

    const v6, 0x7f090157

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-object v0

    :pswitch_1
    if-ne v2, v4, :cond_1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v2, v5, :cond_0

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-ne v2, v4, :cond_2

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    if-ne v2, v5, :cond_0

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-ne v2, v4, :cond_0

    const v3, 0x7f090159

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    if-ne v2, v4, :cond_0

    const v3, 0x7f090154

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_5
    if-ne v2, v4, :cond_0

    const v3, 0x7f090156

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_6
    if-ne v2, v4, :cond_3

    const v3, 0x7f090155

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-ne v2, v5, :cond_0

    const v3, 0x7f09015f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_7
    if-ne v2, v4, :cond_4

    const v3, 0x7f090150

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    if-ne v2, v5, :cond_0

    const v3, 0x7f090100

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_8
    if-ne v2, v4, :cond_5

    const v3, 0x7f090151

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_5
    if-ne v2, v5, :cond_0

    const v3, 0x7f090101

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_9
    if-ne v2, v4, :cond_6

    const v3, 0x7f09014e

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_6
    if-ne v2, v5, :cond_0

    const v3, 0x7f0900fe

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_a
    if-ne v2, v4, :cond_7

    const v3, 0x7f090153

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_7
    if-ne v2, v5, :cond_0

    const v3, 0x7f090103

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_b
    if-ne v2, v4, :cond_8

    const v3, 0x7f09015a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_8
    if-ne v2, v5, :cond_0

    const v3, 0x7f090104

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_c
    if-ne v2, v4, :cond_9

    const v3, 0x7f090152

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_9
    if-ne v2, v5, :cond_0

    const v3, 0x7f090102

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_d
    if-ne v2, v4, :cond_a

    const v3, 0x7f09014f

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_a
    if-ne v2, v5, :cond_0

    const v3, 0x7f0900ff

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_e
    if-ne v2, v4, :cond_0

    const v3, 0x7f09015b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_f
    const v3, 0x7f09015d

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getBixbyScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    const/4 v1, 0x0

    if-ne v3, v5, :cond_1

    const v4, 0x7f0901b7

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    if-ne v3, v6, :cond_2

    const v4, 0x7f0901a9

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v2

    if-ne v2, v5, :cond_3

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901af

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-ne v2, v6, :cond_0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0901a3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getEventIDForMutliSelect(ILcom/android/launcher3/Launcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const v9, 0x7f090184

    const v8, 0x7f090181

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v3

    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-object v0

    :pswitch_0
    if-eqz p3, :cond_1

    const v4, 0x7f090067

    invoke-virtual {p2, v4}, Lcom/android/launcher3/Launcher;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    :goto_1
    if-ne v3, v5, :cond_3

    if-eqz v1, :cond_2

    const v4, 0x7f090185

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const v4, 0x7f09018a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    if-ne v3, v7, :cond_5

    if-eqz v1, :cond_4

    const v4, 0x7f090185

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    goto :goto_0

    :cond_4
    const v4, 0x7f09018a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    if-ne v3, v6, :cond_0

    if-eqz v1, :cond_6

    const v4, 0x7f090139

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    goto :goto_0

    :cond_6
    const v4, 0x7f09013c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :pswitch_1
    if-ne v3, v5, :cond_7

    const v4, 0x7f090189

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_7
    if-ne v3, v6, :cond_0

    const v4, 0x7f09013b

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_2
    if-ne v3, v5, :cond_8

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_8
    if-ne v3, v7, :cond_9

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_9
    if-ne v3, v6, :cond_0

    const v4, 0x7f090135

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_3
    if-ne v3, v5, :cond_a

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_a
    if-ne v3, v7, :cond_b

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_b
    if-ne v3, v6, :cond_0

    const v4, 0x7f090138

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method private getFolderAppsCountAndColorDetail(I)Ljava/lang/String;
    .locals 11

    const/4 v5, 0x1

    const/4 v3, 0x0

    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, p1}, Lcom/android/launcher3/util/logging/SALogUtils;->getFolderItems(Landroid/content/Context;I)Landroid/database/Cursor;

    move-result-object v2

    if-eqz v2, :cond_3

    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "_id"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    sget-object v6, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-static {v6, v4}, Lcom/android/launcher3/util/logging/SALogUtils;->getAppsCountInFolder(Landroid/content/Context;I)I

    move-result v0

    const-string v6, "color"

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v2, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-gez v1, :cond_0

    move v1, v5

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v3, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "a%dc%d"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    const-string v6, ""

    goto :goto_2

    :cond_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    if-nez v3, :cond_4

    const-string v3, "Empty"

    :cond_4
    return-object v3
.end method

.method private getHotSeatAppStatusID(I)Ljava/lang/String;
    .locals 4

    const v3, 0x7f0901cc

    sget-object v2, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v1

    :pswitch_0
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_1
    const v2, 0x7f0901df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    const v2, 0x7f0901e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    const v2, 0x7f0901cd

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    const v2, 0x7f0901cb

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/android/launcher3/util/logging/SALogging;
    .locals 1

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging$SingletonHolder;->access$000()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    return-object v0
.end method

.method private getPackageAndTitleString(Lcom/android/launcher3/common/base/item/ItemInfo;)Ljava/lang/String;
    .locals 2

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    instance-of v1, p1, Lcom/android/launcher3/common/base/item/IconInfo;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/launcher3/common/base/item/ItemInfo;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "unknown"

    goto :goto_0

    :cond_2
    const-string v0, "APP"

    goto :goto_0
.end method

.method private getQuickOptionEventID(ILcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    packed-switch p1, :pswitch_data_0

    :goto_1
    move-object v1, v0

    goto :goto_0

    :pswitch_0
    const v3, 0x7f09015d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_0
    .end packed-switch
.end method

.method private getQuickOptionScreenID(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    :goto_0
    return-object v2

    :cond_0
    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getTopStageMode()I

    move-result v4

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getSecondTopStageMode()I

    move-result v3

    if-ne v4, v6, :cond_2

    const v5, 0x7f0901b8

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    move-object v2, v1

    goto :goto_0

    :cond_2
    if-ne v4, v7, :cond_3

    const v5, 0x7f0901ab

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const/4 v5, 0x5

    if-ne v4, v5, :cond_1

    if-ne v3, v6, :cond_4

    const v5, 0x7f0901b0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_4
    if-ne v3, v7, :cond_1

    const v5, 0x7f0901a4

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private isBixbyRunning()Z
    .locals 2

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getStateManager()Lcom/android/launcher3/executor/StateManager;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/launcher3/executor/StateManager;->isRuleRunning()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerStatusPref()V
    .locals 9

    sget-object v4, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901df

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cb

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901db

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901ca

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901da

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901bf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c3

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d4

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c1

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c7

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901de

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901dc

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c6

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901e2

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d9

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901d8

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_apps"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901c0

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901ce

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901cf

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    const v5, 0x7f0901dd

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status_home"

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/launcher3/util/logging/SALogging;->mStatusIDMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v6, p0, Lcom/android/launcher3/util/logging/SALogging;->mModeList:[C

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-char v2, v6, v4

    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/util/logging/SALogging;->changeIdByMode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->getInstance()Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;

    move-result-object v4

    new-instance v5, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    invoke-direct {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;-><init>()V

    const-string v6, "com.sec.android.app.launcher.prefs.sa"

    invoke-virtual {v5, v6, v1}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->addKeys(Ljava/lang/String;Ljava/util/Set;)Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;

    move-result-object v5

    invoke-virtual {v5}, Lcom/samsung/context/sdk/samsunganalytics/LogBuilders$SettingPrefBuilder;->build()Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/samsung/context/sdk/samsunganalytics/SamsungAnalytics;->registerSettingPref(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Application;)V
    .locals 1

    sput-object p1, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$1;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$1;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/app/Application;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    new-instance v0, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v0}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-void
.end method

.method public insertAddToFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$9;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$9;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAddToLockedFolderLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$10;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$10;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertAddWidgetItemLog(Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$3;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$3;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertCancelAddWidgetLog(Landroid/content/ComponentName;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$33;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$33;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertChangeGridLog(IIZZ)V
    .locals 6

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$21;

    move-object v1, p0

    move v2, p4

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$21;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZIIZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertClickGridButtonLog(IIZ)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$22;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$22;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertCloseWidgetFolderLog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$5;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$5;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertCloseWidgetLog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$4;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$4;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertEnterResizeWidgetLog(Landroid/appwidget/AppWidgetProviderInfo;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$34;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$34;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$27;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$27;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$28;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$28;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 9

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/launcher3/util/logging/SALogging$30;

    move-object v2, p0

    move-object v3, p2

    move-object v4, p5

    move-object v5, p1

    move-wide v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/launcher3/util/logging/SALogging$30;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$29;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/launcher3/util/logging/SALogging$29;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertFolderMoveAppLogs(Lcom/android/launcher3/Launcher;Z)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$15;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertGesturePointOnTrayChange(III)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$35;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/launcher3/util/logging/SALogging$35;-><init>(Lcom/android/launcher3/util/logging/SALogging;III)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertGoogleSearchLaunchCount()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$36;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$36;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertHideAppsLog(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/IconInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/IconInfo;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/IconInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901cf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v0}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v3, Lcom/android/launcher3/util/logging/SALogging;->sContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0901ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;I)V

    return-void
.end method

.method public insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$2;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertLockedItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$6;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertMoveFromFolderLog(JZILcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p5, v7}, Lcom/android/launcher3/util/logging/SALogging;->analysePackagesOfDragObject(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Ljava/lang/StringBuilder;)I

    move-result v6

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$14;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/launcher3/util/logging/SALogging$14;-><init>(Lcom/android/launcher3/util/logging/SALogging;JZII)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertMoveToAppLog(Lcom/android/launcher3/Launcher;Z)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$8;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$8;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Z)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertMoveToPageLog(Ljava/lang/Object;Z)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$11;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$11;-><init>(Lcom/android/launcher3/util/logging/SALogging;ZLjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertMultiSelectCancelLog(Lcom/android/launcher3/Launcher;ZZ)V
    .locals 4

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    invoke-virtual {v0}, Lcom/android/launcher3/util/alarm/Alarm;->alarmPending()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/launcher3/util/logging/SALogging;->mMultiSelectCancelAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/android/launcher3/util/alarm/Alarm;->setAlarm(J)V

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$19;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/launcher3/util/logging/SALogging$19;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ZZ)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertMultiSelectLog(ILjava/util/ArrayList;Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;",
            "Lcom/android/launcher3/Launcher;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$20;

    move-object v1, p0

    move-object v2, p3

    move v3, p1

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/util/logging/SALogging$20;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertQOEventLog(ILcom/android/launcher3/Launcher;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$32;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$32;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertQuickOptionEventLog(ILcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$16;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/android/launcher3/util/logging/SALogging$16;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertQuickViewEventLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$7;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/launcher3/util/logging/SALogging$7;-><init>(Lcom/android/launcher3/util/logging/SALogging;Lcom/android/launcher3/Launcher;Lcom/android/launcher3/common/base/item/ItemInfo;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public insertStatusLog(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$25;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$25;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$26;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/util/logging/SALogging$26;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public insertViewFlowLog(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$31;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$31;-><init>(Lcom/android/launcher3/util/logging/SALogging;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultValueForAppStatusLog(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$12;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$12;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setDefaultValueForHomeStatusLog(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$13;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/logging/SALogging$13;-><init>(Lcom/android/launcher3/util/logging/SALogging;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startLoader()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    sput-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    return-void
.end method

.method public updateDefaultPageLog()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$17;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$17;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateLogValuesForHomeItems()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishHomeBinding:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForHomeItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method

.method public updatePageLogs()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/util/logging/SALogging$18;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/logging/SALogging$18;-><init>(Lcom/android/launcher3/util/logging/SALogging;)V

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateStatusLogValuesForAppsItem()V
    .locals 2

    sget-boolean v0, Lcom/android/launcher3/util/logging/SALogging;->sIsFinishAppBinding:Z

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/logging/SALogging;->removeCallBacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher3/util/logging/SALogging;->mUpdateStatusLogValuesForAppItem:Ljava/lang/Runnable;

    const/16 v1, 0x1f4

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/util/logging/SALogging;->runOnLoggingThreadDelayed(Ljava/lang/Runnable;I)V

    goto :goto_0
.end method
