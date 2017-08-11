.class public Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;
.super Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
.source "QuickStatusBarHeader.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;
    }
.end annotation


# instance fields
.field private isPopupShow:Z

.field private mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

.field private mBadgeAsyncTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBadgeBackground:Landroid/widget/LinearLayout;

.field private mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

.field private mBadgeText:Landroid/widget/TextView;

.field private mBrightnessMenu:Landroid/view/MenuItem;

.field private mContactUsMenu:Landroid/view/MenuItem;

.field private mDateScaleFactor:F

.field private mDateSizeAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mDateTimeAlarmGroup:Landroid/view/ViewGroup;

.field private mDateTimeAlarmTranslation:F

.field private mDateTimeDivider:Landroid/view/View;

.field private mDateTimeGroup:Landroid/view/ViewGroup;

.field private mDateTimeTranslation:F

.field private mDeskMode:Z

.field private mEdit:Landroid/view/MenuItem;

.field private mExpanded:Z

.field private mExpansionAmount:F

.field protected mGearTranslation:F

.field private mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

.field private mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

.field private mIsSupportContactUs:I

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

.field private mListening:Z

.field private mMoreButton:Landroid/widget/ImageButton;

.field protected mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field protected mMoreTranslation:F

.field private mMultiUserAvatar:Landroid/widget/ImageView;

.field protected mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

.field private mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

.field private mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

.field private mPopup:Landroid/widget/PopupMenu;

.field private mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mScreenGrid:Landroid/view/MenuItem;

.field private mSettingScaleFactor:F

.field protected mSettingTranslation:F

.field protected mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

.field private mSettingsBadgeCount:I

.field private mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

.field private mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

.field protected mSettingsContainer:Landroid/view/View;

.field private mShowEmergencyCallsOnly:Z

.field private mTimeView:Landroid/widget/TextView;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/os/AsyncTask;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/statusbar/phone/QSTileHost;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setBrightnessControllerOnTop()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private setBrightnessControllerOnTop()V
    .locals 6

    const/4 v3, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v3, "QS21"

    const-string/jumbo v4, "brightness_on_top"

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v5}, Landroid/view/MenuItem;->isChecked()Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v0, 0x3e8

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v2, "brightness_on_top"

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/tuner/TunerService;->setValue(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static synthetic startSettings(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    return-void
.end method

.method private startSettingsActivity()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.settings.SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    return-void
.end method

.method private updateListeners()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->addStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/NextAlarmController;->removeStateChangedCallback(Lcom/android/systemui/statusbar/policy/NextAlarmController$NextAlarmChangeCallback;)V

    goto :goto_0
.end method

.method private updateResources()V
    .locals 4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0243

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mGearTranslation:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03f5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreTranslation:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d023f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeTranslation:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0240

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmTranslation:F

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0241

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0242

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    div-float v2, v1, v0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateScaleFactor:F

    new-instance v2, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateSizeAnimator:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->createDivider()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsAnimator()V

    return-void
.end method

.method private updateSettingsBadgeCount()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$6;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_statusbar_phone_QuickStatusBarHeader_lambda$1()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method protected createDivider()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5, v7, v7}, Landroid/widget/TextView;->measure(II)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    int-to-float v1, v5

    const v5, 0x3f0ccccd    # 0.55f

    mul-float/2addr v5, v1

    float-to-int v0, v5

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0288

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d0289

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    new-instance v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7, v2, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    iput v3, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    sget-boolean v5, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d03fd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v6, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    goto :goto_0
.end method

.method public dismissPopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->dismissGridPopup()V

    :cond_1
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x14

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "hong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "KEYCODE_DPAD_DOWN action_down = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/QSTileHost;->hasBarOnHeader()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1303d5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    :cond_0
    :goto_2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    return v2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f13018e

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f1303e7

    if-ne v2, v3, :cond_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findFocus()Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/qs/QSIconView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v2, p0, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public getCollapsedHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getHeight()I

    move-result v0

    return v0
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p2, :cond_0

    return v4

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catch_0
    move-exception v0

    const-string/jumbo v1, "QuickStatusBarHeader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NOT Installed - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public isPopupShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    return v0
.end method

.method public isSupportContactUs(Landroid/content/Context;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    const-string/jumbo v2, "com.samsung.android.voc"

    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v3, "com.samsung.android.voc"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget v2, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    const v3, 0xa220268

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    if-ne v2, v6, :cond_2

    return v6

    :catch_0
    move-exception v0

    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    goto :goto_0

    :cond_1
    iput v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mIsSupportContactUs:I

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "QuickStatusBarHeader"

    const-string/jumbo v3, "not installed"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public launchContactUsApp(Landroid/content/Context;)Z
    .locals 10

    const/4 v9, 0x1

    const-string/jumbo v0, "3l25p17305"

    const-string/jumbo v1, "Quick_Panel"

    const-string/jumbo v2, "com.android.systemui.quickpanel"

    const-string/jumbo v4, "ask"

    const-string/jumbo v6, "voc://view/contactUs"

    new-instance v5, Landroid/content/Intent;

    const-string/jumbo v7, "android.intent.action.VIEW"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v5, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string/jumbo v7, "packageName"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "appId"

    invoke-virtual {v5, v7, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "appName"

    invoke-virtual {v5, v7, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "feedbackType"

    invoke-virtual {v5, v7, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v7, "faqUrl"

    const-string/jumbo v8, "http://www.samsung.com"

    invoke-virtual {v5, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v7

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    const/4 v8, 0x1

    invoke-interface {v7, v5, v8}, Lcom/android/systemui/statusbar/phone/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v3

    const-string/jumbo v7, "QuickStatusBarHeader"

    const-string/jumbo v8, "do not find samsung members packcage"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v7, 0x0

    return v7
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onAttachedToWindow()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$2;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/SettingsButton;->isTunerClick()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$startSettings;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$startSettings;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-static {v1, v2}, Lcom/android/systemui/tuner/TunerService;->showResetRequest(Landroid/content/Context;Ljava/lang/Runnable;)V

    :cond_0
    :goto_0
    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->startSettingsActivity()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_GSIM_LOG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "com.android.systemui.statusbar.policy.quicksetting"

    const-string/jumbo v2, "QP01"

    invoke-static {v0, v1, v2, v3, v3}, Lcom/android/keyguard/util/GsimLogManager;->sendLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-ne p1, v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->showQSPopupMenu()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string/jumbo v2, "string"

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v1, "tuner_toast"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1, v3}, Lcom/android/systemui/tuner/TunerService;->setTunerEnabled(Landroid/content/Context;Z)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->dismissPopupMenu()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->remListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->removeEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    :cond_0
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onDetachedFromWindow()V

    return-void
.end method

.method public onEmergencyModeChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsAnimator()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onFinishInflate()V

    const v1, 0x7f1303e8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeAlarmGroup:Landroid/view/ViewGroup;

    const v4, 0x7f130492

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const v1, 0x7f1303e9

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setPivotX(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->setPivotY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f120023

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const v1, 0x7f1303eb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    const v1, 0x7f1303ec

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/qs/QuickQSPanel;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    const v1, 0x7f13018e

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/SettingsButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    const v1, 0x7f13018d

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1303e7

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v1, 0x7f13029f

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const v3, 0x7f1302a0

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/RippleDrawable;->setForceSoftware(Z)V

    const v1, 0x7f1303ea

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeDivider:Landroid/view/View;

    const v1, 0x7f130490

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mTimeView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v3, 0x7f13018f

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const v3, 0x7f130190

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    iput v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    const-string/jumbo v2, "com.sec.intent.action.BADGE_COUNT_UPDATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    invoke-virtual {p0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void

    :cond_3
    move v1, v3

    goto/16 :goto_0
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsButton:Lcom/android/systemui/statusbar/phone/SettingsButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QuickQSPanel;->requestFocus()Z

    goto :goto_0
.end method

.method public onNextAlarmChanged(Landroid/app/AlarmManager$AlarmClockInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarm:Landroid/app/AlarmManager$AlarmClockInfo;

    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateResources()V

    return-void
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserAvatar:Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method public registerBadgeCountUpdateReceiver()V
    .locals 6

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$5;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeIntentfilter:Landroid/content/IntentFilter;

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateSettingsBadgeCount()V

    :cond_0
    return-void
.end method

.method public setActivityStarter(Lcom/android/systemui/statusbar/phone/ActivityStarter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mActivityStarter:Lcom/android/systemui/statusbar/phone/ActivityStarter;

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 0

    return-void
.end method

.method public setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setCallback(Lcom/android/systemui/qs/QSPanel$Callback;)V

    :cond_0
    return-void
.end method

.method public setEmergencyCallsOnly(Z)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mShowEmergencyCallsOnly:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setExpanded(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setExpanded(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateEverything()V

    return-void
.end method

.method public setExpansion(F)V
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpansionAmount:F

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    :cond_0
    return-void
.end method

.method public setListening(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setListening(Z)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListening:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateListeners()V

    return-void
.end method

.method public setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mNextAlarmController:Lcom/android/systemui/statusbar/policy/NextAlarmController;

    return-void
.end method

.method public setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    return-void
.end method

.method public setQSPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1}, Lcom/android/systemui/qs/QSPanel;->getHost()Lcom/android/systemui/statusbar/phone/QSTileHost;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setQsPanel(Lcom/android/systemui/qs/QSPanel;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->getDeskMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDeskMode:Z

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->updateVisibilities()V

    return-void
.end method

.method public setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/UserInfoController;->addListener(Lcom/android/systemui/statusbar/policy/UserInfoController$OnUserInfoChangedListener;)V

    return-void
.end method

.method public setupHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->setHeaderView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1, v2, p0}, Lcom/android/systemui/qs/QuickQSPanel;->setQSPanelAndHeader(Lcom/android/systemui/qs/QSPanel;Landroid/view/View;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHeaderQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    invoke-virtual {v1, p1}, Lcom/android/systemui/qs/QuickQSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getUserInfoController()Lcom/android/systemui/statusbar/policy/UserInfoController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setUserInfoController(Lcom/android/systemui/statusbar/policy/UserInfoController;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getBatteryController()Lcom/android/systemui/statusbar/policy/BatteryController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNextAlarmController()Lcom/android/systemui/statusbar/policy/NextAlarmController;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setNextAlarmController(Lcom/android/systemui/statusbar/policy/NextAlarmController;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/NetworkController;->hasVoiceCallingFeature()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getNetworkController()Lcom/android/systemui/statusbar/policy/NetworkController;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/android/systemui/statusbar/policy/NetworkController;->addEmergencyListener(Lcom/android/systemui/statusbar/policy/NetworkController$EmergencyListener;)V

    :cond_1
    return-void
.end method

.method protected showQSPopupMenu()V
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4, p0}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/KnoxStateMonitor;->isQuickSettingEditEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isSupportContactUs(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const/high16 v4, 0x7f150000

    invoke-virtual {v1, v4}, Landroid/widget/PopupMenu;->inflate(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f13053f

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f130540

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDeskMode:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mEdit:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    goto :goto_0

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->IS_TABLET:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mScreenGrid:Landroid/view/MenuItem;

    goto :goto_1

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v4, 0x7f130541

    invoke-interface {v1, v4}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/tuner/TunerService;->get(Landroid/content/Context;)Lcom/android/systemui/tuner/TunerService;

    move-result-object v1

    const-string/jumbo v5, "brightness_on_top"

    invoke-virtual {v1, v5, v3}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_2
    invoke-interface {v4, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBrightnessMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    const v3, 0x7f130542

    invoke-interface {v1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContactUsMenu:Landroid/view/MenuItem;

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$3;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    new-instance v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$4;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$4;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    const v3, 0x800005

    invoke-virtual {v1, v3}, Landroid/widget/PopupMenu;->setGravity(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mPopup:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isPopupShow:Z

    return-void

    :cond_3
    move v1, v3

    goto :goto_2
.end method

.method public unregisterBadgeCountUpdateReceiver()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeCountUpdateReceiver:Landroid/content/BroadcastReceiver;

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeAsyncTask:Landroid/os/AsyncTask;

    return-void
.end method

.method public updateBadgeState()V
    .locals 8

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    const-string/jumbo v4, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsBadgeCount:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d048c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->isDeskMode()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d048d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_1
    :goto_0
    int-to-float v3, v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeText:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0d048b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    float-to-int v0, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/statusbar/DeviceState;->isOpenTheme(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d048e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mBadgeBackground:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateEverything()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$-void_updateEverything__LambdaImpl0;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateSettingsAnimator()V
    .locals 13

    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0400

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d0401

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->isLayoutRtl()Z

    move-result v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f0d03f4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    if-eqz v1, :cond_0

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    neg-float v4, v4

    iput v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    :cond_0
    div-float v4, v3, v2

    iput v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingScaleFactor:F

    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    const-string/jumbo v9, "translationX"

    new-array v10, v12, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_4

    move v4, v5

    :goto_0
    aput v4, v10, v6

    aput v5, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    const-string/jumbo v8, "translationX"

    new-array v9, v12, [F

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_5

    move v4, v5

    :goto_1
    aput v4, v9, v6

    aput v5, v9, v11

    invoke-virtual {v0, v7, v8, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsAlpha:Lcom/android/systemui/qs/TouchAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_2

    new-instance v7, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v7}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v8, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    const-string/jumbo v9, "translationX"

    new-array v10, v12, [F

    if-eqz v1, :cond_6

    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreTranslation:F

    neg-float v4, v4

    :goto_2
    aput v4, v10, v6

    aput v5, v10, v11

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    const-string/jumbo v8, "alpha"

    new-array v9, v12, [F

    aput v5, v9, v6

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v9, v11

    invoke-virtual {v4, v7, v8, v9}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    const v5, 0x3f333333    # 0.7f

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButtonAlpha:Lcom/android/systemui/qs/TouchAnimator;

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader$1;-><init>(Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;)V

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    :goto_3
    return-void

    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    goto/16 :goto_0

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingTranslation:F

    goto :goto_1

    :cond_6
    iget v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreTranslation:F

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    if-eqz v1, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mDateTimeGroup:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getWidth()I

    move-result v4

    :goto_4
    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->setPivotX(F)V

    goto :goto_3

    :cond_8
    move v4, v6

    goto :goto_4
.end method

.method protected updateVisibilities()V
    .locals 7

    const v6, 0x7f1303e6

    const/4 v5, 0x4

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mSettingsContainer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/tuner/TunerService;->isTunerEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/KnoxStateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KnoxStateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/KnoxStateMonitor;->isUsersEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/samsung/android/knox/SemPersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 v2, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/keyguard/util/SettingsHelper;->isEmergencyMode()Z

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mHost:Lcom/android/systemui/statusbar/phone/QSTileHost;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/QSTileHost;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isCoveredState()Z

    move-result v0

    :goto_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMultiUserSwitch:Lcom/android/systemui/statusbar/phone/MultiUserSwitch;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->hasMultipleUsers()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->IS_LDU_POPUP:Z

    if-eqz v3, :cond_9

    :cond_1
    move v3, v5

    :goto_3
    invoke-virtual {v6, v3}, Lcom/android/systemui/statusbar/phone/MultiUserSwitch;->setVisibility(I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mMoreButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_a

    const/16 v4, 0x8

    :cond_3
    :goto_4
    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1

    :cond_7
    const/4 v2, 0x0

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    goto :goto_2

    :cond_9
    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    move v3, v4

    goto :goto_3

    :cond_a
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->mExpanded:Z

    if-nez v6, :cond_3

    move v4, v5

    goto :goto_4
.end method
