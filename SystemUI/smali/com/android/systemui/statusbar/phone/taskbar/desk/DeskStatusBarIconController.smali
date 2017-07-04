.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;
.super Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.source "DeskStatusBarIconController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;


# instance fields
.field private mBatteryMeterViewBg:Landroid/widget/LinearLayout;

.field private mIconsPendingIntentMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/app/PendingIntent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBar;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 5

    const/4 v4, 0x1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    const v1, 0x7f1301b0

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/android/systemui/SystemUIFactory;->getInstance()Lcom/android/systemui/SystemUIFactory;

    move-result-object v1

    invoke-virtual {v1, p1, p4}, Lcom/android/systemui/SystemUIFactory;->createDeskNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->setMouse(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->getNotificationInnerAreaView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    const v1, 0x7f1301ab

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaInner:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const v1, 0x7f1301b3

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f02077e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->semSetHoverPopupType(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0710

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_REAL_TIME_NETWORK_SPEED:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setClickable(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020780

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNetspeedView:Lcom/android/systemui/statusbar/policy/NetspeedView;

    new-instance v2, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;)V

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/NetspeedView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->scaleBatteryMeterViews(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/BatteryMeterView;->setDesktopMode(Z)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v1, v4}, Lcom/android/systemui/BatteryMeterView;->setDesktopMode(Z)V

    return-void
.end method

.method private findIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private findQsPanelDetail(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    const v1, 0x1040023

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "Bluetooth"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method protected addSystemIcon(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 12

    const/4 v3, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->getSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->getViewIndex(I)I

    move-result v9

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconBlacklist:Landroid/util/ArraySet;

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v8, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/PendingIntent;

    :goto_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    invoke-virtual {v0, v1, v5, v10, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getHoverPopupPreShowListener()Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setTooltip(Landroid/view/View;Lcom/samsung/android/widget/SemHoverPopupWindow$HoverPopupPreShowListener;)V

    :cond_0
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconSize:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconSize:I

    invoke-direct {v7, v1, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;ZLcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView$Mouse;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setKey(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    iget v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    invoke-virtual {v0, v1, v3, v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setPaddingRelative(IIII)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0, v9, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->applyIconTint()V

    return-void

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->findIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    if-eqz v6, :cond_2

    const/high16 v1, 0x14000000

    invoke-virtual {v6, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    const/4 v5, -0x6

    const/4 v10, 0x0

    invoke-static {v1, v5, v6, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method protected animateHide(Landroid/view/View;Z)V
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-nez p2, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public collapseIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->collapseIconArea(Z)V

    return-void
.end method

.method public expandIconArea(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationIconAreaController;->expandIconArea(Z)V

    return-void
.end method

.method protected handleSet(ILcom/android/internal/statusbar/StatusBarIcon;)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->getViewIndex(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIconsKeyguard:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->set(Lcom/android/internal/statusbar/StatusBarIcon;)Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->applyIconTint()V

    return-void
.end method

.method public hideStatusIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d064c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconSize:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d064d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconHPadding:I

    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 5

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->onDensityOrFontScaleChanged()V

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconSize:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconSize:I

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldShowDesktopPanel()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->findQsPanelDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->animateExpandDeskSettingsPanel(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mIconsPendingIntentMap:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->onStatusBarIconMouseLeftClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V

    goto :goto_0
.end method

.method public onLeftClickPreviewState(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getPreviewState(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onLeftClickSystemIconDetailViewState(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)Z
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->findQsPanelDetail(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isExpandedDeskSettingsPanel(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onRightClick(Lcom/android/systemui/statusbar/phone/taskbar/desk/LaunchableIconView;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mPhoneStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->handleContextClick(ILandroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected scaleBatteryMeterViews(Landroid/content/Context;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0d064f

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v5, 0x7f0d064e

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    const v5, 0x7f0d0650

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1, v6, v1, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    const/16 v5, 0x10

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterView:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewKeyguard:Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v5, v4}, Lcom/android/systemui/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public showStatusIcons()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mStatusIcons:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method public updateBatteryTextDescription()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryMeterViewBg:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    const v2, 0x7f0f0710

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateBatteryTextSize()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mBatteryText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskStatusBarIconController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0651

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method
