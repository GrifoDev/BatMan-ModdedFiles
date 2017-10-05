.class public Lcom/android/launcher3/home/EdgeLight;
.super Landroid/widget/FrameLayout;
.source "EdgeLight.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;
    }
.end annotation


# static fields
.field private static final ARROW_ANIM_START_DELAY:I = 0xc8

.field private static final ARROW_ANIM_TOTAL_DELAY:I = 0x258

.field private static final MAX_BIXBY_HOME_ENTER_COUNT_FOR_ALLOW:I = 0x3

.field private static final PREF_KEY_BIXBY_HOME_ENTER_COUNT:Ljava/lang/String; = "BixbyHomeEnterCountForEdgeLight"

.field private static final SPAGE_AUTHORITY:Ljava/lang/String; = "com.samsung.android.app.spage"

.field private static final SPAGE_NOTIFICATION:Ljava/lang/String; = "notification"

.field private static final SPAGE_NOTIFICATION_URI:Landroid/net/Uri;

.field private static final SPAGE_SHOW_NOTIFICATION:Ljava/lang/String; = "show_notification"

.field public static final TAG:Ljava/lang/String; = "EdgeLight"


# instance fields
.field private mArrowAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

.field private mArrowAnimSet:Landroid/animation/AnimatorSet;

.field private mArrowFrameView:Landroid/view/View;

.field private mArrowView1:Landroid/widget/ImageView;

.field private mArrowView2:Landroid/widget/ImageView;

.field private mBixbyHomeEnterCount:I

.field private mContext:Landroid/content/Context;

.field private mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

.field private mEdgeLightImage:Landroid/widget/ImageView;

.field private mHomeController:Lcom/android/launcher3/home/HomeController;

.field private mNotiExist:Z

.field private mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.app.spage/notification"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/home/EdgeLight;->SPAGE_NOTIFICATION_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/home/EdgeLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/EdgeLight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/home/EdgeLight;->mNotiExist:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    new-instance v0, Lcom/android/launcher3/home/EdgeLight$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/EdgeLight$1;-><init>(Lcom/android/launcher3/home/EdgeLight;)V

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    iput-object p1, p0, Lcom/android/launcher3/home/EdgeLight;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/launcher3/home/EdgeLight;->SPAGE_NOTIFICATION_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/EdgeLight;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/home/EdgeLight;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/EdgeLight;->mNotiExist:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/home/EdgeLight;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/EdgeLight;->mNotiExist:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/home/EdgeLight;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowFrameView:Landroid/view/View;

    return-object v0
.end method

.method private getArrowAnimSet(I)Landroid/animation/AnimatorSet;
    .locals 7

    const v6, 0x7f060002

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/EdgeLight;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f060003

    invoke-static {v4, v5}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/launcher3/home/EdgeLight;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/EdgeLight;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v6}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowFrameView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const/16 v4, 0x22

    invoke-static {v4}, Lcom/android/launcher3/util/ViInterpolator;->getInterploator(I)Landroid/view/animation/PathInterpolator;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v4, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowView1:Landroid/widget/ImageView;

    invoke-virtual {v2, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowView2:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/Animator;->setStartDelay(J)V

    const/4 v4, 0x3

    new-array v4, v4, [Landroid/animation/Animator;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    int-to-long v4, p1

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0
.end method

.method private setupAinmator(Z)V
    .locals 5

    const/16 v4, 0x258

    const v0, 0x7f11006d

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightImage:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    const v0, 0x7f11006e

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowFrameView:Landroid/view/View;

    if-eqz p1, :cond_0

    const v0, 0x7f11006f

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowView1:Landroid/widget/ImageView;

    const v0, 0x7f110070

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowView2:Landroid/widget/ImageView;

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    const/16 v3, 0xc8

    invoke-direct {p0, v3}, Lcom/android/launcher3/home/EdgeLight;->getArrowAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/EdgeLight;->getArrowAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-direct {p0, v4}, Lcom/android/launcher3/home/EdgeLight;->getArrowAnimSet(I)Landroid/animation/AnimatorSet;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimListenerAdapter:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowFrameView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->removeView(Landroid/view/View;)V

    goto :goto_0
.end method


# virtual methods
.method registerContentObserver(Lcom/android/launcher3/home/HomeController;)V
    .locals 4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    invoke-direct {v0, p0}, Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;-><init>(Lcom/android/launcher3/home/EdgeLight;)V

    iput-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    :cond_0
    iput-object p1, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "BixbyHomeEnterCountForEdgeLight"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    iget v0, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->setupAinmator(Z)V

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/android/launcher3/home/EdgeLight;->SPAGE_NOTIFICATION_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/launcher3/home/EdgeLight;->mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public startEdgeLight()V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/home/EdgeLight;->mNotiExist:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mContext:Landroid/content/Context;

    invoke-static {v0, v2}, Lcom/android/launcher3/home/ZeroPageController;->isActiveZeroPage(Landroid/content/Context;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v0}, Lcom/android/launcher3/home/HomeController;->checkEdgeLightDisplayAvailability()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "EdgeLight"

    const-string v1, "startEdgeLight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/EdgeLight;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    iget v0, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method

.method public stopEdgeLight()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "EdgeLight"

    const-string v1, "stopEdgeLight"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mEdgeLightAnimator:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/EdgeLight;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method unregisterContentObserver()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/home/EdgeLight;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mSpageNotificationObserver:Lcom/android/launcher3/home/EdgeLight$SpageNotificationObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method updateBixbyHomeEnterCount()V
    .locals 4

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mArrowAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    iget-object v1, p0, Lcom/android/launcher3/home/EdgeLight;->mHomeController:Lcom/android/launcher3/home/HomeController;

    invoke-virtual {v1}, Lcom/android/launcher3/home/HomeController;->getLauncher()Lcom/android/launcher3/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "BixbyHomeEnterCountForEdgeLight"

    iget v2, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    const-string v1, "EdgeLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateBixbyHomeEnterCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/launcher3/home/EdgeLight;->mBixbyHomeEnterCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
