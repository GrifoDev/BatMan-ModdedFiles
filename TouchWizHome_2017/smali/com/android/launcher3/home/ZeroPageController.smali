.class public Lcom/android/launcher3/home/ZeroPageController;
.super Ljava/lang/Object;
.source "ZeroPageController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;,
        Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;
    }
.end annotation


# static fields
.field private static final ACTION_INTENT_ACTIVE_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

.field public static final ACTION_INTENT_SET_ZEROPAGE:Ljava/lang/String; = "com.sec.android.intent.action.SET_ZERO_PAGE"

.field private static final FROM_HOMEPAGE:I = 0x2

.field private static final FROM_ZEROPAGE:I = 0x1

.field private static final METADATA_ZEROPAGE:Ljava/lang/String; = "com.samsung.launcher.zeropage.metadata"

.field private static final MINIMUM_SNAP_VELOCITY:I = 0x5dc

.field private static final MOVE_CONTINUE:I = 0x16

.field private static final MOVE_NONE:I = 0x0

.field private static final PAGE_SNAP_MOVING_RATIO:F = 0.33f

.field private static final PAGE_SNAP_VALUE_ANIMATION_DURATION:I = 0x12c

.field private static TAG:Ljava/lang/String; = null

.field private static final THREAD_EXIT_DELAY:I = 0xbb8

.field private static final TO_HOMEPAGE:I = 0x8

.field private static final TO_ZEROEPAGE:I = 0x4

.field public static final ZERO_PAGE_SCREEN_INDEX:I = -0x1

.field private static sActiveZeroPage:Z

.field private static sEnableZeroPage:Z

.field private static sSupportVirtualScreen:Z

.field private static sVirtualScreenAvailableChecked:Z

.field private static sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

.field public static sZeroPageCompName:Landroid/content/ComponentName;


# instance fields
.field private mAppName:Ljava/lang/String;

.field private mAppPrevResId:I

.field private mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

.field private mBezelSize:I

.field private mBezelSwipe:Z

.field private mDownX:I

.field private mInstalled:Z

.field private mInterval:J

.field private mIsFromZeroPageSetting:Z

.field private mLastDownX:I

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mMaximumVelocity:I

.field private mMovedToVirtualScreen:Z

.field private mMovingState:I

.field private mPreValues:I

.field private mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

.field private mTouchDowned:Z

.field private mTouchSlop:I

.field private mValueAnimator:Landroid/animation/ValueAnimator;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

.field private mVirtualScreenThread:Landroid/os/HandlerThread;

.field private mWorkspace:Lcom/android/launcher3/home/Workspace;

.field private mZeroPageBgView:Landroid/widget/LinearLayout;

.field private mZeroPageBitmapHeight:I

.field private mZeroPageBitmapWidth:I

.field private mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

.field private mZeropageDownloadDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-class v0, Lcom/android/launcher3/home/ZeroPageController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.samsung.android.app.spage"

    const-string v2, "com.samsung.android.app.spage.main.MainActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    sput-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    sput-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/launcher3/home/Workspace;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iput-object p2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->init()V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/home/Workspace;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/launcher3/home/ZeroPageController;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide v0
.end method

.method static synthetic access$1202(Lcom/android/launcher3/home/ZeroPageController;J)J
    .locals 1

    iput-wide p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    return-wide p1
.end method

.method static synthetic access$1300(Lcom/android/launcher3/home/ZeroPageController;IIZJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/launcher3/home/ZeroPageController;IIZ)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/util/alarm/Alarm;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/launcher3/home/ZeroPageController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/Context;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/launcher3/home/ZeroPageController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/ZeroPageController;Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/launcher3/home/ZeroPageController;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/launcher3/home/ZeroPageController;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/ZeroPageController;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/ZeroPageController;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/common/drawable/FastBitmapDrawable;)Lcom/android/launcher3/common/drawable/FastBitmapDrawable;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/ZeroPageController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/ZeroPageController;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/launcher3/home/ZeroPageController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/launcher3/home/ZeroPageController;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return v0
.end method

.method static synthetic access$902(Lcom/android/launcher3/home/ZeroPageController;I)I
    .locals 0

    iput p1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    return p1
.end method

.method private acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V
    .locals 5

    const/4 v4, 0x0

    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$6;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/home/ZeroPageController$6;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addZeroPageSwitch(Ljava/lang/String;ZLandroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    return-void
.end method

.method private animatePage(IIZ)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez v2, :cond_0

    new-instance v2, Landroid/animation/ValueAnimator;

    invoke-direct {v2}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    :cond_0
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    const/4 v0, 0x0

    if-eqz p3, :cond_7

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2

    neg-int v0, v1

    :goto_0
    iput v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    if-eqz p1, :cond_b

    if-ne p1, v0, :cond_b

    iput-boolean v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    iput v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x16

    const/16 v3, 0x16

    if-ne v2, v3, :cond_5

    iget v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    goto :goto_0

    :cond_5
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_6

    neg-int v0, v1

    :goto_2
    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_8

    const/4 v0, 0x0

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v5, :cond_a

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_9

    neg-int v0, v1

    :goto_3
    goto :goto_0

    :cond_9
    move v0, v1

    goto :goto_3

    :cond_a
    const/4 v0, 0x0

    goto :goto_0

    :cond_b
    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_c

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_c

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v4, v4}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    :cond_c
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput p1, v3, v4

    aput v0, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;

    invoke-direct {v3}, Lcom/android/launcher3/common/base/view/PagedView$ScrollInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_d

    if-nez v0, :cond_d

    const-wide/16 v2, 0x0

    :goto_4
    invoke-virtual {v4, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$2;

    invoke-direct {v3, p0, p3}, Lcom/android/launcher3/home/ZeroPageController$2;-><init>(Lcom/android/launcher3/home/ZeroPageController;Z)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mInterval:J

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$3;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_1

    :cond_d
    int-to-long v2, p2

    goto :goto_4
.end method

.method private bindVirtualScreen()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->bindVirtualScreen()Z

    :cond_0
    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private cancelZeroPagePreviewTask()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    :cond_0
    return-void
.end method

.method private getPreviewFromPackageManager(Landroid/content/pm/PackageManager;)Landroid/graphics/Bitmap;
    .locals 7

    :try_start_0
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    const/16 v5, 0x280

    invoke-virtual {p1, v4, v5}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v2

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPreviewFromPackageManager(): NameNotFoundException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getZeroPageActiveState(Landroid/content/Context;Z)Z
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.state.prefs"

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    :cond_1
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    goto :goto_0
.end method

.method private getZeroPageClassName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getZeroPagePackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private init()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-static {}, Lcom/android/launcher3/Utilities;->isKnoxMode()Z

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isChinaModel()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/launcher3/Utilities;->isGuest()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09016d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    iget-boolean v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    goto :goto_0
.end method

.method public static isActiveZeroPage(Landroid/content/Context;Z)Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEnableZeroPage()Z
    .locals 1

    sget-boolean v0, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    return v0
.end method

.method public static isMoving()Z
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->isMoving()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadZeroPagePreviewBitmap()V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    new-instance v0, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController$1;)V

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPagePreviewTask:Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$ZeroPagePreviewTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private moveToVirtualScreen(I)V
    .locals 13

    const/4 v6, 0x0

    const/16 v12, -0x2ee

    const/16 v11, -0x5dc

    const v10, 0x3ea8f5c3    # 0.33f

    const/4 v5, 0x1

    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v7}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v4, v7, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v8, 0x3e8

    iget v9, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    int-to-float v9, v9

    invoke-virtual {v7, v8, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v7}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    float-to-int v3, v7

    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v1, p1, v7

    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_8

    if-lez v1, :cond_9

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    const/16 v0, 0x2ee

    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_3

    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_c

    if-gt v3, v12, :cond_d

    :cond_2
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    :cond_3
    :goto_1
    const/4 v2, 0x0

    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v7, :cond_11

    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x4

    const/4 v7, 0x4

    if-eq v6, v7, :cond_6

    :cond_4
    iget v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v5, :cond_5

    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x8

    const/16 v6, 0x8

    if-eq v5, v6, :cond_6

    :cond_5
    iget v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v5, v5, 0x16

    const/16 v6, 0x16

    if-ne v5, v6, :cond_7

    :cond_6
    const/4 v2, 0x1

    :cond_7
    :goto_2
    const/16 v5, 0x12c

    invoke-direct {p0, v1, v5, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    return-void

    :cond_8
    if-ltz v1, :cond_0

    :cond_9
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_a

    neg-int v7, v4

    if-ge v1, v7, :cond_1

    :goto_3
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_b

    neg-int v1, v4

    :goto_4
    goto :goto_0

    :cond_a
    if-le v1, v4, :cond_1

    goto :goto_3

    :cond_b
    move v1, v4

    goto :goto_4

    :cond_c
    const/16 v7, 0x2ee

    if-ge v3, v7, :cond_2

    :cond_d
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_f

    const/16 v7, 0x2ee

    if-lt v3, v7, :cond_10

    :cond_e
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    :cond_f
    if-le v3, v12, :cond_e

    :cond_10
    iget v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    or-int/lit8 v7, v7, 0x16

    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto :goto_1

    :cond_11
    sget-boolean v7, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v7, :cond_14

    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_13

    if-le v3, v11, :cond_12

    neg-int v7, v1

    int-to-float v7, v7

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_13

    :cond_12
    move v2, v5

    :goto_5
    goto :goto_2

    :cond_13
    move v2, v6

    goto :goto_5

    :cond_14
    if-le v3, v11, :cond_16

    const/16 v7, 0x5dc

    if-ge v3, v7, :cond_15

    int-to-float v7, v1

    int-to-float v8, v4

    mul-float/2addr v8, v10

    cmpl-float v7, v7, v8

    if-ltz v7, :cond_16

    :cond_15
    move v2, v5

    :goto_6
    goto :goto_2

    :cond_16
    move v2, v6

    goto :goto_6
.end method

.method private releaseVelocityTracker()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVelocityTracker:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method

.method private removeMsg()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeMsg()V

    :cond_0
    return-void
.end method

.method private resetOffset()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/home/ZeroPageController$4;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private resetTouchState()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    iput-boolean v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->releaseVelocityTracker()V

    return-void
.end method

.method private scaleBitmapIfNecessary(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 4

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary() "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v1, v2, :cond_2

    :cond_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "scaleBitmapIfNecessary(): scaling bitmap"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapWidth:I

    iget v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBitmapHeight:I

    const/4 v3, 0x1

    invoke-static {p1, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    move-object p1, v0

    :cond_2
    return-object p1
.end method

.method private setOffset(IIZ)Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", force = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(IIZ)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setOffsetMsg(IIZJ)V
    .locals 4

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setOffsetMsg - offsetX = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", force = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "offsetX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "force"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "interval"

    invoke-virtual {v0, v1, p4, p5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->setOffsetHandler(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public static setZeroPageActiveState(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    return-void
.end method

.method static setZeroPageActiveState(Landroid/content/Context;Z)V
    .locals 5

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setZeroPageActiveState, active: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.intent.action.ACTIVE_ZERO_PAGE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v2, "active"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "com.sec.android.app.launcher.zeropage.state.prefs"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    sput-boolean p1, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0801c4

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sActiveZeroPage:Z

    if-eqz v2, :cond_1

    const-string v2, "1"

    :goto_1
    invoke-virtual {v3, v4, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertStatusLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v2, "0"

    goto :goto_1
.end method

.method private setZeroPageClassName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.class.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private setZeroPagePackageName(Ljava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "com.sec.android.app.launcher.zeropage.package.prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private showZeroPageDownloadDialog(Landroid/widget/Switch;Z)V
    .locals 8

    const/4 v7, 0x0

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v0, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800ce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cd

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0800cc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$7;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/home/ZeroPageController$7;-><init>(Lcom/android/launcher3/home/ZeroPageController;Ljava/lang/String;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080026

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$8;

    invoke-direct {v4, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$8;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$9;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/home/ZeroPageController$9;-><init>(Lcom/android/launcher3/home/ZeroPageController;ZLandroid/widget/Switch;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$10;

    invoke-direct {v3, p0}, Lcom/android/launcher3/home/ZeroPageController$10;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3, v7}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method

.method private startActivityInVirtualScreen(Landroid/content/Context;ZZ)V
    .locals 9

    const/4 v7, 0x1

    const/4 v8, 0x0

    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startActivityInVirtualScreen - changeActivity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", created = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-nez v4, :cond_0

    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v5, "startActivityInVirtualScreen - return by sVirtualScreenManager is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/high16 v4, 0x4000000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "fromHome"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "fingerSwipe"

    invoke-virtual {v1, v4, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v4, "supportRtl"

    sget-boolean v5, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v4

    invoke-interface {v4}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    new-instance v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    sget-boolean v4, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v4, :cond_3

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v6, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    mul-int/lit8 v6, v6, 0x2

    iget v7, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    :goto_1
    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_ZEROPAGE_POLICY:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    if-eqz p2, :cond_1

    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_CLEAR_TASKS:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    :cond_1
    if-eqz p3, :cond_2

    iget v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v5, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_RECREATE_VIRTUALSCREEN:I

    or-int/2addr v4, v5

    iput v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    :cond_2
    sget-object v4, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v1, v5, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)I

    goto :goto_0

    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    neg-int v5, v5

    iget v6, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v4, v5, v8, v8, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->bounds:Landroid/graphics/Rect;

    goto :goto_1
.end method

.method public static supportVirtualScreen()Z
    .locals 3

    const/4 v2, 0x1

    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    if-nez v1, :cond_0

    new-instance v0, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;

    invoke-direct {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;-><init>()V

    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreen;->isFeatureEnabled(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    sput-boolean v2, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenAvailableChecked:Z

    :cond_0
    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sSupportVirtualScreen:Z

    return v1
.end method

.method private updateZeroPageAppMetadata(Landroid/content/ComponentName;)V
    .locals 14

    const/4 v11, 0x0

    :try_start_0
    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/16 v10, 0x280

    invoke-virtual {v6, p1, v10}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v3

    const-string v10, "com.samsung.launcher.zeropage.metadata"

    invoke-virtual {v3, v6, v10}, Landroid/content/pm/ActivityInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    if-nez v5, :cond_0

    sget-object v10, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v11, "parser is null"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    return-void

    :cond_0
    :try_start_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    :cond_1
    :goto_1
    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9

    const/4 v10, 0x3

    if-ne v9, v10, :cond_2

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10

    if-le v10, v1, :cond_4

    :cond_2
    const/4 v10, 0x1

    if-eq v9, v10, :cond_4

    const/4 v10, 0x2

    if-ne v9, v10, :cond_1

    const/4 v10, 0x0

    const-string v12, "apptitle"

    const/4 v13, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v10, 0x0

    const-string v12, "preview"

    const/4 v13, 0x0

    invoke-interface {v5, v10, v12, v13}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v7

    iget-object v10, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v6, v10}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v8

    if-eqz v8, :cond_1

    if-eqz v7, :cond_3

    :try_start_2
    iput v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPrevResId:I

    :cond_3
    if-nez v0, :cond_5

    move-object v10, v11

    :goto_2
    iput-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_4

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_4
    invoke-virtual {v2}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPagePackageName(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageClassName(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    :try_start_5
    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u200f"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    goto :goto_2

    :cond_6
    invoke-virtual {v8, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
    :try_end_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v10

    goto :goto_2

    :catch_2
    move-exception v2

    :try_start_6
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_3

    :catch_3
    move-exception v2

    sget-object v10, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ZeroApp doesn\'t have Metadata : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    if-nez v10, :cond_4

    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0800ce

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-boolean v10, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\u200f"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_7
    iput-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppName:Ljava/lang/String;

    goto :goto_3

    :catch_4
    move-exception v2

    :try_start_7
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3
.end method

.method private updateZeroPageBg(ZZ)V
    .locals 6

    const/high16 v2, 0x3f800000    # 1.0f

    const v3, 0x3ecccccd    # 0.4f

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    invoke-virtual {v1, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/home/ZeroPageController;->changeColorForBg(Z)V

    if-eqz p1, :cond_2

    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->setBackgroundAlpha(F)V

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    move v1, v3

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method


# virtual methods
.method canScroll()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method changeColorForBg(Z)V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v2, -0x12d

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getState()I

    move-result v2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v2, v1, p1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setBgImageResource(IZZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public changeZeroPage(Landroid/content/ComponentName;)V
    .locals 2

    const/4 v1, 0x1

    sput-object p1, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v0, v1, v1}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    return-void
.end method

.method public closeZeroPageDownloadDialog()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeropageDownloadDialog:Landroid/app/AlertDialog;

    :cond_0
    return-void
.end method

.method createCustomZeroPage(Z)V
    .locals 14

    const-wide/16 v12, -0x12d

    const/4 v3, -0x1

    const/4 v5, 0x1

    const/4 v2, 0x0

    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v10, 0x7f030052

    iget-object v11, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v10, v11, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/WorkspaceCellLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v5}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v12, v13, v0}, Lcom/android/launcher3/util/LongArrayMap;->put(JLjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v1, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v3}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    :cond_2
    invoke-virtual {v0, v3, v3, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCellDimensions(IIII)V

    invoke-virtual {v0, v5, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setGridSize(II)V

    invoke-virtual {v0, v2, v2, v2, v2}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setPadding(IIII)V

    invoke-direct {p0, v0}, Lcom/android/launcher3/home/ZeroPageController;->addZeroPageSwitch(Lcom/android/launcher3/home/WorkspaceCellLayout;)V

    invoke-virtual {v0}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v8

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    new-instance v4, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    invoke-direct {v4, v2, v2, v5, v5}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;-><init>(IIII)V

    const/high16 v1, 0x42c80000    # 100.0f

    const v10, 0x7f0b0003

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    int-to-float v10, v10

    div-float v6, v1, v10

    const v1, 0x7f09012a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v6

    float-to-int v9, v1

    const v1, 0x7f09016a

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v10, 0x7f09016c

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    add-int/2addr v10, v9

    const v11, 0x7f09016b

    invoke-virtual {v7, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    const v12, 0x7f090169

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    invoke-virtual {v4, v1, v10, v11, v12}, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->setMargins(IIII)V

    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v1, v10}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/android/launcher3/home/ZeroPageController$5;

    invoke-direct {v1, p0, v8}, Lcom/android/launcher3/home/ZeroPageController$5;-><init>(Lcom/android/launcher3/home/ZeroPageController;Landroid/widget/Switch;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    invoke-virtual/range {v0 .. v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->addViewToCellLayout(Landroid/view/View;IILcom/android/launcher3/common/base/view/CellLayout$LayoutParams;Z)Z

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/home/Workspace;->addView(Landroid/view/View;I)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v3}, Lcom/android/launcher3/home/Workspace;->getPageCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget-object v10, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v10}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v10

    add-int/lit8 v10, v10, 0x1

    invoke-static {v3, v10}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-virtual {v1, v3, v2}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v3

    invoke-direct {p0, v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageBg(ZZ)V

    invoke-virtual {v0, v5}, Lcom/android/launcher3/home/WorkspaceCellLayout;->setCustomFlag(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v1

    const/16 v3, -0x3e9

    if-eq v1, v3, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    :goto_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    if-eqz v3, :cond_4

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 21

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->supportVirtualScreen()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isHomeStage()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isNormalState()Z

    move-result v2

    if-nez v2, :cond_2

    :cond_0
    const/4 v15, 0x0

    :cond_1
    :goto_0
    return v15

    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->isSwitchingState()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "isSwitchingState restore"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    const/4 v15, 0x0

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v10, v2, 0xff

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v0, v2

    move/from16 v20, v0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageBezelSwipe()Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    move/from16 v0, v20

    if-gt v0, v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "Bezel swipe detected for virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    :cond_4
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_b

    :cond_6
    invoke-direct/range {p0 .. p1}, Lcom/android/launcher3/home/ZeroPageController;->acquireVelocityTrackerAndAddMovement(Landroid/view/MotionEvent;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/launcher3/home/Workspace;->getScrollForPage(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_f

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v11, 0x1

    :goto_1
    if-nez v11, :cond_11

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    if-nez v2, :cond_11

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_10

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_11

    :cond_7
    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_8

    if-eqz v11, :cond_a

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_a

    if-nez v14, :cond_a

    invoke-static {}, Lcom/android/launcher3/home/ZeroPageController;->isMoving()Z

    move-result v2

    if-eqz v2, :cond_a

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mValueAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_13

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_9

    const/16 v16, 0x1

    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    if-eqz v16, :cond_12

    const/4 v2, 0x1

    :goto_3
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    :cond_a
    :goto_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    sub-int v2, v20, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v12

    packed-switch v10, :pswitch_data_0

    :cond_b
    :goto_5
    const/4 v2, 0x1

    if-eq v10, v2, :cond_c

    const/4 v2, 0x3

    if-eq v10, v2, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x8

    const/16 v4, 0x8

    if-ne v2, v4, :cond_e

    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->isPaused()Z

    move-result v2

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getVisible()Z

    move-result v2

    if-nez v2, :cond_d

    const/4 v2, 0x1

    if-eq v10, v2, :cond_d

    const/4 v2, 0x3

    if-ne v10, v2, :cond_e

    :cond_d
    if-eqz v13, :cond_30

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_2f

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v20, v2

    if-gez v2, :cond_30

    :cond_e
    const/4 v15, 0x1

    :goto_6
    if-eqz v15, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->resetTouchState()V

    goto/16 :goto_0

    :cond_f
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-gt v2, v0, :cond_7

    :cond_11
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v2, 0x2

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    and-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    if-ne v2, v4, :cond_14

    const/16 v16, 0x1

    :cond_14
    if-eqz v16, :cond_15

    const/4 v2, 0x2

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_4

    :cond_15
    const/4 v2, 0x1

    goto :goto_7

    :pswitch_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    goto/16 :goto_5

    :pswitch_1
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_16

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_16

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch move event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_22

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-ge v2, v0, :cond_17

    :goto_8
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    :cond_17
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v3, v20, v2

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1c

    if-lez v3, :cond_1d

    :cond_18
    const/4 v3, 0x0

    :cond_19
    :goto_9
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-nez v2, :cond_1a

    if-eqz v3, :cond_1a

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_20

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-ge v2, v0, :cond_1a

    :goto_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/launcher3/home/Workspace;->setScrollX(I)V

    :cond_1a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_21

    const/4 v5, 0x1

    :goto_b
    const-wide/16 v6, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    if-nez v3, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-le v2, v0, :cond_17

    goto :goto_8

    :cond_1c
    if-ltz v3, :cond_18

    :cond_1d
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1e

    move/from16 v0, v19

    neg-int v2, v0

    if-ge v3, v2, :cond_19

    :goto_c
    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_1f

    move/from16 v0, v19

    neg-int v3, v0

    :goto_d
    goto :goto_9

    :cond_1e
    move/from16 v0, v19

    if-le v3, v0, :cond_19

    goto :goto_c

    :cond_1f
    move/from16 v3, v19

    goto :goto_d

    :cond_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getScrollX()I

    move-result v2

    move/from16 v0, v17

    if-le v2, v0, :cond_1a

    goto :goto_a

    :cond_21
    const/4 v5, 0x0

    goto :goto_b

    :cond_22
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_25

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_24

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-ge v2, v0, :cond_25

    :cond_23
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    goto/16 :goto_5

    :cond_24
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLastDownX:I

    move/from16 v0, v20

    if-gt v2, v0, :cond_23

    :cond_25
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_26

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    if-lt v12, v2, :cond_b

    invoke-static {}, Lcom/android/launcher3/util/event/ScrollDetector;->isHorizontalScroll()Z

    move-result v2

    if-eqz v2, :cond_b

    :cond_26
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    if-eqz v2, :cond_27

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->unBindVirtualScreen()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->snapToPage(II)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->pageEndMoving()V

    :goto_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_2a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher3/home/HomeController;->updateBixbyHomeEnterCount()V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v4}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f08019a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f08010d

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Page Scroll"

    invoke-virtual {v2, v4, v5, v6}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_28

    const/4 v2, -0x1

    :goto_f
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v4, :cond_29

    const/4 v4, 0x1

    :goto_10
    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v4}, Lcom/android/launcher3/home/ZeroPageController;->setOffset(IIZ)Z

    goto/16 :goto_5

    :cond_27
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_e

    :cond_28
    const/4 v2, 0x1

    goto :goto_f

    :cond_29
    const/4 v4, 0x0

    goto :goto_10

    :cond_2a
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v4

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->getOffset()Landroid/graphics/Point;

    move-result-object v2

    iget v5, v2, Landroid/graphics/Point;->x:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_2b

    const/4 v7, 0x1

    :goto_11
    const-wide/16 v8, 0x0

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/home/ZeroPageController;->setOffsetMsg(IIZJ)V

    goto/16 :goto_5

    :cond_2b
    const/4 v7, 0x0

    goto :goto_11

    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mTouchDowned:Z

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-nez v2, :cond_2c

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-nez v2, :cond_2c

    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "dispatchTouchEvent - skipped wrong touch up event on virtual screen"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_2c
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovedToVirtualScreen:Z

    if-eqz v2, :cond_2d

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    :goto_12
    invoke-direct/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    goto/16 :goto_5

    :cond_2d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    if-eqz v2, :cond_2e

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/ZeroPageController;->moveToVirtualScreen(I)V

    goto :goto_12

    :cond_2e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    goto :goto_12

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/home/ZeroPageController;->restoreOffset()V

    goto/16 :goto_5

    :cond_2f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/launcher3/home/ZeroPageController;->mDownX:I

    sub-int v2, v20, v2

    if-gtz v2, :cond_e

    :cond_30
    const/4 v15, 0x0

    goto/16 :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public enterZeroPageSetting()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/HomeController;->enterOverviewState(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getZeroPageSwitchLayout()Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/launcher3/home/Workspace;->setAlphaWithVisibility(Landroid/view/View;IZ)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->hideDefaultHomeIcon()V

    :cond_0
    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mIsFromZeroPageSetting:Z

    return-void
.end method

.method getOffset()Landroid/graphics/Point;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getOffset()Landroid/graphics/Point;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMessages()Z
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCurrentZeroPage()Z
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v0}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->getScreenIdForPageIndex(I)J

    move-result-wide v2

    const-wide/16 v4, -0x12d

    cmp-long v1, v2, v4

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    :cond_1
    return-void
.end method

.method removeCustomZeroPage(Z)V
    .locals 10

    const/4 v2, 0x1

    const/4 v4, -0x1

    const-wide/16 v8, -0x12d

    const/4 v7, 0x0

    const/4 v3, 0x0

    sget-boolean v1, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mZeroPageBgView:Landroid/widget/LinearLayout;

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "removeZeroPageContentPage - Expected custom zero page to exist"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    move v1, v2

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getWorkspaceScreens()Lcom/android/launcher3/util/LongArrayMap;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/launcher3/util/LongArrayMap;->remove(J)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/home/Workspace;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelZeroPagePreviewTask()V

    iget-object v5, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v4

    :goto_2
    iget-object v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v5, v1, v3}, Lcom/android/launcher3/home/Workspace;->setDefaultPage(IZ)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    if-nez p1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v4}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v1

    const/16 v2, -0x3e9

    if-eq v1, v2, :cond_9

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getRestorePage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setRestorePage(I)V

    :goto_3
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    invoke-virtual {v1}, Lcom/android/launcher3/common/drawable/FastBitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    iput-object v7, p0, Lcom/android/launcher3/home/ZeroPageController;->mAppPreview:Lcom/android/launcher3/common/drawable/FastBitmapDrawable;

    :cond_6
    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getDefaultPage()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->updateDefaultHomePageIndicator(I)V

    goto/16 :goto_0

    :cond_7
    move v1, v3

    goto/16 :goto_1

    :cond_8
    move v1, v3

    goto :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v2}, Lcom/android/launcher3/home/Workspace;->getNextPage()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/home/Workspace;->setCurrentPage(I)V

    goto :goto_3
.end method

.method public restoreOffset()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v1, "restoreOffset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->cancelAnimation()V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->removeMsg()V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetTouchState()V

    iput-boolean v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSwipe:Z

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mMovingState:I

    iput v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mPreValues:I

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->resetOffset()V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v1}, Lcom/android/launcher3/Utilities;->getZeroPageKey(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v1, "start_from_zeropage"

    invoke-static {v0, v2, v1}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method setOffset(II)Z
    .locals 3

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOffset - offsetX = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->setOffset(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setup()V
    .locals 6

    const/4 v5, 0x1

    sget-boolean v3, Lcom/android/launcher3/home/ZeroPageController;->sEnableZeroPage:Z

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v3, Landroid/os/HandlerThread;

    const-string v4, "VirtualScreenThread"

    invoke-direct {v3, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    new-instance v3, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenThread:Landroid/os/HandlerThread;

    invoke-virtual {v4}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, p0, p0, v4}, Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;-><init>(Lcom/android/launcher3/home/ZeroPageController;Lcom/android/launcher3/home/ZeroPageController;Landroid/os/Looper;)V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mVirtualScreenHandler:Lcom/android/launcher3/home/ZeroPageController$VirtualScreenHandler;

    new-instance v3, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v4, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;-><init>(Landroid/content/Context;)V

    sput-object v3, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const-string v4, "desktopmode"

    invoke-virtual {v3, v4}, Lcom/android/launcher3/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->isDesktopMode()Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v3, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v4, "DeX mode - do not startActivityInVirtualScreen"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    new-instance v3, Lcom/android/launcher3/util/alarm/Alarm;

    invoke-direct {v3}, Lcom/android/launcher3/util/alarm/Alarm;-><init>()V

    iput-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mThreadExitAlarm:Lcom/android/launcher3/util/alarm/Alarm;

    new-instance v4, Lcom/android/launcher3/home/ZeroPageController$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/home/ZeroPageController$1;-><init>(Lcom/android/launcher3/home/ZeroPageController;)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/alarm/Alarm;->setOnAlarmListener(Lcom/android/launcher3/util/alarm/OnAlarmListener;)V

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mTouchSlop:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mMaximumVelocity:I

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v3}, Lcom/android/launcher3/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090168

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mBezelSize:I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v3, v5, v5}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method

.method public startDownloadZeroPage(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.samsung.android.app.spage"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "samsungapps://ProductDetail/com.samsung.android.app.spage"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v2, "type"

    const-string v3, "cover"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x14000020

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2, v0}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public startZeroPage()V
    .locals 10

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    const-string v2, "launch zeropage Activity."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->getDisplayIdByPackage(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8}, Landroid/content/Intent;-><init>()V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPagePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v8, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;

    invoke-direct {v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;-><init>()V

    iget v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    sget v2, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->FLAG_BASE_ACTIVITY:I

    or-int/2addr v1, v2

    iput v1, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->flags:I

    iput v0, v9, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;->baseDisplayId:I

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v1, v8, v9}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->updateMultiScreenLaunchParams(Landroid/content/Intent;Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager$LaunchParams;)Landroid/content/Intent;

    move-result-object v8

    const-string v1, "fromHome"

    const/4 v2, 0x1

    invoke-virtual {v8, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1, v8}, Lcom/android/launcher3/Launcher;->startActivity(Landroid/content/Intent;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getHomeController()Lcom/android/launcher3/home/HomeController;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/home/HomeController;->enterNormalState(ZZ)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportZeroPageHome()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    const/4 v2, 0x1

    const-string v3, "start_from_zeropage"

    invoke-static {v1, v2, v3}, Lcom/android/launcher3/Utilities;->setZeroPageKey(Landroid/content/Context;ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v1}, Lcom/android/launcher3/home/ZeroPageProvider;->notifyChange(Landroid/content/Context;)V

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "ZPEN"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/GSIMLogging;->setZeroPageStartTime()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v7

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v7

    sget-object v1, Lcom/android/launcher3/home/ZeroPageController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startZeroPage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Ljava/lang/NullPointerException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method switchToZeroPage()V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x12c

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/launcher3/home/ZeroPageController;->animatePage(IIZ)V

    return-void
.end method

.method unBindVirtualScreen()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/launcher3/home/ZeroPageController;->sVirtualScreenManager:Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;

    invoke-virtual {v0}, Lcom/samsung/android/sdk/virtualscreen/SVirtualScreenManager;->unBindVirtualScreen()Z

    :cond_0
    return-void
.end method

.method public updatePageIndicatorForZeroPage(ZZ)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->addMarkerForView(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0}, Lcom/android/launcher3/home/Workspace;->getPageIndicator()Lcom/android/launcher3/common/view/PageIndicator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/view/PageIndicator;->getMarkerStartOffset()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setZeroPageMarker(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->setMarkerStartOffset(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    iget-object v1, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v1}, Lcom/android/launcher3/home/Workspace;->getCurrentPage()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/Workspace;->setActiveMarker(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/home/Workspace;->removeMarkerForView(I)V

    goto :goto_0
.end method

.method updateZeroPage(I)V
    .locals 7

    const/4 v6, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v3}, Lcom/android/launcher3/home/ZeroPageController;->getZeroPageActiveState(Landroid/content/Context;Z)Z

    move-result v0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    const/4 v0, 0x0

    iput-boolean v3, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    :cond_0
    :goto_0
    sget-object v2, Lcom/android/launcher3/home/ZeroPageController;->sZeroPageCompName:Landroid/content/ComponentName;

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/ZeroPageController;->updateZeroPageAppMetadata(Landroid/content/ComponentName;)V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {v2, v0}, Lcom/android/launcher3/home/ZeroPageController;->setZeroPageActiveState(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mWorkspace:Lcom/android/launcher3/home/Workspace;

    const-wide/16 v4, -0x12d

    invoke-virtual {v2, v4, v5}, Lcom/android/launcher3/home/Workspace;->getScreenWithId(J)Lcom/android/launcher3/common/base/view/CellLayout;

    move-result-object v1

    instance-of v2, v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    if-eqz v2, :cond_3

    check-cast v1, Lcom/android/launcher3/home/WorkspaceCellLayout;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WorkspaceCellLayout;->getZeroPageSwitch()Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->loadZeroPagePreviewBitmap()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-ne p1, v6, :cond_0

    const/4 v0, 0x1

    iput-boolean v6, p0, Lcom/android/launcher3/home/ZeroPageController;->mInstalled:Z

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/ZeroPageController;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-direct {p0, v2, v3, v6}, Lcom/android/launcher3/home/ZeroPageController;->startActivityInVirtualScreen(Landroid/content/Context;ZZ)V

    invoke-direct {p0}, Lcom/android/launcher3/home/ZeroPageController;->bindVirtualScreen()V

    goto :goto_1
.end method
