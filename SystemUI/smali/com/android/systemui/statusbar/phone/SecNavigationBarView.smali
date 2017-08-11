.class public Lcom/android/systemui/statusbar/phone/SecNavigationBarView;
.super Lcom/android/systemui/statusbar/phone/NavigationBarView;
.source "SecNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$4;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;,
        Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;
    }
.end annotation


# static fields
.field private static CONFIRMED:Ljava/lang/String;

.field private static final IS_FACTORY_BINARY:Z


# instance fields
.field private mAllKeyDisabled:Z

.field private mAppliedIconColor:I

.field private final mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

.field private mChangeIconColor:Ljava/lang/Runnable;

.field private mClipboardReceiver:Landroid/content/BroadcastReceiver;

.field private mConfirm:Ljava/lang/Runnable;

.field mCurrentRemoteView:Landroid/view/View;

.field private mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpConfirmed:Z

.field private mHomeActionDown:Landroid/graphics/drawable/AnimationDrawable;

.field private mHomeActionUp:Landroid/graphics/drawable/AnimationDrawable;

.field private mHomeAnimRunning:Z

.field private mHorizontalMoved:I

.field private mHorizontalShift:I

.field private mImageIcon:Z

.field private final mImmersivePinClickListener:Landroid/view/View$OnClickListener;

.field private mIsDarkNavigation:Z

.field private mIsNaviBarDefaultKeyOrder:Z

.field private mLastVertical:Z

.field private mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

.field mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

.field mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

.field private mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

.field private mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

.field private mRequestedIconcolor:I

.field private mRightRemoteViewContainer:Landroid/widget/LinearLayout;

.field private mShowBackAlt:Z

.field private mVerticalMoved:I

.field private mVerticalShift:I

.field private messageList:[I


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->CONFIRMED:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColor:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfirm:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    return v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowBackAlt:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)Landroid/app/Dialog;
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getForceImmersiveHelpDialog()Landroid/app/Dialog;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->IS_FACTORY_BINARY:Z

    const-string/jumbo v0, "Confirmed"

    sput-object v0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->CONFIRMED:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 9

    const/4 v8, 0x0

    const v7, 0x7f13034f

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsDarkNavigation:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowBackAlt:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLastVertical:Z

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    iput v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsNaviBarDefaultKeyOrder:Z

    const v1, 0x7f0f07b8

    const v2, 0x7f0f07b9

    const v3, 0x7f0f07ba

    const v4, 0x7f0f07bb

    filled-new-array {v1, v2, v3, v4}, [I

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    iput-object v8, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$1;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mClipboardReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$3;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColor:Ljava/lang/Runnable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$4;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedIconcolor:I

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAppliedIconColor:I

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$5;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$6;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfirm:Ljava/lang/Runnable;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-direct {v1, p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NavigationBarView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0168

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarColor(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_color"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_use_theme_default"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_hide_bar"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsCallback:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;

    new-array v3, v6, [Landroid/net/Uri;

    const-string/jumbo v4, "navigationbar_hide_bar_enabled"

    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->registerCallback(Lcom/android/systemui/statusbar/NavigationBarSettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, v5, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    :cond_1
    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateHomeIconTouchAnimation(Landroid/content/Context;)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;-><init>(I)V

    invoke-virtual {v1, v7, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->init(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideHelpConfirmed()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHelpConfirmed:Z

    return-void
.end method

.method private applyRemoteIconTint(Landroid/view/View;I)V
    .locals 1

    instance-of v0, p1, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method private createForceImmersiveHelpDialogView()Landroid/view/View;
    .locals 13

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "layout_inflater"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/LayoutInflater;

    const v11, 0x7f0400e7

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0482

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    int-to-float v1, v11

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v2, v11, Landroid/content/res/Configuration;->fontScale:F

    const v11, 0x3fa66666    # 1.3f

    cmpl-float v11, v2, v11

    if-lez v11, :cond_0

    const v2, 0x3fa66666    # 1.3f

    :cond_0
    const v11, 0x7f130353

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v12, 0x7f0f07b7

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v5, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v11, v1, v2

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const v11, 0x7f130354

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v6, 0x0

    :goto_0
    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    array-length v11, v11

    if-ge v6, v11, :cond_1

    const v11, 0x7f0400e8

    const/4 v12, 0x0

    invoke-virtual {v7, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    const v11, 0x7f130356

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string/jumbo v11, "\u2022 "

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v11, v1, v2

    const/4 v12, 0x0

    invoke-virtual {v9, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    const v11, 0x7f130354

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->messageList:[I

    aget v12, v12, v6

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    mul-float v11, v1, v2

    const/4 v12, 0x0

    invoke-virtual {v8, v12, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const v11, 0x7f130355

    invoke-virtual {v0, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v12, 0x7f0f07bc

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v4, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method private getForceImmersiveHelpDialog()Landroid/app/Dialog;
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    return-object v1

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->createForceImmersiveHelpDialogView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$7;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    const v2, 0x7f0f07be

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$8;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    const v2, 0x7f0f07bd

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$9;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    new-instance v1, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$10;-><init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    goto :goto_0
.end method

.method private isHomeKey(Landroid/view/MotionEvent;)Z
    .locals 10

    const/4 v9, 0x3

    const v8, 0x7f130018

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d01f4

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v1, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v2, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v4, :cond_1

    iget v4, v3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v0

    if-ge v2, v4, :cond_1

    :cond_0
    return v6

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v7, :cond_2

    iget v4, v3, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    if-lt v1, v4, :cond_0

    :cond_2
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_3

    iget v4, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    if-gt v1, v4, :cond_0

    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eqz v4, :cond_4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_5

    :cond_4
    iget v4, v3, Landroid/graphics/Rect;->left:I

    if-le v1, v4, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->right:I

    if-ge v1, v4, :cond_7

    return v7

    :cond_5
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eq v4, v7, :cond_6

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_7

    :cond_6
    iget v4, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v4, :cond_7

    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v4, :cond_7

    return v7

    :cond_7
    return v6
.end method

.method private onActionDownAnimation(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 3

    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/16 v1, 0x1e

    const v2, 0x7f020240

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020242

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020243

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020244

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020245

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020246

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020247

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020248

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020249

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020241

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v0
.end method

.method private onActionUpAnimation(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 3

    new-instance v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    const/16 v0, 0x1e

    const v2, 0x7f020241

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020249

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020248

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020247

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020246

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020245

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020244

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020243

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020242

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const v2, 0x7f020240

    invoke-virtual {p1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    return-object v1
.end method

.method private setMenuImeSidePadding()V
    .locals 10

    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getImeSwitchButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method

.method private setRemoteViewContainerLayout()Z
    .locals 10

    const/4 v7, 0x1

    const-wide v8, 0x3f96bb98c0000000L    # 0.022199999541044235

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v2, v4

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v4, v3

    mul-double/2addr v4, v8

    double-to-int v0, v4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f130351

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    const v4, 0x7f130352

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    if-nez v3, :cond_1

    :cond_0
    return v6

    :cond_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v6, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v2, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :cond_2
    :goto_0
    return v7

    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-eq v3, v7, :cond_4

    iget v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v0, v6, v6}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_0

    :cond_5
    return v6
.end method

.method private updateHomeIconTouchAnimation(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->onActionDownAnimation(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeActionDown:Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->onActionUpAnimation(Landroid/content/Context;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeActionUp:Landroid/graphics/drawable/AnimationDrawable;

    return-void
.end method

.method private updateNavigationBarColor(Z)V
    .locals 5

    const v4, 0x7f0b0168

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    const v2, 0x7f0b0169

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarThemeColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarTransitions:Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->updateModeBackgroundColor(II)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarCurrentColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v1

    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarThemeColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarColor()I

    move-result v0

    goto :goto_0
.end method

.method private updateOpenThemeIcon(Landroid/content/Context;)Z
    .locals 4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v1, :cond_0

    const v1, 0x7f020808

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020806

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020809

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020805

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020804

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020807

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02080a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string/jumbo v1, "SecNavigationBarView"

    const-string/jumbo v2, "updateOpenThemeIcon OpenThemeIconReousrce NotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    return v3

    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    return v3
.end method

.method private updateRemoteView()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x4

    const/4 v7, 0x0

    const-string/jumbo v4, "SecNavigationBarView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateRemoteView mCurrentRemoteView visibility : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setRemoteViewContainerLayout()Z

    move-result v4

    if-nez v4, :cond_0

    return-void

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_7

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    :goto_0
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_8

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    :goto_1
    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAppliedIconColor:I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->applyRemoteIconTint(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_2
    :goto_2
    if-eqz v2, :cond_a

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAppliedIconColor:I

    invoke-direct {p0, v3, v4}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->applyRemoteIconTint(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getMenuButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getVisibility()I

    move-result v4

    if-nez v4, :cond_5

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    if-ne v4, v9, :cond_b

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    :goto_4
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    :cond_6
    return-void

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v0

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v2

    goto :goto_1

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLeftRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    :cond_a
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    :cond_b
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRightRemoteViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_4
.end method


# virtual methods
.method public changeIconColorForQuickPanel(Z)V
    .locals 3

    const-string/jumbo v0, "SecNavigationBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "changeIconColorForQuickPanel() expanded="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowQuickPanel:Z

    return-void
.end method

.method public checkNaviKeyDisabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getLastPinButtonShowing()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->checkNaviKeyDisabled(Z)V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public dismissForceImmersiveHelp()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public getBarController()Lcom/android/systemui/statusbar/phone/NavigationBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    return-object v0
.end method

.method public getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    const v1, 0x7f13034f

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    return-object v0
.end method

.method public isLastNavBarKeyOrderDefault()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsNaviBarDefaultKeyOrder:Z

    return v0
.end method

.method public marqueeNavigationBar()V
    .locals 8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v5

    if-nez v5, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCurrentView()V

    return-void

    :cond_1
    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    const/16 v6, 0x10

    if-ge v5, v6, :cond_2

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    const/16 v6, -0x10

    if-gt v5, v6, :cond_3

    :cond_2
    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    :cond_3
    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    const/16 v6, 0xa

    if-ge v5, v6, :cond_4

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    const/16 v6, -0xa

    if-gt v5, v6, :cond_5

    :cond_4
    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    neg-int v5, v5

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    :cond_5
    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalMoved:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iget v6, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalMoved:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/high16 v6, 0x40800000    # 4.0f

    div-float v3, v5, v6

    const/4 v1, 0x0

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHorizontalShift:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v1, v6

    iget v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVerticalShift:I

    int-to-float v5, v5

    mul-float/2addr v5, v3

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    double-to-int v4, v6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getRecentsButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    if-eqz v5, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v5

    invoke-virtual {v5, v1, v4, v2, v0}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setPaddingRelative(IIII)V

    :cond_6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->invalidate()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onAttachedToWindow()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "com.samsung.android.content.clipboard.action.CLIPBOARD_OPENED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "com.samsung.android.content.clipboard.action.CLIPBOARD_CLOSED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mClipboardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mClipboardReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 4

    const/4 v1, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImmersivePinClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewCallback:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->setRemoteViewCallback(Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteViewCallback;)V

    :cond_0
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->marqueeNavigationBar()V

    :cond_1
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarUseThemeDefault()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    return-void

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    const v5, 0x7f130018

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    if-eqz v0, :cond_2

    :cond_0
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isHomeKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->reScheduleAutohide(Landroid/view/MotionEvent;)V

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v4, :cond_5

    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    if-nez v0, :cond_4

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->isHomeKey(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeActionDown:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimImageDrawable(Landroid/graphics/drawable/AnimationDrawable;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeActionUp:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimImageDrawable(Landroid/graphics/drawable/AnimationDrawable;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public onOpenThemeChanged()V
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onOpenThemeChanged()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_CUSTOM_NAVIBAR_BGCOLOR:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "current_sec_active_themepackage"

    invoke-static {v1, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v4, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->setNavigationBarUseThemeDefault(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateNavigationBarColor(Z)V

    :cond_1
    return-void

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeActionUp:Landroid/graphics/drawable/AnimationDrawable;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRotation:I

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setAnimImageDrawable(Landroid/graphics/drawable/AnimationDrawable;I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f130018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeAnimRunning:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public refreshNavigationBarView()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public reorient()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->reorient()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f130359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->onOrientationChanged()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mForceImmersiveHelpDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public saveCurrentNavBarKeyOrder()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->isDefaultNavibationBarButtonArray()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsNaviBarDefaultKeyOrder:Z

    return-void
.end method

.method public setForceImmersiveMode()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->getInstance()Lcom/android/systemui/statusbar/phone/NaviBarHideController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NaviBarHideController;->setNavigationBarImmersiveMode(Landroid/content/Context;)Z

    return-void
.end method

.method public setIconColor(I)V
    .locals 3

    const-string/jumbo v0, "SecNavigationBarView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setIconColor() called - color : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedIconcolor:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->isDarkNavigation()Z

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setIconsLight(ZZ)V

    return-void
.end method

.method public setIconsLight(ZZ)V
    .locals 6

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    iget v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRequestedIconcolor:I

    invoke-virtual {v3, p1, v4}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getIconColor(ZI)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAppliedIconColor:I

    const-string/jumbo v3, "SecNavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setIconsLight() iconColor : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImageIcon:Z

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconTint(IZ)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->applyIconRipple(I)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getRightRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->applyRemoteIconTint(Landroid/view/View;I)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;->getView()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->applyRemoteIconTint(Landroid/view/View;I)V

    :cond_3
    return-void
.end method

.method public setMenuVisibility(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setMenuVisibility(ZZ)V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateRemoteView()V

    :cond_0
    return-void
.end method

.method public setNavigationIconHints(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setNavigationIconHints(IZ)V

    return-void
.end method

.method public setNavigationIconHints(IZ)V
    .locals 8

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setNavigationIconHints(IZ)V

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_LIGHT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_1

    and-int/lit8 v3, p1, 0x1

    if-eqz v3, :cond_4

    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowBackAlt:Z

    if-ne v3, v0, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLastVertical:Z

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    if-eq v3, v4, :cond_1

    :cond_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mShowBackAlt:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mVertical:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mLastVertical:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColor:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mChangeIconColor:Ljava/lang/Runnable;

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setMenuImeSidePadding()V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-eqz v3, :cond_3

    sget-boolean v3, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v3, :cond_3

    and-int/lit8 v3, p1, 0x2

    if-eqz v3, :cond_5

    const/4 v1, 0x1

    :goto_1
    const-string/jumbo v3, "SecNavigationBarView"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setNavigationIconHints showImeButton : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    if-nez v1, :cond_6

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updatePinButtonVisibility()V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    goto :goto_2
.end method

.method public setPhoneStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public setPinButtonVisibility(Z)V
    .locals 10

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v7

    if-nez v7, :cond_0

    return-void

    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideSetting()Z

    move-result v4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNaviBarRemoteViewManager:Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager;->getLeftRemoteView()Lcom/android/systemui/statusbar/phone/NaviBarRemoteViewManager$NaviBarRemoteView;

    move-result-object v7

    if-eqz v7, :cond_2

    const/4 v3, 0x1

    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationIconHints:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_3

    const/4 v0, 0x1

    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isBouncerShowing()Z

    move-result v1

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isDeviceEncrypted()Z

    move-result v2

    :goto_3
    if-eqz p1, :cond_1

    sget-boolean v7, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->IS_FACTORY_BINARY:Z

    if-nez v7, :cond_1

    if-eqz v4, :cond_1

    if-nez v3, :cond_1

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mAllKeyDisabled:Z

    if-nez v7, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    if-eqz v2, :cond_6

    :cond_1
    const/4 v5, 0x0

    :goto_4
    const-string/jumbo v7, "SecNavigationBarView"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setPinButtonVisibility() shouldshow="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", settingsEnabled="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", leftRemoteVisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isBackAlt="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", isBouncerShowing="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v7

    if-eqz v5, :cond_7

    :goto_5
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setVisibility(I)V

    return-void

    :cond_2
    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    goto :goto_3

    :cond_6
    const/4 v5, 0x1

    goto :goto_4

    :cond_7
    const/4 v6, 0x4

    goto :goto_5
.end method

.method public setVisibility(I)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->setVisibility(I)V

    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mButtonDisatchers:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isRunningAnimations()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    goto :goto_1

    :cond_2
    return-void
.end method

.method protected updateCarMode(Landroid/content/res/Configuration;)Z
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCarMode(Landroid/content/res/Configuration;)Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getHomeButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getBackButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCarMode:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setCarMode(Z)V

    return v0
.end method

.method protected updateCurrentView()V
    .locals 2

    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateCurrentView()V

    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_REMOTEVIEW:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentView:Landroid/view/View;

    const v1, 0x7f130359

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mCurrentRemoteView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .locals 12

    const v10, 0x7f02023d

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NavigationBarView;->updateIcons(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    iget v2, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne v2, v3, :cond_0

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-eq v2, v3, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIBAR_OPEN_THEME:Z

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateOpenThemeIcon(Landroid/content/Context;)Z

    move-result v9

    :goto_0
    const-string/jumbo v2, "SecNavigationBarView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateIcons mIsThemeDefault : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", useThemeIcon : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isRTL : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mIsThemeDefault:Z

    if-eqz v2, :cond_4

    if-eqz v9, :cond_4

    :goto_1
    const v1, 0x7f02024f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarPinIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02024e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarUnPinIcon:Landroid/graphics/drawable/Drawable;

    sget-boolean v1, Lcom/android/systemui/SystemUIRune;->SUPPORT_NAVIGATIONBAR:Z

    if-eqz v1, :cond_1

    iget v1, p2, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateHomeIconTouchAnimation(Landroid/content/Context;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->updateCarModeIcons(Landroid/content/Context;)V

    :cond_2
    return-void

    :cond_3
    const/4 v9, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p3}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v2

    if-ne v2, v6, :cond_6

    const/4 v7, 0x1

    :goto_2
    if-eqz v7, :cond_8

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v5, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const/4 v0, 0x0

    instance-of v2, v8, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v2, :cond_7

    check-cast v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_5
    :goto_3
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v10, v11, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v10, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    :goto_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02023f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mDockedIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02023e

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltIcon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackAltLandIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020240

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mHomeDefaultIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f020250

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mRecentIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02024d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mMenuIcon:Landroid/graphics/drawable/Drawable;

    const v1, 0x7f02024a

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mImeIcon:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    :cond_6
    const/4 v7, 0x0

    goto :goto_2

    :cond_7
    instance-of v2, v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    if-eqz v2, :cond_5

    check-cast v8, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;

    invoke-virtual {v8}, Lcom/samsung/android/graphics/spr/SemPathRenderingDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_8
    invoke-virtual {p1, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBackIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_4
.end method

.method public updateImmersivePinIcon()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->getCurrentView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavigationBarSettingsHelper:Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarSettingsHelper;->getNavigationBarHideEnabled()Z

    move-result v0

    const-string/jumbo v1, "SecNavigationBarView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateImmersivePinIcon() isImmersiveMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->getNavBarPinButton()Lcom/android/systemui/statusbar/phone/ButtonDispatcher;

    move-result-object v2

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarUnPinIcon:Landroid/graphics/drawable/Drawable;

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ButtonDispatcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mNavBarPinIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public updatePinButtonVisibility()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->mBarController:Lcom/android/systemui/statusbar/phone/NavigationBarController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationBarController;->getLastPinButtonShowing()Z

    move-result v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->setPinButtonVisibility(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
