.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;
.super Landroid/widget/LinearLayout;
.source "ClearCoverNotificationWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ExpandRunnable;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDisplayedNotificationCount:I

.field private mExpandNotificationDelay:I

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

.field private mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    return v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->updateNotifications()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x578

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mExpandNotificationDelay:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-void
.end method

.method private getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 6

    const-string/jumbo v0, ""

    const/16 v3, 0x2200

    :try_start_0
    invoke-virtual {p2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Name not found for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/service/notification/StatusBarNotification;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    array-length v3, p1

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, p1, v2

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-object v0
.end method

.method private getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;
    .locals 2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Icon;->getResPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Icon;->getResId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    return-object v0
.end method

.method private initializeNotifications()V
    .locals 6

    const/4 v5, 0x4

    sget-object v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "initializeNotifications()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v2, v5, [Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_notification_item:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aput-object v2, v3, v0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v2, v2, v0

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v2

    new-instance v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$3;

    invoke-direct {v3, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$3;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;)V

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->setCoverNotificationListener(Lcom/sec/android/cover/monitor/CoverNotificationMonitor$CoverNotificationListener;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->updateNotifications()V

    return-void
.end method

.method private isValidNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    const/16 v3, 0x96

    if-lt v2, v3, :cond_1

    const/16 v3, 0xa0

    if-gt v2, v3, :cond_1

    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Showing Secure folder noti on owner user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification with invalid icon"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1
    if-eq v2, v0, :cond_0

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    sget-object v3, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "Skiping notification from other user"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private updateNotifications()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v15

    invoke-virtual {v15}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v11

    if-nez v11, :cond_3

    sget-object v16, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "updateNotifications(): notifications == null: "

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    if-nez v11, :cond_2

    const/4 v15, 0x1

    :goto_0
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, v16

    invoke-static {v0, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    :cond_0
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    :cond_1
    return-void

    :cond_2
    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverDatabaseManager;

    move-result-object v15

    const-string/jumbo v16, "lock_screen_show_notifications"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Lcom/sec/android/cover/manager/CoverDatabaseManager;->getSecureInt(Ljava/lang/String;I)I

    move-result v15

    if-eqz v15, :cond_7

    const/4 v5, 0x1

    :goto_1
    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v15}, Lcom/sec/android/cover/CoverUtils;->isUsimDownloadTopActivity(Landroid/content/Context;)Z

    move-result v15

    if-eqz v15, :cond_8

    :cond_4
    sget-object v15, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    const-string/jumbo v16, "updateNotifications(): Notifications disabled on lockscreen"

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v15, 0x8

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eqz v15, :cond_6

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    move/from16 v16, v0

    const/16 v17, 0x0

    invoke-interface/range {v15 .. v17}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    :cond_5
    const/4 v15, 0x0

    move-object/from16 v0, p0

    iput v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    :cond_6
    return-void

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getGroupNotificationsSummaries([Landroid/service/notification/StatusBarNotification;)Ljava/util/Map;

    move-result-object v9

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v15

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getPackageManagerForUser(I)Landroid/content/pm/PackageManager;

    move-result-object v12

    const/4 v4, 0x0

    const/4 v15, 0x0

    array-length v0, v11

    move/from16 v16, v0

    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_e

    aget-object v13, v11, v15

    sget-object v17, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Processing notification: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v17

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->isLockScreenEnabledPkg(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->isValidNotification(Landroid/service/notification/StatusBarNotification;)Z

    move-result v17

    if-nez v17, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_a
    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_b

    invoke-interface {v9, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v14, :cond_b

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_c

    :cond_b
    add-int/lit8 v4, v4, 0x1

    const/16 v17, 0x4

    move/from16 v0, v17

    if-gt v4, v0, :cond_9

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getNotificationIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/drawable/Icon;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    aget-object v17, v17, v18

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setIcon(Landroid/graphics/drawable/Icon;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    aget-object v17, v17, v18

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    sget v19, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open:I

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v12}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getApplicatioName(Ljava/lang/String;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aput-object v20, v19, v21

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {v13}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    aget-object v17, v17, v18

    new-instance v18, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;

    new-instance v19, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

    sget-object v20, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->NOTIFICATION:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2, v13}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v19

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;)V

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_c
    sget-object v17, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->TAG:Ljava/lang/String;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "Notification for group "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, " is not "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    move-object/from16 v17, v0

    add-int/lit8 v18, v4, -0x1

    aget-object v17, v17, v18

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    :cond_e
    move-object/from16 v0, p0

    iget v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    if-eq v4, v15, :cond_10

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    if-eqz v15, :cond_f

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-interface {v15, v0, v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;->onDisplayedNotificationCount(II)V

    :cond_f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    :cond_10
    const/4 v15, 0x4

    if-le v4, v15, :cond_12

    add-int/lit8 v10, v4, -0x3

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->more_notification_format:I

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x0

    aput-object v19, v18, v20

    invoke-virtual/range {v16 .. v18}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setText(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    new-instance v16, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;

    new-instance v17, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;

    sget-object v18, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;->EXPAND:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    move-object/from16 v3, v19

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$ActionType;Landroid/service/notification/StatusBarNotification;)V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object/from16 v2, v17

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationClickHandler;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$NotificationCoverOpenAction;)V

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    const/16 v16, 0x3

    aget-object v15, v15, v16

    invoke-virtual/range {p0 .. p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    sget v17, Lcom/sec/android/sviewcover/R$string;->minimized_notification_talkback_description_open_more:I

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_11
    return-void

    :cond_12
    move v7, v4

    :goto_4
    const/4 v15, 0x4

    if-ge v7, v15, :cond_11

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mNotificationViews:[Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;

    aget-object v15, v15, v7

    const/16 v16, 0x8

    invoke-virtual/range {v15 .. v16}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationView;->setVisibility(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_4
.end method


# virtual methods
.method public getDisplayedNotificationCount()I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mDisplayedNotificationCount:I

    return v0
.end method

.method protected getPackageManagerForUser(I)Landroid/content/pm/PackageManager;
    .locals 6

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    if-ltz p1, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x4

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->initializeNotifications()V

    return-void
.end method

.method public setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->mListener:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;

    return-void
.end method
