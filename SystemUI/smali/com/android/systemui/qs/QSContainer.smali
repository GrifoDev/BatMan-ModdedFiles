.class public Lcom/android/systemui/qs/QSContainer;
.super Landroid/widget/FrameLayout;
.source "QSContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSContainer$1;,
        Lcom/android/systemui/qs/QSContainer$2;
    }
.end annotation


# instance fields
.field private final mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

.field private mContext:Landroid/content/Context;

.field private mDelay:J

.field private mDeskMode:Z

.field protected mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

.field private mHeaderAnimating:Z

.field private mHeightOverride:I

.field private mKeyguardShowing:Z

.field private mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

.field private mListening:Z

.field private mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

.field private mQSBarController:Lcom/android/systemui/qs/QSBarController;

.field private mQSDetail:Lcom/android/systemui/qs/QSDetail;

.field protected mQSPanel:Lcom/android/systemui/qs/QSPanel;

.field private mQSPanelOverlappedHeight:F

.field private final mQsBounds:Landroid/graphics/Rect;

.field private mQsExpanded:Z

.field protected mQsExpansion:F

.field private mQsPanelTopMargin:F

.field private mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

.field private final mSizePoint:Landroid/graphics/Point;

.field private mStackScrollerOverscrolling:Z

.field private final mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSContainer;)Landroid/animation/Animator$AnimatorListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSContainer;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSContainer;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/qs/QSContainer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    new-instance v0, Lcom/android/systemui/qs/QSContainer$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$1;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    new-instance v0, Lcom/android/systemui/qs/QSContainer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSContainer$2;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mAnimateHeaderSlidingInListener:Landroid/animation/Animator$AnimatorListener;

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    return-void
.end method

.method private updateBottom()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->calculateContainerHeight()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/QSContainer;->setBottom(I)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/QSDetail;->setBottom(I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSDetail;->getWidth()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getTop()I

    move-result v2

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/QSDetail;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method private updateQsState()V
    .locals 6

    const/4 v2, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSPanel;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-boolean v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    invoke-virtual {v1, v5}, Lcom/android/systemui/qs/QSDetail;->setExpanded(Z)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_4

    :cond_0
    move v1, v3

    :goto_1
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v1, :cond_5

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    if-eqz v1, :cond_6

    :cond_2
    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpanded(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSPanel;->getTileLayout()Lcom/android/systemui/qs/QSPanel$QSTileLayout;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-eqz v0, :cond_7

    :goto_3
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_2

    :cond_6
    move v1, v4

    goto :goto_2

    :cond_7
    move v3, v2

    goto :goto_3
.end method


# virtual methods
.method public animateHeaderSlidingIn(J)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    iput-wide p1, p0, Lcom/android/systemui/qs/QSContainer;->mDelay:J

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mStartHeaderSlidingIn:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    return-void
.end method

.method public animateHeaderSlidingOut()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v1

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x168

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/qs/QSContainer$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$4;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method protected calculateContainerHeight()I
    .locals 5

    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    iget v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v3, :cond_1

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->getHeight()I

    move-result v3

    :goto_2
    int-to-float v1, v3

    float-to-int v3, v1

    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v2

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v0

    goto :goto_1

    :cond_2
    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    add-int/2addr v4, v0

    sub-int v4, v2, v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getCollapsedHeight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v0

    goto :goto_2
.end method

.method public getBarController()Lcom/android/systemui/qs/QSBarController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    return-object v0
.end method

.method public getDesiredHeight()I
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isClosingDetail()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->getMeasuredHeight()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public getHeader()Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    return-object v0
.end method

.method public getOverlappedHeight()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    float-to-int v0, v0

    goto :goto_0
.end method

.method public getQsMinExpansionHeight()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v1}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getQsPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    return-object v0
.end method

.method public getSecCustomizer()Lcom/android/systemui/qs/customize/SecQSCustomizer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    return-object v0
.end method

.method public isCustomizing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isShowingDetail()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanel;->isShowingCustomize()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isShowingDetail(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->isDetailsOpened(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSDetail;->isShowingDetail()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected moveFocus(Landroid/view/View;I)V
    .locals 5

    const/high16 v4, 0x40000

    const/high16 v3, 0x60000

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v4}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v2}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    goto :goto_0

    :pswitch_2
    if-nez p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    invoke-interface {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;->onFocusAreaChange(Landroid/view/View;I)V

    goto :goto_0

    :cond_1
    if-ne p2, v2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/QSPanel;->setDescendantFocusability(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setFocusable(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setFocusable(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f130186
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyCustomizeChanged()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/qs/QSPanel;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->isCustomizing()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    move v1, v2

    :cond_2
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->onQsHeightChanged()V

    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onFinishInflate()V
    .locals 12

    const v4, 0x7f0d03f6

    const v5, 0x7f0d03f5

    const v10, 0x7f0d0218

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v3, 0x7f130186

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSPanel;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    const v3, 0x7f130187

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QSDetail;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    const v3, 0x7f130188

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v3, v6, v7}, Lcom/android/systemui/qs/QSDetail;->setQsPanel(Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;)V

    const v3, 0x7f1303b5

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v3, p0}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->setQsContainer(Lcom/android/systemui/qs/QSContainer;)V

    :cond_0
    const-string/jumbo v3, "desk"

    const v6, 0x7f130054

    invoke-virtual {p0, v6}, Lcom/android/systemui/qs/QSContainer;->getTag(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    new-instance v3, Lcom/android/systemui/qs/QSBarController;

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v8, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-direct {v3, v6, v7, v8, v0}, Lcom/android/systemui/qs/QSBarController;-><init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;Z)V

    iput-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/QSContainer;->setExpanded(Z)V

    invoke-virtual {p0, v9, v9}, Lcom/android/systemui/qs/QSContainer;->setQsExpansion(FF)V

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSBarController;->hasBarOnHeader()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    :goto_0
    iput v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_5

    :goto_1
    invoke-virtual {v6, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    sub-float/2addr v3, v4

    iput v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanelOverlappedHeight:F

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-nez v0, :cond_2

    new-instance v4, Lcom/android/systemui/qs/QSAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    const v5, 0x7f1303df

    invoke-virtual {v3, v5}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-direct {v4, p0, v3, v5}, Lcom/android/systemui/qs/QSAnimator;-><init>(Lcom/android/systemui/qs/QSContainer;Lcom/android/systemui/qs/QuickQSPanel;Lcom/android/systemui/qs/QSPanel;)V

    iput-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/QSAnimator;->setBarController(Lcom/android/systemui/qs/QSBarController;)V

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "qs_detail_content_primary_text_color"

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v6, 0x7f0b012e

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "qs_detail_content_secondary_text_color"

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    const v6, 0x7f0b0131

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    new-instance v1, Lcom/android/systemui/qs/QSContainer$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/qs/QSContainer$3;-><init>(Lcom/android/systemui/qs/QSContainer;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    check-cast v3, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/phone/QuickStatusBarHeader;->setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3, v1}, Lcom/android/systemui/qs/QSPanel;->setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    if-eqz v0, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    goto/16 :goto_0

    :cond_4
    move v3, v5

    goto :goto_2

    :cond_5
    move v4, v5

    goto/16 :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/QSPanel;->measure(II)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v2}, Lcom/android/systemui/qs/QSPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    iget v2, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->getMeasuredHeight()I

    move-result v3

    add-int v0, v2, v3

    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-super {p0, v2, v3}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainer;->getDisplay()Landroid/view/Display;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v2, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    iget-object v3, p0, Lcom/android/systemui/qs/QSContainer;->mSizePoint:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    const/high16 v4, -0x80000000

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v2, p1, v3}, Lcom/android/systemui/qs/customize/SecQSCustomizer;->measure(II)V

    :cond_0
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRtlPropertiesChanged(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSAnimator;->onRtlChanged()V

    :cond_0
    return-void
.end method

.method public setDeskMode(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mDeskMode:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanel;->setDeskMode(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setDeskMode(Z)V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHeaderClickable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setClickable(Z)V

    return-void
.end method

.method public setHeightOverride(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mHeightOverride:I

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    return-void
.end method

.method public setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mSecQSCustomizer:Lcom/android/systemui/qs/customize/SecQSCustomizer;

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/qs/QSPanel;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;Lcom/android/systemui/qs/customize/SecQSCustomizer;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-object v1, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSDetail;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSBarController;->setHost(Lcom/android/systemui/statusbar/phone/QSTileHost;)V

    return-void
.end method

.method public setKeyguardShowing(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSAnimator;->setOnKeyguard(Z)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    const/4 v1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    iget-object v2, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setListening(Z)V

    iget-object v0, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-boolean v2, p0, Lcom/android/systemui/qs/QSContainer;->mListening:Z

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpanded:Z

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSPanel;->setListening(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setOnFocusAreaChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mListener:Lcom/android/systemui/statusbar/phone/NotificationPanelView$OnFocusAreaChangeListener;

    return-void
.end method

.method public setOverscrolling(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/qs/QSContainer;->mStackScrollerOverscrolling:Z

    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateQsState()V

    return-void
.end method

.method public setPanelView(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSContainer;->mPanelView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-void
.end method

.method public setQsExpansion(FF)V
    .locals 9

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/systemui/qs/QSContainer;->mQsExpansion:F

    sub-float v3, p1, v5

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float p2, v3, v4

    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/QSContainer;->setTranslationY(F)V

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v4, :cond_6

    :cond_2
    move v4, p1

    :goto_0
    invoke-virtual {v7, v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->setExpansion(F)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeader:Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/BaseStatusBarHeader;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget v7, p0, Lcom/android/systemui/qs/QSContainer;->mQsPanelTopMargin:F

    sub-float v1, v4, v7

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_7

    move v4, v6

    :goto_1
    int-to-float v0, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v4, v0

    sub-float/2addr v4, v1

    mul-float v2, v3, v4

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v4, v2}, Lcom/android/systemui/qs/QSPanel;->setTranslationY(F)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v4, :cond_3

    iget-boolean v4, p0, Lcom/android/systemui/qs/QSContainer;->mHeaderAnimating:Z

    if-eqz v4, :cond_8

    :cond_3
    move v4, p1

    :goto_2
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSBarController;->setPosition(F)V

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSDetail:Lcom/android/systemui/qs/QSDetail;

    cmpl-float v4, p1, v5

    if-nez v4, :cond_9

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v7, v4}, Lcom/android/systemui/qs/QSDetail;->setFullyExpanded(Z)V

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    invoke-virtual {v4, p1}, Lcom/android/systemui/qs/QSAnimator;->setPosition(F)V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/qs/QSContainer;->updateBottom()V

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v7}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v7

    iget-boolean v8, p0, Lcom/android/systemui/qs/QSContainer;->mKeyguardShowing:Z

    if-eqz v8, :cond_a

    :goto_4
    sub-int v6, v7, v6

    int-to-float v6, v6

    sub-float/2addr v5, p1

    mul-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getWidth()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v5}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    const-string/jumbo v4, "desk"

    const v5, 0x7f130054

    invoke-virtual {p0, v5}, Lcom/android/systemui/qs/QSContainer;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v5, p0, Lcom/android/systemui/qs/QSContainer;->mQsBounds:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/android/systemui/qs/QSPanel;->setClipBounds(Landroid/graphics/Rect;)V

    :cond_5
    return-void

    :cond_6
    move v4, v5

    goto/16 :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v4}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v4

    goto :goto_1

    :cond_8
    move v4, v5

    goto :goto_2

    :cond_9
    move v4, v6

    goto :goto_3

    :cond_a
    iget-object v6, p0, Lcom/android/systemui/qs/QSContainer;->mQSBarController:Lcom/android/systemui/qs/QSBarController;

    invoke-virtual {v6}, Lcom/android/systemui/qs/QSBarController;->getCollapsedHeight()I

    move-result v6

    goto :goto_4
.end method
