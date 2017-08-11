.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;
.super Ljava/lang/Object;
.source "DeskPanel.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/NotificationGroupManager$OnGroupChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

.field private mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

.field private mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

.field private mHandler:Landroid/os/Handler;

.field private mNotificationListener:Landroid/service/notification/NotificationListenerService;

.field private mNotificationListenerState:I

.field private mPosition:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTaskBarHeight:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListenerState:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListenerState:I

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x200003

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListenerState:I

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    return-void
.end method

.method private makeDeskPanelNotificationView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004c

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setDeskPanel(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->init()V

    :cond_0
    return-void
.end method

.method private makeDeskPanelQuickSettingView()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04004d

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setDeskPanel(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)V

    :cond_0
    return-void
.end method

.method private reloadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/samsung/android/framework/res/R$dimen;->task_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    :cond_0
    return-void
.end method


# virtual methods
.method public addNotification(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->addNotification(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public addNotificationListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->addListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V

    :cond_0
    return-void
.end method

.method public addQuickSettingListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$DeskQuickSettingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->addListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$DeskQuickSettingListener;)V

    :cond_0
    return-void
.end method

.method public changeAllAndSingle()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->changeAllAndSingle()V

    return-void
.end method

.method public clear()V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v1}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    const v1, 0x200003

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListenerState:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->clear()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeskPanel"

    const-string/jumbo v2, "Unable to unregister notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public collapseAll(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseAll(Z)V

    :cond_1
    return-void
.end method

.method public collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public collapseDeskQuickSettingView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->collapseDeskQuickSettingView(Z)V

    :cond_0
    return-void
.end method

.method public expandDeskNotificationView(ZLandroid/view/animation/Interpolator;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :cond_0
    return-void
.end method

.method public getDeskNotificationView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskNotificationView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskPanelViewNotificatioinBottomBarView()Lcom/android/systemui/statusbar/NotificationBottomBarView;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const v1, 0x7f130186

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationBottomBarView;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskPanelViewNotificatioinBottomBarViewArea()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const v1, 0x7f130185

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getDeskPanelViewNotification()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    return-object v0
.end method

.method public getDeskPanelViewQuickSetting()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    return-object v0
.end method

.method public getDeskQuickSettingView()Landroid/view/ViewGroup;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->getDeskQuickSettingView()Landroid/view/ViewGroup;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public getPreviewState(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getPreviewState(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public getTaskBarHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    return v0
.end method

.method public getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    return-object v0
.end method

.method public isDeskAllNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskAllNotificationViewVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeskNotificationViewVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDeskPanelQuickSettingVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->isDeskPanelQuickSettingVisible()Z

    move-result v0

    return v0
.end method

.method public isDeskPanelViewNotificationPreview()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationPreview()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isTaskBarArea(FF)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mPosition:I

    packed-switch v2, :pswitch_data_0

    return v1

    :pswitch_0
    return v1

    :pswitch_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :pswitch_2
    return v1

    :pswitch_3
    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mTaskBarHeight:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-ltz v2, :cond_1

    :goto_1
    return v0

    :cond_1
    move v0, v1

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifyDeskPanelPositionChanged(I)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mPosition:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->notifyDeskPanelPositionChanged(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->notifyDeskPanelPositionChanged(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelPosition(I)V

    return-void
.end method

.method public onGroupCreatedFromChildren(Lcom/android/systemui/statusbar/phone/NotificationGroupManager$NotificationGroup;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->requestNotificationUpdate()V

    :cond_0
    return-void
.end method

.method public onGroupExpansionChanged(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPanelHeight(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onGroupsChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->requestNotificationUpdate()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onScreenTurnedOff()V

    :cond_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onScreenTurnedOn()V

    :cond_0
    return-void
.end method

.method public onStatusBarIconMouseLeftClick(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->onStatusBarIconMouseLeftClick(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public registerNotificationListener()V
    .locals 6

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListener:Landroid/service/notification/NotificationListenerService;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V

    const v1, 0x200001

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mNotificationListenerState:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string/jumbo v1, "DeskPanel"

    const-string/jumbo v2, "Unable to register notification listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public removeNotification(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotification(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public removeNotificationListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V

    :cond_0
    return-void
.end method

.method public removeQuickSettingListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$DeskQuickSettingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->removeListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting$DeskQuickSettingListener;)V

    :cond_0
    return-void
.end method

.method public resetNotificationPanelHeight()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPanelHeight(Landroid/view/View;)V

    return-void
.end method

.method public setBottomBarView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setBottomBarView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V

    :cond_0
    return-void
.end method

.method public setDNDSuppressed(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setDNDSuppressed(Z)V

    :cond_0
    return-void
.end method

.method public setDeskPanelViewNotificationPreview(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setDeskPanelViewNotificationPreview(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->reloadDimens()V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    :cond_0
    return-void
.end method

.method public setKeyguardState(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setKeyguardState(Z)V

    return-void
.end method

.method public setNotificationGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    :cond_0
    return-void
.end method

.method public setNotificationPanelTransparentBackground()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationPanelTransparentBackground()V

    return-void
.end method

.method public setRemoteInputActive(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setRemoteInputActive(Z)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setStatusBarState(I)V

    :cond_0
    return-void
.end method

.method public setup(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;Landroid/os/Handler;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->makeDeskPanelNotificationView()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->makeDeskPanelQuickSettingView()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelWindowManager:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    return-void
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->toggleDeskNotificationView(Z)V

    :cond_0
    return-void
.end method

.method public toggleDeskQuickSettingView(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewQuickSetting:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewQuickSetting;->toggleDeskQuickSettingView(Z)V

    :cond_0
    return-void
.end method

.method public updateNotification(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->mDeskPanelViewNotification:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateNotification(Landroid/view/View;)V

    :cond_0
    return-void
.end method
