.class public Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;
.super Lcom/sec/android/cover/clearcover/ClearCoverPage;
.source "ClearCoverServiceBoxPage.java"

# interfaces
.implements Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;,
        Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;
    }
.end annotation


# static fields
.field private static final DEFAULT_PAGES_ORDER:[Ljava/lang/String;

.field private static final SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mArrowLeft:Landroid/widget/ImageView;

.field private mArrowRight:Landroid/widget/ImageView;

.field private mCurrentFontType:I

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mForceOnlyClockPage:Z

.field private mHandler:Landroid/os/Handler;

.field private mInitializePages:Z

.field private mIsAnimating:Z

.field private mIsScreenOn:Z

.field private mIsShowingOwnerInfoByAnim:Z

.field private mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mLastPageOrder:Ljava/lang/String;

.field private mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private mLock:Ljava/lang/Object;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

.field private mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

.field private mOwnerInfoText:Landroid/widget/TextView;

.field private mPagesLayoutsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoteViewPagesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;",
            ">;"
        }
    .end annotation
.end field

.field private mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

.field private mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

.field private mServiceBoxArea:Landroid/view/View;

.field private mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

.field private mServiceBoxPageItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0()[Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)I
    .locals 1

    iget v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mCurrentFontType:I

    return v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    return v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLastPageOrder:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    return-object v0
.end method

.method static synthetic -get7(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    return-object v0
.end method

.method static synthetic -get9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;I)I
    .locals 0

    iput p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mCurrentFontType:I

    return p1
.end method

.method static synthetic -set1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsAnimating:Z

    return p1
.end method

.method static synthetic -set2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsScreenOn:Z

    return p1
.end method

.method static synthetic -set3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLastPageOrder:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setDefaultPage()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->checkIsMusicPagePlaying(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleRemotePageChange(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->hideArrow()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages(Z)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;IF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playOwnerInfoAnimation(IF)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-array v0, v5, [Ljava/lang/String;

    const-string/jumbo v1, "servicebox_music"

    aput-object v1, v0, v2

    const-string/jumbo v1, "servicebox_calendar"

    aput-object v1, v0, v3

    const-string/jumbo v1, "servicebox_alarm"

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Landroid/net/Uri;

    const-string/jumbo v1, "additional_information_val"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_music_control"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v3

    const-string/jumbo v1, "add_info_today_schedule"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v4

    const-string/jumbo v1, "add_info_steps"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    aput-object v1, v0, v5

    const-string/jumbo v1, "lockscreen_aod_servicebox_page"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    const-string/jumbo v1, "add_info_alarm"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "face_widget_order"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/cover/clearcover/ClearCoverPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mInitializePages:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsShowingOwnerInfoByAnim:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsAnimating:Z

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-boolean v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsScreenOn:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLastPageOrder:Ljava/lang/String;

    iput v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mCurrentFontType:I

    iput-boolean v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$1;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$2;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$3;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$4;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->FlipFont:I

    iput v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mCurrentFontType:I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->force_only_clock_page:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initPagesLayoutMap()V

    return-void
.end method

.method private addPage(Ljava/lang/String;Z)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x0

    const-string/jumbo v3, "servicebox_clock"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "addPage() pkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_8

    return-void

    :cond_1
    const-string/jumbo v3, "servicebox_music"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_info_music_control"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_4

    move v0, v1

    :goto_1
    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "servicebox_calendar"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_info_today_schedule"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_6

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "servicebox_alarm"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "add_info_alarm"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_7

    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    goto/16 :goto_0

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_8
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    new-instance v3, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1, p1, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;-><init>(ILjava/lang/String;Z)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private checkIsMusicPagePlaying(Ljava/lang/String;)V
    .locals 2

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->setMusicPageSelected(Z)V

    return-void
.end method

.method private createDbKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "add_info_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "."

    const-string/jumbo v2, "_"

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentPageKey()Ljava/lang/String;
    .locals 4

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    return-object v3

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;

    invoke-virtual {v2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->getPageKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "clone"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v1, "servicebox_clock"

    :cond_1
    return-object v1
.end method

.method private getPagesOrder()[Ljava/lang/String;
    .locals 4

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getServiceBoxPageOrder()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getPagesOrder() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->DEFAULT_PAGES_ORDER:[Ljava/lang/String;

    return-object v1

    :cond_0
    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getServiceBoxPageOrder()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "face_widget_order"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleNotificationVisibility(Z)V
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setVisibility(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->setExpanded(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->invalidate()V

    return-void

    :cond_0
    const/16 v0, 0x8

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private handleRemotePageChange(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V
    .locals 8

    const/4 v7, 0x0

    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    if-eqz v4, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "handleRemotePageChange, null item"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isSettingValueEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRemotePageChange, page not enabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v7, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    :cond_2
    iget-boolean v4, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->isShow:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;

    if-eqz v1, :cond_4

    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRemotePageChange, update page: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;->updateServiceBoxItem(Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->updateRefreshView(Ljava/lang/String;)V

    :cond_3
    :goto_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->notifyDataSetChanged()V

    return-void

    :cond_4
    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRemotePageChange, new page: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;

    sget v4, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_remote_view_page:I

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v7, p1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;-><init>(ILjava/lang/String;ZLcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;)V

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageRemoteViewItem;

    if-eqz v3, :cond_3

    sget-object v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleRemotePageChange, remove page: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v0, v4, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lcom/android/keyguard/servicebox/pages/remoteviews/ServiceBoxRemoteViewsItem;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method

.method private hideArrow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->needToPlayGuideArrow(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->finishGuideArrow(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->hide()V

    return-void
.end method

.method private initPagesLayoutMap()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "initPagesLayoutMap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_clock"

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_clocks_page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_music"

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_music_page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_calendar"

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_calendar_page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    const-string/jumbo v1, "servicebox_alarm"

    sget v2, Lcom/sec/android/sviewcover/R$layout;->clear_cover_servicebox_alarm_page:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializePages(Z)V
    .locals 11

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v9

    if-eqz v9, :cond_0

    if-eqz p1, :cond_4

    :cond_0
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mInitializePages:Z

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v9}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->clear()V

    const/4 v2, 0x1

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v9}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v9

    if-lez v9, :cond_1

    const/4 v2, 0x0

    :cond_1
    const-string/jumbo v9, "servicebox_clock"

    invoke-direct {p0, v9, v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->addPage(Ljava/lang/String;Z)V

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/sec/android/cover/CoverUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-boolean v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    if-eqz v9, :cond_5

    :cond_2
    iget-boolean v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    :cond_3
    sget-object v7, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "initializePages(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v7}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->notifyDataSetChanged()V

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    add-int/lit8 v9, v9, 0x1

    invoke-virtual {v7, v9}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setOffscreenPageLimit(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-void

    :cond_4
    const/4 v7, 0x1

    :try_start_1
    iput-boolean v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mInitializePages:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v8

    return-void

    :cond_5
    :try_start_2
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getPagesOrder()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isLayoutRtl()Z

    move-result v9

    if-eqz v9, :cond_8

    array-length v7, v6

    add-int/lit8 v0, v7, -0x1

    :goto_0
    if-ltz v0, :cond_b

    aget-object v7, v6, v0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_7

    :cond_6
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    aget-object v9, v6, v0

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    aget-object v7, v6, v0

    invoke-direct {p0, v7, v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->addPage(Ljava/lang/String;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    :cond_8
    :try_start_3
    array-length v9, v6

    :goto_2
    if-ge v7, v9, :cond_b

    aget-object v5, v6, v7

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_a

    :cond_9
    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_a
    iget-object v10, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mPagesLayoutsMap:Ljava/util/HashMap;

    invoke-virtual {v10, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    invoke-direct {p0, v5, v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->addPage(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v9, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRemoteViewPagesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4
.end method

.method private isCoverVisible()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsScreenOn:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isCurrentPageClock()Z
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/sec/android/cover/clearcover/servicebox/ClockServiceBoxPageView;

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSettingValueEnabled(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->createDbKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "isSettingValueEnabled key: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private playArrowAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->needToPlayGuideArrow(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;->start()V

    return-void

    :cond_0
    return-void
.end method

.method private playOwnerInfoAnimation(IF)V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    cmpl-float v0, p2, v1

    if-eqz v0, :cond_0

    cmpl-float v0, p2, v2

    if-nez v0, :cond_3

    :cond_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCurrentPageClock()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsShowingOwnerInfoByAnim:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsShowingOwnerInfoByAnim:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsShowingOwnerInfoByAnim:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsShowingOwnerInfoByAnim:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    goto :goto_0
.end method

.method private playPageMoveAnimation(I)V
    .locals 6

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "playPageMoveAnimation toId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getCurrentItem()I

    move-result v0

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    if-ge p1, v0, :cond_4

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isLayoutRtl()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :cond_2
    :goto_1
    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsAnimating:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_3
    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    const v4, 0x3e6d9168    # 0.232f

    mul-float v2, v3, v4

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsAnimating:Z

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0x74

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    if-eqz v1, :cond_6

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;

    invoke-direct {v4, p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage$5;-><init>(Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;I)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_4
    const/4 v1, 0x0

    goto :goto_0

    :cond_5
    const/4 v1, 0x1

    goto :goto_1

    :cond_6
    neg-float v2, v2

    goto :goto_2
.end method

.method private setCurrentPage(Ljava/lang/String;ZZ)V
    .locals 5

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "lockscreen_aod_servicebox_page"

    invoke-static {v2, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: settings page is null!"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez p3, :cond_2

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getCurrentPageKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "setCurrentPage: pageAlreadySet"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_6

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;

    invoke-virtual {v1}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageItem;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setItemByForce(IZ)Z

    :goto_1
    return-void

    :cond_3
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverVisible()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playPageMoveAnimation(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v2, v0, p2}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setCurrentItem(IZ)V

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_6
    sget-object v2, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setCurrentPage: no item for key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDefaultPage()V
    .locals 7

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "add_info_music_control"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v2, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    if-ne v4, v3, :cond_2

    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "servicebox_clock"

    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mForceOnlyClockPage:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isCurentlyPlaying()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string/jumbo v1, "servicebox_music"

    :cond_0
    iget-boolean v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mIsScreenOn:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    invoke-direct {p0, v1, v2, v3}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method private updateOwnerInfoText()V
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5}, Lcom/android/internal/widget/LockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v6

    if-eqz v6, :cond_2

    :goto_1
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_2
    return-void

    :cond_1
    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v3

    const/4 v1, 0x0

    :try_start_0
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->isOwnerInfoEnabled(I)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_3
    if-eqz v1, :cond_0

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/LockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v5, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->TAG:Ljava/lang/String;

    const-string/jumbo v6, "updateOwnerInfoText: error while getting owner info state"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->resetTimer()V

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onAttachedToWindow()V

    sget-object v3, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->SERVICEBOX_SETTINGS_VALUE_LISTENER_LIST:[Landroid/net/Uri;

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_0

    aget-object v0, v3, v1

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5, v0, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerContentObserver(Landroid/net/Uri;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->sendRequestRemoteViewsBroadcast()V

    return-void
.end method

.method public onCoverEvent(Lcom/samsung/android/cover/CoverState;)V
    .locals 4

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-super {p0, p1}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onCoverEvent(Lcom/samsung/android/cover/CoverState;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mResetTimer:Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    iget-boolean v0, p1, Lcom/samsung/android/cover/CoverState;->switchState:Z

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->setCoverShowing(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mInitializePages:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setCurrentPage(Ljava/lang/String;ZZ)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    :goto_1
    return-void

    :cond_1
    move v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3

    throw v0

    :cond_2
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->setDefaultPage()V

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    :cond_0
    return-void
.end method

.method public onDisplayedNotificationCount(II)V
    .locals 3

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iput p2, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/ClearCoverPage;->onFinishInflate()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_pager:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPageAdapter:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageAdapter;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxPager:Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOnPageChangeListener:Lcom/android/internal/widget/ViewPager$OnPageChangeListener;

    invoke-virtual {v0, v3}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_area:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mServiceBoxArea:Landroid/view/View;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_notification_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->setDisplayedNotificationCounChangeListener(Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget$DisplayedNotificationCountChangeListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mNotificationWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverNotificationWidget;->getDisplayedNotificationCount()I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->handleNotificationVisibility(Z)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_l:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_affordance_arrow_r:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowLeft:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v3, v4, v1, v5}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mLeftArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    new-instance v0, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mArrowRight:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v4, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {v0, v1, v3, v2, v4}, Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;-><init>(Landroid/content/res/Resources;Landroid/view/View;ZI)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mRightArrowAnimator:Lcom/sec/android/cover/clearcover/servicebox/utils/GuideArrowAnimator;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_owner_info:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mOwnerInfoText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->updateOwnerInfoText()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    :cond_2
    invoke-direct {p0, v2}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->initializePages(Z)V

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->playArrowAnimation()V

    :cond_3
    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->requestRemoteViews()V

    return-void

    :cond_4
    move v0, v2

    goto :goto_0
.end method

.method public sendRequestRemoteViewsBroadcast()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.samsung.android.intent.action.REQUEST_SERVICEBOX_REMOTEVIEWS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/ClearCoverServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
