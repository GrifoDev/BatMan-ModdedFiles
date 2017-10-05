.class public Lcom/android/launcher3/home/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;,
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;,
        Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;
    }
.end annotation


# static fields
.field private static final ACCU_WEATHERINFO_URI:Landroid/net/Uri;

.field private static final ALPHA_DURATION:I = 0xfa

.field private static final EASY_CONTACTS_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.widgetapp.easymodecontactswidget"

.field private static final FLING_INVALID:I = -0x1

.field private static final FLING_NOT_SUPPORT:I = 0x0

.field private static final FLING_SUPPORT:I = 0x1

.field public static final GOOGLE_SEARCH_APP_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final PRV_HOSTVIEW:Ljava/lang/String; = "previous_hostView"

.field private static final SWIPE_MIN_DISTANCE:I = 0x3c

.field private static final TAG:Ljava/lang/String;

.field private static final TRANSLATION_DURATION:I = 0xfa

.field public static final WEATHER_APPWIDGET_PACKAGE_NAME:Ljava/lang/String; = "com.sec.android.daemonapp"

.field public static final WETHER_SETTING_INFO_URI:Landroid/net/Uri;


# instance fields
.field private mAnimationSet:Landroid/animation/AnimatorSet;

.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

.field private mFlingOption:I

.field private mGestureDetector:Landroid/view/GestureDetector;

.field mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

.field public mHasSetPivot:Z

.field private mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

.field private mIndicatorHeight:I

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsAllowSwipe:Z

.field public mIsGSB:Z

.field private mIsScrollingDown:Z

.field private mIsScrollingUp:Z

.field private mIsWeatherCityOneMore:Z

.field private mIsWeatherFling:Z

.field private mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field mPrvHostView:Landroid/widget/FrameLayout;

.field private mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

.field private final mSineInOut33:Landroid/view/animation/Interpolator;

.field private final mSineInOut80:Landroid/view/animation/Interpolator;

.field private mSlop:F

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mWeatherCityAddObserver:Landroid/database/ContentObserver;

.field private mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    const-string v0, "content://com.sec.android.daemonapp.ap.accuweather.provider/settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->WETHER_SETTING_INFO_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iput v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIndicatorHeight:I

    const/16 v0, 0x22

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    const/16 v0, 0x1e

    invoke-static {v0}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherFling:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    new-instance v0, Lcom/android/launcher3/home/WidgetScroll;

    invoke-direct {v0}, Lcom/android/launcher3/home/WidgetScroll;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasSetPivot:Z

    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$1;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    new-instance v0, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    check-cast p1, Lcom/android/launcher3/Launcher;

    invoke-virtual {p1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    new-instance v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iput-boolean v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getWidth()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getHeight()I

    move-result v1

    iput v1, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)I
    .locals 1

    iget v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIndicatorHeight:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherFling:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    return p1
.end method

.method static synthetic access$302(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Lcom/android/launcher3/home/WidgetScroll;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->checkWeatherCount()V

    return-void
.end method

.method public static calculateWidgetSize(IIII)Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .locals 11

    new-instance v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    invoke-direct {v5}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;-><init>()V

    const/4 v9, 0x0

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    const/high16 v9, 0x3f800000    # 1.0f

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    iput p2, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    iput p3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    iput p2, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleWidth:I

    iput p3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->visibleHeight:I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v2

    iget-object v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v1

    iget-object v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v9}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellGap()I

    move-result v0

    iget v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellWidth:I

    mul-int v10, p0, v9

    const/4 v9, 0x2

    if-lt p0, v9, :cond_5

    add-int/lit8 v9, p0, -0x1

    mul-int/2addr v9, v1

    :goto_0
    add-int v4, v10, v9

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {}, Lcom/android/launcher3/Utilities;->isMobileKeyboardMode()Z

    move-result v9

    if-eqz v9, :cond_0

    const v6, 0x3f333333    # 0.7f

    :cond_0
    iget v9, v2, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->defaultCellHeight:I

    mul-int v10, p1, v9

    const/4 v9, 0x2

    if-lt p1, v9, :cond_6

    add-int/lit8 v9, p1, -0x1

    mul-int/2addr v9, v0

    :goto_1
    add-int/2addr v9, v10

    int-to-float v9, v9

    div-float/2addr v9, v6

    float-to-int v3, v9

    if-ge p2, v4, :cond_1

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iput v4, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    :cond_1
    if-ge p3, v3, :cond_2

    const/4 v9, 0x1

    iput-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    iput v3, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_2
    iget-boolean v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->forceToResize:Z

    if-eqz v9, :cond_4

    int-to-float v9, p2

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    int-to-float v10, v10

    div-float v7, v9, v10

    int-to-float v9, p3

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    int-to-float v10, v10

    div-float v8, v9, v10

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v7, v9

    if-nez v9, :cond_3

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_4

    :cond_3
    cmpg-float v9, v7, v8

    if-gez v9, :cond_7

    iput v7, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    :goto_2
    int-to-float v9, p2

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    int-to-float v9, p3

    const/high16 v10, 0x3f800000    # 1.0f

    mul-float/2addr v9, v10

    iget v10, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    div-float/2addr v9, v10

    float-to-int v9, v9

    iput v9, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    :cond_4
    return-object v5

    :cond_5
    const/4 v9, 0x0

    goto :goto_0

    :cond_6
    const/4 v9, 0x0

    goto :goto_1

    :cond_7
    iput v8, v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    goto :goto_2
.end method

.method private checkWeatherCount()V
    .locals 7

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/home/WidgetScroll;->setWeatherScrollablility(Z)V

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    return-void

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    goto :goto_0
.end method

.method private createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;
    .locals 7

    const/4 v1, 0x0

    if-nez p1, :cond_0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->buildDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    sget-object v5, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v6, "startFlickAnimation getDrawingCache fail or cacheBitmap is isRecycled"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v4, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const-string v5, "previous_hostView"

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Z)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    iput-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->createPrvView(Landroid/view/View;)Landroid/widget/FrameLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v4, "fling"

    if-eqz p2, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {p1, v0}, Landroid/appwidget/AppWidgetHostView;->updateAppWidgetOptions(Landroid/os/Bundle;)V

    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherCityOneMore:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;Z)V

    move v2, v3

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V

    goto :goto_0
.end method

.method private initWidgetAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->destroyDrawingCache()V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPrvHostView:Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    move-object v1, p1

    check-cast v1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast p1, Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {p1, v2}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method private isAvailableChangeCity()Z
    .locals 11

    const/4 v3, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-array v2, v9, [Ljava/lang/String;

    const-string v1, "COL_SETTING_PINNED_LOCATION"

    aput-object v1, v2, v10

    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->WETHER_SETTING_INFO_URI:Landroid/net/Uri;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    move v1, v9

    :goto_1
    iput-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsWeatherFling:Z

    if-eq v8, v9, :cond_3

    :goto_2
    return v9

    :catch_0
    move-exception v7

    :try_start_1
    sget-object v1, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isAvailableChangeCity Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v7}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_2
    move v1, v10

    goto :goto_1

    :cond_3
    move v9, v10

    goto :goto_2
.end method

.method private resetTouchStateOfTopContainer()V
    .locals 3

    const/4 v0, 0x0

    move-object v1, p0

    :goto_0
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/android/launcher3/home/HomeContainer;

    if-eqz v2, :cond_2

    const/4 v0, 0x1

    :cond_0
    if-eqz v0, :cond_1

    check-cast v1, Lcom/android/launcher3/home/HomeContainer;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeContainer;->resetTouchState()V

    :cond_1
    return-void

    :cond_2
    invoke-interface {v1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    goto :goto_0
.end method

.method private startWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;Z)V
    .locals 13

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getScaleY()F

    move-result v1

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetHostView;->getHeight()I

    move-result v6

    int-to-float v6, v6

    mul-float v0, v6, v1

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setPivotX(F)V

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setPivotY(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setScaleX(F)V

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v6, v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const/4 v6, 0x1

    new-array v8, v6, [Landroid/animation/PropertyValuesHolder;

    const/4 v9, 0x0

    sget-object v10, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v6, 0x2

    new-array v11, v6, [F

    const/4 v6, 0x0

    const/4 v12, 0x0

    aput v12, v11, v6

    const/4 v12, 0x1

    if-eqz p3, :cond_0

    neg-float v6, v0

    :goto_0
    aput v6, v11, v12

    invoke-static {v10, v11}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v6

    aput-object v6, v8, v9

    invoke-static {v7, v8}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    const/4 v11, 0x0

    if-eqz p3, :cond_1

    :goto_1
    aput v0, v10, v11

    const/4 v11, 0x1

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut33:Landroid/view/animation/Interpolator;

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/animation/PropertyValuesHolder;

    const/4 v8, 0x0

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Landroid/util/Property;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v8, 0xfa

    invoke-virtual {v6, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSineInOut80:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Lcom/android/launcher3/home/LauncherAppWidgetHostView$2;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$2;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Landroid/appwidget/AppWidgetHostView;Landroid/widget/FrameLayout;)V

    invoke-virtual {v3, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Landroid/appwidget/AppWidgetHostView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    const/4 v7, 0x4

    new-array v7, v7, [Landroid/animation/Animator;

    const/4 v8, 0x0

    aput-object v3, v7, v8

    const/4 v8, 0x1

    aput-object v5, v7, v8

    const/4 v8, 0x2

    aput-object v4, v7, v8

    const/4 v8, 0x3

    aput-object v2, v7, v8

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-void

    :cond_0
    move v6, v0

    goto/16 :goto_0

    :cond_1
    neg-float v0, v0

    goto/16 :goto_1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    return-void
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/appwidget/AppWidgetHostView;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getIsGSB()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    return v0
.end method

.method public getLauncherAppWidgetProviderInfo()Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public getResizeResult()Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    return-object v0
.end method

.method isReinflateRequired()Z
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 6

    const/4 v5, 0x1

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v1, :cond_6

    const-string v2, "com.sec.android.daemonapp"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_1

    new-instance v2, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureListener:Landroid/view/GestureDetector$OnGestureListener;

    invoke-direct {v2, v3, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$WeatherCityAddObserver;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->ACCU_WEATHERINFO_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->checkWeatherCount()V

    :cond_1
    iput v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    :goto_0
    if-eqz v1, :cond_2

    const-string v2, "com.sec.android.widgetapp.easymodecontactswidget"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iput-boolean v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    :cond_2
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGSAPreWarming()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    const-string v2, "com.google.android.googlequicksearchbox"

    iget-object v3, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iput-boolean v5, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsGSB:Z

    :cond_3
    if-eqz v1, :cond_5

    :try_start_0
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    invoke-virtual {v2}, Lcom/android/launcher3/home/WidgetScroll;->isWeather()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    iget-boolean v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    invoke-virtual {v2, p0, v3}, Lcom/android/launcher3/home/WidgetScroll;->getScrollType(Landroid/view/View;Z)I

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsAllowSwipe:Z

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    if-nez v2, :cond_5

    new-instance v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    invoke-direct {v2, p0, p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;-><init>(Lcom/android/launcher3/home/LauncherAppWidgetHostView;Lcom/android/launcher3/home/LauncherAppWidgetHostView;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHierarchyChangeListener:Lcom/android/launcher3/home/LauncherAppWidgetHostView$HierarchyChangeListener;

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    sget-object v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOnHierarchyChangeListener "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_1
    return-void

    :cond_6
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWeatherCityAddObserver:Landroid/database/ContentObserver;

    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v2, 0x1

    const/4 v6, 0x0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getMultiSelectManager()Lcom/android/launcher3/common/multiselect/MultiSelectManager;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/launcher3/common/multiselect/MultiSelectManager;->isMultiSelectMode()Z

    move-result v1

    if-eqz v1, :cond_1

    move v6, v2

    :cond_0
    :goto_0
    return v6

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v6, v2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    move v6, v2

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->postCheckForLongPress()V

    :cond_6
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mDragLayer:Lcom/android/launcher3/common/view/DragLayer;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/common/view/DragLayer;->setTouchCompleteListener(Lcom/android/launcher3/common/view/DragLayer$TouchCompleteListener;)V

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WidgetScroll;->isScrollable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mWidgetScroll:Lcom/android/launcher3/home/WidgetScroll;

    invoke-virtual {v1}, Lcom/android/launcher3/home/WidgetScroll;->isWeather()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->isAvailableChangeCity()Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_7
    invoke-direct {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->resetTouchStateOfTopContainer()V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v3, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertItemLaunchLog(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/Launcher;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.googlequicksearchbox.SearchWidgetProvider"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "GSWS"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/util/logging/SALogging;->insertGoogleSearchLaunchCount()V

    :cond_8
    :pswitch_2
    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    if-nez v1, :cond_9

    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingDown:Z

    if-eqz v1, :cond_0

    :cond_9
    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    iget-object v8, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mAnimationSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_a
    iget-boolean v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mIsScrollingUp:Z

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->doWidgetAnimation(Landroid/appwidget/AppWidgetHostView;Z)Z

    move-result v6

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iget v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v1, v2, v3}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v1}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

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

.method public onTouchComplete()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lcom/android/launcher3/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mLongPressHelper:Lcom/android/launcher3/util/event/CheckLongPressHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/util/event/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setResizeScaleResult(Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    sget-object v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setResizeScaleResult() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " scaleToResize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v2, v2, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(widget id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getAppWidgetId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mHasSetPivot:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setPivotX(F)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setPivotY(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mResizeResult:Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;

    iget v0, v0, Lcom/android/launcher3/home/LauncherAppWidgetHostView$ResizeResult;->scaleToResize:F

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->setScaleY(F)V

    return-void
.end method

.method public supportFlingOption()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;

    if-eqz v0, :cond_1

    const-string v3, "com.sec.android.daemonapp"

    iget-object v4, v0, Lcom/android/launcher3/home/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v1, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    if-ne v3, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    iput v2, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mFlingOption:I

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    return-void
.end method

.method public updateLastInflationOrientation()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/home/LauncherAppWidgetHostView;->mPreviousOrientation:I

    return-void
.end method
