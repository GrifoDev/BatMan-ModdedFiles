.class public abstract Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.super Landroid/widget/FrameLayout;
.source "KeyguardServiceBoxPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;,
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;,
        Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAttachPageHandler:Landroid/os/Handler;

.field private mCurrentOrientation:I

.field private mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mIsAnimating:Z

.field private mIsBigView:Z

.field protected mIsCovered:Z

.field protected mIsMKeyboardConnected:Z

.field protected mIsReservedToTransition:Z

.field private mIsRotationEnabled:Z

.field protected mPageType:I

.field protected mRes:Landroid/content/res/Resources;

.field protected mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

.field private mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

.field protected mSuppressTransition:Z

.field protected mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

.field protected mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    const/4 v2, -0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mSuppressTransition:Z

    iput v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage$3;-><init>(Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mRes:Landroid/content/res/Resources;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachContentsView() holder is null"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mSuppressTransition:Z

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isTransitionEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isAttachedToWindow()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isServiceBoxShowing()Z

    move-result v2

    :goto_0
    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mSuppressTransition:Z

    sget-object v3, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "attachContentsView() needToTransition = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", listener = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getContentsView(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    return-void

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v3, :cond_5

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPageTopPos()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    invoke-virtual {v0, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-nez v3, :cond_5

    new-instance v3, Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v4}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v5}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/android/keyguard/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Z)V

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    :cond_5
    if-eqz v2, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v3, v0, p1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->go(Landroid/view/View;Landroid/animation/Animator$AnimatorListener;)V

    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->initViews(Landroid/view/View;)V

    return-void

    :cond_6
    if-eqz p1, :cond_7

    invoke-interface {p1, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    invoke-interface {p1, v7}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method protected closeWindow()V
    .locals 3

    sget-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "closeWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->disableBlurFlag()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mDismissAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected final disableBlurFlag()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->disableBlurFlag(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected final dismissServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->dismissServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->closeWindow()V

    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected abstract getContentsView(I)Landroid/view/View;
.end method

.method protected abstract getHolder()Landroid/view/ViewGroup;
.end method

.method protected final getKeyguardStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public abstract getPackageName()Ljava/lang/String;
.end method

.method protected final getPageTopPos()I
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getPageTopPos(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTopPosOfHolder()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x2

    new-array v1, v2, [I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    aget v2, v1, v2

    return v2
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract initViews(Landroid/view/View;)V
.end method

.method protected isBigView()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    return v0
.end method

.method protected final isExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isContainerExpanded()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final isServiceBoxShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->isShowServiceBox()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected isTransitionEnabled()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public makeTransitionData()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/utils/SecTransition;->cancel()V

    :cond_1
    new-instance v1, Lcom/android/keyguard/servicebox/utils/SecTransition;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->getContainerViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {p0, v3}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/android/keyguard/servicebox/utils/SecTransition;-><init>(Landroid/view/ViewTreeObserver;Landroid/view/ViewGroup;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;Z)V

    iput-object v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 5

    const/4 v4, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onAttachedToWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardRune;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-eqz v0, :cond_1

    iput-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mAttachPageHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsRotationEnabled:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mCurrentOrientation:I

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mTransition:Lcom/android/keyguard/servicebox/utils/SecTransition;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->cancel()V

    :cond_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    sget-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDetachedFromWindow()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 0

    return-void
.end method

.method public abstract refreshViews()V
.end method

.method public setCoverState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsCovered:Z

    return-void
.end method

.method public setMobileKeyboardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsMKeyboardConnected:Z

    return-void
.end method

.method public setPageType(IZ)V
    .locals 3

    sget-object v0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPageType() pageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", isReservedToTransition = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    if-eq v0, p1, :cond_1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mSuppressTransition:Z

    :cond_0
    iput p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mShowAnimationListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    return-void
.end method

.method public final setServiceBoxController(Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;Z)V
    .locals 5

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getHolder()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v2, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setServiceBoxController() holder is null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public showExternalActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final showServiceBox()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mServiceBoxController:Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxController;->showServiceBox(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    sget-boolean v0, Lcom/android/keyguard/KeyguardRune;->SUPPORT_SERVICEBOX:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsBigView:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mPageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsReservedToTransition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->mIsAnimating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Landroid/widget/FrameLayout;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateCMAS(Z)V
    .locals 0

    return-void
.end method

.method public abstract updateChildViewsLook()V
.end method
