.class Lcom/android/launcher3/home/FestivalPageController;
.super Ljava/lang/Object;
.source "FestivalPageController.java"


# static fields
.field private static final ACTION_FESTIVAL_CARDWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_EVENTWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

.field private static final ACTION_FESTIVAL_EVENTWIDGET_PERMISSION_DENY:Ljava/lang/String; = "com.sec.android.widget.myeventwidget.FESTIVAL_CANCEL_ACTION"

.field private static final ACTION_FESTIVAL_EVENTWIDGET_UPDATE:Ljava/lang/String; = "com.sec.android.widget.myeventwidget.FESTIVAL_PERMISSION_CHECK_CALLBACK"

.field private static final ACTION_FESTIVAL_GREETINGWIDGET_ADDED:Ljava/lang/String; = "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

.field private static final BIRTHDAY_FESTIVAL:I = 0x3e7

.field private static final CHILDREN_DAY_FESTIVAL:I = 0x6

.field private static final CHINESE_VALENTINE_DAY_FESTIVAL:I = 0xf

.field private static final CHRISTMAS_FESTIVAL:I = 0xb

.field private static final CONGRATULATION_FESTIVAL:I = 0x3e6

.field private static final CURRENT_FESTIVAL_STRING_KEY:Ljava/lang/String; = "current_sec_theme_package_event_title"

.field private static final DEBUG:Z = false

.field private static final DEBUGGABLE:Z = true

.field private static final DOUBLE_NINTH_DAY_FESTIVAL:I = 0x11

.field private static final DRAGON_BOAT_FESTIVAL:I = 0xe

.field private static final FESTIVAL_EFFECT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_festival_enabled"

.field private static final FESTIVAL_PAGE_INIT_ERROR:I = -0x1

.field private static final LANTERN_FESTIVAL:I = 0xd

.field private static final MAY_DAY_FESTIVAL:I = 0x4

.field private static final MID_AUTUMN_FESTIVAL:I = 0x10

.field private static final MYEVENT_ENABLED:Ljava/lang/String; = "current_sec_theme_package_myevent_enabled"

.field private static final MYEVENT_WIDGET_CALSS_NAME:Ljava/lang/String; = "com.sec.android.widget.myeventwidget.MyEventWidgetProvider"

.field private static final MYEVENT_WIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widget.myeventwidget"

.field private static final NATIONAL_DAY_FESTIVAL:I = 0xa

.field private static final NEW_YEAR_DAY_FESTIVAL:I = 0x1

.field private static final PREFERENCES_FESTIVAL_INTENT_STRING:Ljava/lang/String; = "festivalstring"

.field private static final PREFERENCES_FESTIVAL_INTENT_STRING_HOMEONLY:Ljava/lang/String; = "festivalstring_homeonly"

.field private static final PREFERENCES_FESTIVAL_PERMISSION_ENABLE:Ljava/lang/String; = "festivalpermission_enable"

.field private static final SPRING_FESTIVAL:I = 0xc

.field private static final TAG:Ljava/lang/String; = "FestivalPageManager"

.field private static final TEACHER_DAY_FESTIVAL:I = 0x9

.field private static final THANK_YOU_DAY_FESTIVAL:I = 0x3

.field private static final TOMB_SWEEPING_DAY_FESTIVAL:I = 0x82

.field private static final VALENTINE_DAY_FESTIVAL:I = 0x2

.field private static final festivalIndexArray:[I

.field private static final festivalNameArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBackupPages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mFestivalEnabled:Z

.field private mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

.field private mFestivalPageIndex:I

.field private mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

.field private mFestivalWidgetId:I

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mWorkspaceLoaded:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/FestivalPageController$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/FestivalPageController$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/FestivalPageController;->festivalNameArray:Landroid/util/SparseArray;

    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/launcher3/home/FestivalPageController;->festivalIndexArray:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x6
        0x9
        0xa
        0x11
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x82
        0x3e6
        0x3e7
    .end array-data
.end method

.method constructor <init>(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/home/HomeController;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    iput v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    iput v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    iput-object v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

    iput-object v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iput-boolean v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspaceLoaded:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    iput-object p1, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getWorkspace()Lcom/android/launcher3/home/Workspace;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-void
.end method

.method private bindFestivalWidgetIfNeccessary()V
    .locals 15

    const/4 v3, -0x1

    const/4 v2, 0x5

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalCompName()Landroid/content/ComponentName;

    move-result-object v14

    if-nez v14, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    invoke-static {v0, v14, v1}, Lcom/android/launcher3/home/HomeLoader;->getProviderInfo(Landroid/content/Context;Landroid/content/ComponentName;Lcom/android/launcher3/common/compat/UserHandleCompat;)Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v1, 0x0

    invoke-direct {v12, v0, v10, v1}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Landroid/content/Context;Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Landroid/os/Parcelable;)V

    iput v2, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iput v2, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    iput v2, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v2, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v12}, Lcom/android/launcher3/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Lcom/android/launcher3/Launcher;Lcom/android/launcher3/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v11

    iget v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    :cond_2
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    invoke-virtual {v0, v1, v10, v11}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v13

    if-nez v13, :cond_3

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    const-string v0, "FestivalPageManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing festival widget: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " belongs to component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", as the launcher is unable to bing a new widget id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-nez v0, :cond_4

    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    iget-object v2, v10, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;-><init>(ILandroid/content/ComponentName;)V

    iput-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    :cond_4
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanX:I

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->spanY:I

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanX:I

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanX:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v12, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->minSpanY:I

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->minSpanY:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-static {}, Lcom/android/launcher3/common/compat/UserHandleCompat;->myUserHandle()Lcom/android/launcher3/common/compat/UserHandleCompat;

    move-result-object v1

    iput-object v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->user:Lcom/android/launcher3/common/compat/UserHandleCompat;

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->restoreStatus:I

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    invoke-virtual {v0, v1, v2, v10}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

    :cond_5
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

    iput-object v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setTag(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->onBindAppWidget(Lcom/android/launcher3/Launcher;)V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-wide v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    iget-object v4, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-wide v4, v4, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    iget-object v7, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v7, v7, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    iget-object v8, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v8, v8, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanX:I

    iget-object v9, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v9, v9, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual/range {v0 .. v9}, Lcom/android/launcher3/home/HomeController;->addInScreen(Landroid/view/View;JJIIII)V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1, v10}, Lcom/android/launcher3/home/HomeBindController;->addWidgetToAutoAdvanceIfNeeded(Landroid/view/View;Landroid/appwidget/AppWidgetProviderInfo;)V

    iget v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/FestivalPageController;->sendFestivalWidgetType(I)V

    goto/16 :goto_0
.end method

.method private deleteFestivalWidget()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageCount()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getBindController()Lcom/android/launcher3/home/HomeBindController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/HomeBindController;->removeAppWidget(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getAppWidgetHost()Lcom/android/launcher3/home/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget v1, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    goto :goto_0
.end method

.method private getCurrentFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "current_sec_theme_package_event_title"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getFestivalCompName()Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    const-string v1, "com.sec.android.widget.myeventwidget"

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/FestivalPageController;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.widget.myeventwidget"

    const-string v2, "com.sec.android.widget.myeventwidget.MyEventWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private getFestivalPageCount()I
    .locals 8

    const/4 v3, -0x1

    iget-object v4, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-nez v4, :cond_1

    move v2, v3

    :cond_0
    return v2

    :cond_1
    const/4 v2, 0x0

    iput v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v1}, Lcom/android/launcher3/home/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iget-object v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3, v0}, Lcom/android/launcher3/home/Workspace;->getIdForScreen(Lcom/android/launcher3/common/base/view/CellLayout;)J

    move-result-wide v4

    const-wide/16 v6, -0x1f5

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    iput v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private getFestivalPageInfo(Lcom/android/launcher3/home/LauncherAppWidgetInfo;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    int-to-long v0, v0

    iput-wide v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->container:J

    const-wide/16 v0, -0x1f5

    iput-wide v0, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->screenId:J

    iput v2, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellX:I

    iput v2, p1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->cellY:I

    return-void
.end method

.method private getFestivalPermissionEnabled(Lcom/android/launcher3/Launcher;)Z
    .locals 4

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "festivalpermission_enable"

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private getFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "festivalstring_homeonly"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "festivalstring"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getFestivalType(Ljava/lang/String;)I
    .locals 6

    const/4 v0, -0x1

    const/4 v2, 0x0

    :goto_0
    sget-object v3, Lcom/android/launcher3/home/FestivalPageController;->festivalNameArray:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    sget-object v3, Lcom/android/launcher3/home/FestivalPageController;->festivalIndexArray:[I

    aget v0, v3, v2

    sget-object v3, Lcom/android/launcher3/home/FestivalPageController;->festivalNameArray:Landroid/util/SparseArray;

    sget-object v4, Lcom/android/launcher3/home/FestivalPageController;->festivalIndexArray:[I

    aget v4, v4, v2

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "FestivalPageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getFestivalType of festivalName : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " festivalIndexArray[ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/launcher3/home/FestivalPageController;->festivalIndexArray:[I

    aget v5, v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v1, v0

    goto :goto_1
.end method

.method private hasFestivalPage()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageCount()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isApplicationInstalled(Ljava/lang/String;)Z
    .locals 6

    const/4 v1, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    const-string v4, "FestivalPageManager"

    const-string v5, "festival widget is not installed"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isFestivalChanged(Lcom/android/launcher3/Launcher;)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/FestivalPageController;->isFestivalSettingsEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/FestivalPageController;->isMyEventSettingsEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_0
    const/4 v2, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/FestivalPageController;->getCurrentFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "FestivalPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFestivalChanged prevFestivalString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , festivalString : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_6

    if-nez v1, :cond_4

    const/4 v0, 0x1

    :cond_1
    :goto_1
    if-nez v4, :cond_2

    const/4 v5, 0x0

    invoke-direct {p0, p1, v5}, Lcom/android/launcher3/home/FestivalPageController;->setFestivalString(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V

    :cond_2
    const-string v5, "FestivalPageManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isFestivalChanged : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " themeEnable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    const/4 v0, 0x1

    goto :goto_1
.end method

.method private isFestivalSettingsEnabled(Lcom/android/launcher3/Launcher;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_festival_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isMyEventSettingsEnabled(Lcom/android/launcher3/Launcher;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "current_sec_theme_package_myevent_enabled"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private sendFestivalWidgetType(I)V
    .locals 10

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->getCurrentFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v6, ";"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v6, "FestivalPageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "festivalName.length : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " festivalDayList : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v6, v2, v9

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalType(Ljava/lang/String;)I

    move-result v1

    const-string v6, "FestivalPageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "festivalName[0]  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v2, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  fesivalKey : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, -0x1

    const-string v6, "com.sec.android.widget.myeventwidget"

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->isApplicationInstalled(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v5, 0x2

    :cond_2
    const/4 v3, 0x0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_4

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.FESTIVAL_GREETINGWIDGET_ADDED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->isFestivalChanged(Lcom/android/launcher3/Launcher;)Z

    move-result v4

    if-eqz v3, :cond_3

    const-string v6, "widgetId"

    invoke-virtual {v3, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v6, "festivalType"

    invoke-virtual {v3, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "isFestivalChanged"

    invoke-virtual {v3, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6, v3}, Lcom/android/launcher3/Launcher;->sendBroadcast(Landroid/content/Intent;)V

    :cond_3
    const-string v6, "FestivalPageManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sendFestivalWidgetType  [ "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " ]  = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->setFestivalString(Lcom/android/launcher3/Launcher;)V

    goto/16 :goto_0

    :cond_4
    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.FESTIVAL_MYEVENTWIDGET_ADDED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.android.launcher.action.FESTIVAL_CARDWIDGET_ADDED"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private setFestivalEnabled()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->isFestivalChanged(Lcom/android/launcher3/Launcher;)Z

    move-result v1

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v6}, Lcom/android/launcher3/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "current_sec_theme_package_festival_enabled"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    move v2, v4

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->getCurrentFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6, v4}, Lcom/android/launcher3/home/FestivalPageController;->setFestivalPermissionEnabled(Lcom/android/launcher3/Launcher;Z)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPermissionEnabled(Lcom/android/launcher3/Launcher;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    iput-boolean v4, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    :goto_1
    return-void

    :cond_1
    move v2, v5

    goto :goto_0

    :cond_2
    iput-boolean v5, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    goto :goto_1
.end method

.method private setFestivalPermissionEnabled(Lcom/android/launcher3/Launcher;Z)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "festivalpermission_enable"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setFestivalString(Lcom/android/launcher3/Launcher;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/FestivalPageController;->getCurrentFestivalString(Lcom/android/launcher3/Launcher;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "festivalstring_homeonly"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v3, "festivalstring"

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method private setFestivalString(Lcom/android/launcher3/Launcher;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lcom/android/launcher3/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportHomeModeChange()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "festivalstring_homeonly"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void

    :cond_0
    const-string v2, "festivalstring"

    invoke-interface {v0, v2, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method


# virtual methods
.method bindFestivalPageIfNecessary()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspaceLoaded:Z

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->setFestivalEnabled()V

    iget-boolean v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/FestivalPageController;->createCustomFestivalPage()V

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->bindFestivalWidgetIfNeccessary()V

    goto :goto_0
.end method

.method createCustomFestivalPage()V
    .locals 10

    const-wide/16 v8, -0x1f5

    const/4 v6, 0x1

    const/4 v5, -0x1

    const/4 v4, 0x0

    iget-boolean v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspaceLoaded:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageCount()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getChildCount()I

    move-result v2

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageCount()I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040065

    iget-object v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0, v5, v5, v4, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setCellDimensions(IIII)V

    invoke-virtual {v0, v6, v6}, Lcom/android/launcher3/common/base/view/CellLayout;->setGridSize(II)V

    invoke-virtual {v0, v4, v4, v4, v4}, Lcom/android/launcher3/common/base/view/CellLayout;->setPadding(IIII)V

    goto :goto_1
.end method

.method getFestivalEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    return v0
.end method

.method initFestivalPageIfNecessary()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/home/FestivalPageController;->onDestroy()V

    return-void
.end method

.method onDestroy()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->deleteFestivalWidget()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/FestivalPageController;->removeCustomFestivalPage()V

    iget-object v0, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidget:Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iput-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalHostView:Landroid/appwidget/AppWidgetHostView;

    iput v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalWidgetId:I

    iput v2, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    iput-boolean v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalEnabled:Z

    iput-boolean v3, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspaceLoaded:Z

    iput-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iput-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iput-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method removeCustomFestivalPage()V
    .locals 4

    const-wide/16 v2, -0x1f5

    invoke-direct {p0}, Lcom/android/launcher3/home/FestivalPageController;->getFestivalPageCount()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v1, "FestivalPageManager"

    const-string v2, "removeCustomZeroPage - Expected custom festival page to exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mBackupPages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/launcher3/home/FestivalPageController;->mFestivalPageIndex:I

    goto :goto_0
.end method
