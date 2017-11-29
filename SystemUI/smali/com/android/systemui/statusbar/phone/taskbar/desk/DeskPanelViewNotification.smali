.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;
.super Landroid/widget/FrameLayout;
.source "DeskPanelViewNotification.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;
.implements Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;
    }
.end annotation


# instance fields
.field private mAddNotification:Z

.field private mAnimationAlphaDelay:I

.field private mChangeAllAndSingle:Z

.field private mCollapseAnimSet:Landroid/animation/AnimatorSet;

.field private mCurrentHeadsUpKey:Ljava/lang/String;

.field private mCustom:Landroid/view/animation/Interpolator;

.field private mDNDSuppressed:Z

.field private mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

.field private mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mElastic50:Landroid/view/animation/ElasticCustom;

.field private mExpandAnimSet:Landroid/animation/AnimatorSet;

.field private mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHandler:Landroid/os/Handler;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIsCollapsing:Z

.field private mIsHandlerExit:Z

.field private mIsHeadsup:Z

.field private mIsHoverClose:Z

.field private mIsHoverIconClick:Z

.field private mIsPreview:Z

.field private mKeyguardState:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLocationOnScreen:[I

.field private mNotificationAreaView:Landroid/widget/LinearLayout;

.field private mNotificationPositionX:I

.field private mNotificationViewHeight:I

.field private mPosition:I

.field private mRemoteInputActive:Z

.field private mRemoveRunnable:Ljava/lang/Runnable;

.field private mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

.field private mShowAllNotification:Z

.field private mSineInOut70:Lcom/samsung/android/view/animation/SineInOut70;

.field private mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mStatusBarState:I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/view/animation/Interpolator;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)Lcom/samsung/android/view/animation/SineInOut80;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Landroid/animation/AnimatorSet;)Landroid/animation/AnimatorSet;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getExpandableNotificationRow(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationViewInner(F)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverIconClick:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverClose:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDNDSuppressed:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAddNotification:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mKeyguardState:Z

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimationAlphaDelay:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationPositionX:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationViewHeight:I

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private cancelAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    return-void
.end method

.method private collapse()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsCollapsing:Z

    return-void
.end method

.method private collapseDeskNotificationViewInner(F)V
    .locals 5

    const/16 v4, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;

    invoke-interface {v0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;->onDeskNotificationViewVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapse()V

    return-void
.end method

.method private expand()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v2, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setScrollable(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getDeskNotificationViewCollapseFrom()F
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_2
    return v1

    :pswitch_3
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskNotificationViewCollapseTo()F
    .locals 3

    const v2, 0x7f0d065c

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskNotificationViewExpandFrom()F
    .locals 3

    const v2, 0x7f0d065c

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    return v0

    :pswitch_2
    return v1

    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskNotificationViewExpandTo()F
    .locals 3

    const v2, 0x7f0d047c

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    packed-switch v1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getTaskBarHeight()I

    move-result v0

    :goto_0
    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :cond_0
    return v0

    :pswitch_2
    return v0

    :pswitch_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    :cond_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private getDeskPanelViewNotificationHeight(I)I
    .locals 4

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_2

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, 0x6

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setVerticalScrollBarEnabled(Z)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d066d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0480

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sub-int v0, v1, v2

    if-lt p1, v0, :cond_1

    move p1, v0

    :cond_1
    return p1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d047c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getBottomBarView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    add-int/2addr p1, v1

    goto :goto_0
.end method

.method private getExpandableNotificationRow(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private getHeadsUpTopEntryKey()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->getTopEntry()Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$HeadsUpEntry;->entry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, v1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method

.method private getPanelHeight()I
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setChildHeight(Ljava/lang/String;)F

    move-result v1

    float-to-int v0, v1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationHeight(I)I

    move-result v1

    return v1
.end method

.method private isDeskPanelViewNotificationArea(FF)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getLocationOnScreen([I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v1

    int-to-float v2, v2

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v0

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mLocationOnScreen:[I

    aget v2, v2, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    int-to-float v2, v2

    cmpg-float v2, p2, v2

    if-gez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private resetDeskHeadsupAnimatingState()V
    .locals 8

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v6

    if-ge v2, v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPreview(Z)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private setAnimationInterpolator()V
    .locals 5

    const/high16 v4, 0x3f800000    # 1.0f

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut80;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut80;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    new-instance v0, Lcom/samsung/android/view/animation/SineInOut70;

    invoke-direct {v0}, Lcom/samsung/android/view/animation/SineInOut70;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut70:Lcom/samsung/android/view/animation/SineInOut70;

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3dcccccd    # 0.1f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/ElasticCustom;

    const v1, 0x3fb33333    # 1.4f

    invoke-direct {v0, v4, v1}, Landroid/view/animation/ElasticCustom;-><init>(FF)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mElastic50:Landroid/view/animation/ElasticCustom;

    return-void
.end method

.method private setNotification(ZLjava/lang/String;)V
    .locals 4

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getExpandableNotificationRow(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPreview(Z)V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationAddinfo(ZLjava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    move-result v2

    float-to-int v0, v2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskPanelViewNotificationHeight(I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationViewHeight:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationViewHeight:I

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationAreaHeight(I)V

    return-void

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPreview(Z)V

    goto :goto_0
.end method

.method private setNotificationAreaHeight(I)V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d047c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr p1, v1

    :cond_0
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addNotification(Landroid/view/View;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v10, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    if-eqz v5, :cond_9

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, v10, v10}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    const/4 v3, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_2

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v5, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v5, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->addView(Landroid/view/View;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getHeadsUpTopEntryKey()Ljava/lang/String;

    move-result-object v0

    :cond_3
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isHeadsUp(Ljava/lang/String;)Z

    move-result v4

    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showNotificationState()Z

    move-result v5

    if-eqz v5, :cond_a

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v5, :cond_5

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    if-nez v5, :cond_a

    :cond_5
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mKeyguardState:Z

    if-nez v5, :cond_a

    if-eqz v4, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->cancelAnimation()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v5, v10, v10}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->scrollTo(II)V

    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAddNotification:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v5, v10}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDeskPanelPreview(Z)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v5, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->addPrevKeyStack(Ljava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-eqz v5, :cond_b

    iput-boolean v10, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v5, ""

    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    invoke-direct {p0, v5, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotification(ZLjava/lang/String;)V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-nez v5, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showNotificationState()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v5

    if-nez v5, :cond_c

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v10, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :cond_6
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    int-to-long v8, v2

    invoke-virtual {v5, v6, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_7
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShowNotificationGutsMode()Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    invoke-virtual {v5, v11, v10, v1, v10}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->processNotificationGuts(ZZLandroid/view/View;Z)V

    :cond_8
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewNotificationPreview()Z

    move-result v5

    if-nez v5, :cond_9

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelQuickSettingVisible()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setDeskPanelViewNotificationPositionX(Z)V

    :cond_9
    return-void

    :cond_a
    return-void

    :cond_b
    iput-boolean v11, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f02012c

    invoke-virtual {v6, v7}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v5, v9, v9, v9, v9}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setPaddingRelative(IIII)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v10, v10, v10, v10}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto/16 :goto_1

    :cond_c
    const/16 v2, 0x96

    goto :goto_2
.end method

.method public changeAllAndSingle()V
    .locals 6

    const-wide/16 v4, 0x96

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    const-string/jumbo v0, ""

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotification(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->clear()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeHeadsupListener()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    return-void
.end method

.method public clickStatusBarIcon(ZLjava/lang/String;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v3, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v2, v6, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->scrollTo(II)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->cancelAnimation()V

    if-eqz p1, :cond_5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDeskPanelPreview(Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotification(ZLjava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-eqz v2, :cond_2

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f02012c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v2, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setPaddingRelative(IIII)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_4
    const/16 v1, 0x96

    goto :goto_2

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getExpandableNotificationRow(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPreview(Z)V

    goto :goto_1
.end method

.method public collapseAll(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    return-void
.end method

.method public collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsCollapsing:Z

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsCollapsing:Z

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setDeskHeaderViewBackground(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskNotificationViewCollapseFrom()F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskNotificationViewCollapseTo()F

    move-result v2

    if-eqz p1, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "y"

    new-array v6, v9, [F

    aput v1, v6, v7

    aput v2, v6, v8

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v4, 0xfa

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const-string/jumbo v5, "alpha"

    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v4, 0x96

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-array v5, v9, [Landroid/animation/Animator;

    aput-object v3, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    new-instance v5, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$3;

    invoke-direct {v5, p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$3;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;F)V

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCollapseAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationViewInner(F)V

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public expandDeskNotificationView(ZLandroid/view/animation/Interpolator;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x2

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_1

    iput-boolean v9, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsCollapsing:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expand()V

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;

    invoke-interface {v2, v9}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;->onDeskNotificationViewVisibilityChanged(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskNotificationViewExpandFrom()F

    move-result v1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getDeskNotificationViewExpandTo()F

    move-result v4

    if-eqz p1, :cond_2

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const-string/jumbo v7, "y"

    new-array v8, v10, [F

    aput v1, v8, v9

    aput v4, v8, v11

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x15e

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const-string/jumbo v7, "alpha"

    new-array v8, v10, [F

    fill-array-data v8, :array_0

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    const-wide/16 v6, 0x96

    invoke-virtual {v0, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-array v7, v10, [Landroid/animation/Animator;

    aput-object v0, v7, v9

    aput-object v5, v7, v11

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$4;

    invoke-direct {v7, p0, v4, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$4;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;FF)V

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v6}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v4}, Landroid/widget/LinearLayout;->setY(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout;->setAlpha(F)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getDeskNotificationView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    return-object v0
.end method

.method public getPreviewState(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public init()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->init()V

    return-void
.end method

.method public isDeskAllNotificationViewVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    return v0
.end method

.method public isDeskNotificationViewVisible()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isDeskPanelViewNotificationPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    return v0
.end method

.method public notifyDeskPanelPositionChanged(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mPosition:I

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f130184

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    const v0, 0x7f130180

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const v0, 0x7f130183

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationAreaView(Landroid/widget/LinearLayout;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setAnimationInterpolator()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setHeaderView()V

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$1;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoveRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$2;-><init>(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    return-void
.end method

.method public onHeadsUpPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    return-void
.end method

.method public onHeadsUpStateChanged(Lcom/android/systemui/statusbar/NotificationData$Entry;Z)V
    .locals 5

    const/16 v4, 0x96

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->updateNotification(Landroid/view/View;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p2, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIsBecomingGroupChild()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsBecomingGroupChild(Z)V

    iget-object v0, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->row:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->removeNotification(Landroid/view/View;)V

    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverClose:Z

    if-eqz v0, :cond_3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverClose:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoveRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimationAlphaDelay:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    iput v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimationAlphaDelay:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public onHeadsUpUnPinned(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 0

    return-void
.end method

.method public onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAddNotification:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAddNotification:Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPanelHeight(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskPanelViewNotificationArea(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getWindowManager()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelWindowManager;->setPanelFocusable(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->releaseAllImmediately()V

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getChildCount()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationAddinfo(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getPanelHeight()I

    move-result v0

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationAreaHeight(I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setMeasuredDimension(II)V

    return-void
.end method

.method public onReset(Lcom/android/systemui/statusbar/ExpandableView;)V
    .locals 0

    return-void
.end method

.method public onScreenTurnedOff()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->reset()V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 0

    return-void
.end method

.method public onStatusBarIconMouseLeftClick(Ljava/lang/String;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->clickStatusBarIcon(ZLjava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->clickStatusBarIcon(ZLjava/lang/String;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return v3

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isTaskBarArea(FF)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method public removeHeadsupListener()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;)V

    :cond_0
    return-void
.end method

.method public removeListener(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification$DeskNotificationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeNotification(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationPanelTransparentBackground()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseAll(Z)V

    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->removeView(Landroid/view/View;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    if-eqz v1, :cond_5

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    const-string/jumbo v2, ""

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetPanelHeight(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isChildInGroupWithSummary(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->showPrevView(Landroid/view/View;)Ljava/lang/String;

    goto :goto_0
.end method

.method public reset()V
    .locals 4

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverClose:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHoverIconClick:Z

    const/16 v0, 0x96

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAnimationAlphaDelay:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->removeAllPrevKeyStack()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setChildAllVisible()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationViewHeight:I

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mAddNotification:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDeskPanelPreview(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetDeskHeadsupAnimatingState()V

    return-void
.end method

.method public resetPanelHeight(Landroid/view/View;)V
    .locals 7

    const/16 v6, 0x8

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    iget-boolean v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getPanelHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotificationAreaHeight(I)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    invoke-virtual {p1, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method public setBottomBarView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setBottomBarView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setDNDSuppressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDNDSuppressed:Z

    return-void
.end method

.method public setDeskHeaderViewBackground(Z)V
    .locals 3

    const v1, 0x7f130181

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02012f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public setDeskPanel(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    return-void
.end method

.method public setDeskPanelViewNotificationPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDisplayMetrics(Landroid/util/DisplayMetrics;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setHeaderView()V
    .locals 3

    const v1, 0x7f130181

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setHeaderView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02012e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/HeadsUpManager$OnHeadsUpChangedListener;)V

    return-void
.end method

.method public setKeyguardState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mKeyguardState:Z

    return-void
.end method

.method public setNotificationGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    return-void
.end method

.method public setNotificationPanelTransparentBackground()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f02012a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setRemoteInputActive(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    return-void
.end method

.method public showNotificationState()Z
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mStatusBarState:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDNDSuppressed:Z

    if-eqz v0, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toggleDeskNotificationView(Z)V
    .locals 6

    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->cancelAnimation()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v3, v2, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->scrollTo(II)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v3, v2, v2, v2, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f02012c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v1, v1, v4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDeskPanelPreview(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->resetDeskHeadsupAnimatingState()V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v3, :cond_2

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getExpandableNotificationRow(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsPreview(Z)V

    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mChangeAllAndSingle:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    :cond_1
    return-void

    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-eqz v3, :cond_3

    move v1, v2

    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mSineInOut80:Lcom/samsung/android/view/animation/SineInOut80;

    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->expandDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    goto :goto_0
.end method

.method public updateNotification(Landroid/view/View;)V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showNotificationState()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mRemoteInputActive:Z

    if-nez v3, :cond_1

    :cond_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mKeyguardState:Z

    if-eqz v3, :cond_2

    :cond_1
    return-void

    :cond_2
    move-object v1, p1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    return-void

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->cancelAnimation()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v3, v6, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->scrollTo(II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    invoke-virtual {v1, v6, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHandlerExit:Z

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsPreview:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v3, v6}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setDeskPanelPreview(Z)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskNotificationView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->addPrevKeyStack(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-eqz v3, :cond_7

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->setNotification(ZLjava/lang/String;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mShowAllNotification:Z

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->showNotificationState()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->isDeskNotificationViewVisible()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCustom:Landroid/view/animation/Interpolator;

    invoke-virtual {p0, v6, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->collapseDeskNotificationView(ZLandroid/view/animation/Interpolator;)V

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mExpandDeskNotificationViewDelayHandler:Ljava/lang/Runnable;

    int-to-long v6, v2

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelViewNotificationPreview()Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->getStatusBar()Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mDeskPanel:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanel;->isDeskPanelQuickSettingVisible()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->setDeskPanelViewNotificationPositionX(Z)V

    :cond_6
    return-void

    :cond_7
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mIsHeadsup:Z

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mCurrentHeadsUpKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f02012c

    invoke-virtual {v4, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mScrollView:Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;

    invoke-virtual {v3, v7, v7, v7, v7}, Lcom/android/systemui/statusbar/phone/taskbar/desk/LockableScrollView;->setPaddingRelative(IIII)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v8}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskPanelViewNotification;->mNotificationAreaView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6, v6, v6, v6}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    goto :goto_0

    :cond_8
    const/16 v2, 0x96

    goto :goto_1
.end method
