.class public Lcom/android/systemui/statusbar/ExpandableNotificationRow;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "ExpandableNotificationRow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;,
        Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;
    }
.end annotation


# static fields
.field private static final TRANSLATE_CONTENT:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private IsBecomingGroupChild:Z

.field private mAppName:Ljava/lang/String;

.field private mArea:Landroid/graphics/RectF;

.field private mBlockGutsStub:Landroid/view/ViewStub;

.field private mChildAfterViewWhenDismissed:Landroid/view/View;

.field private mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

.field private mChildrenContainerStub:Landroid/view/ViewStub;

.field private mChildrenExpanded:Z

.field private mDeskHeadsUp:Z

.field private mDismissed:Z

.field private mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

.field private mExpandClickListener:Landroid/view/View$OnClickListener;

.field private mExpandable:Z

.field private mExpandedWhenPinned:Z

.field private mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

.field private mForceUnlocked:Z

.field private mGroupExpansionChanging:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mGroupParentWhenDismissed:Landroid/view/View;

.field private mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

.field private mGutsStub:Landroid/view/ViewStub;

.field private mHasUserChangedExpansion:Z

.field private mHeadsUpHeight:I

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mHeadsupDisappearRunning:Z

.field private mHideSensitiveForIntrinsicHeight:Z

.field private mHideUnlocked:Z

.field private mIconAnimationRunning:Z

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpandedNotificationPreview:Z

.field private mIsHeadsUp:Z

.field private mIsInHeaderTransfrom:Z

.field private mIsMouseHoverExit:Z

.field private mIsNotificationPreviewMode:Z

.field private mIsPersona:Z

.field private mIsPinned:Z

.field private mIsPreview:Z

.field private mIsSummaryWithChildren:Z

.field private mIsSystemChildExpanded:Z

.field private mIsSystemExpanded:Z

.field private mJustClicked:Z

.field private mKeepInParent:Z

.field private mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mKnoxView:Z

.field private mLastChronometerRunning:Z

.field private mLocale:Ljava/util/Locale;

.field private mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

.field private mLoggingKey:Ljava/lang/String;

.field private mMaxExpandHeight:I

.field private mMaxHeadsUpHeight:I

.field private mMaxHeadsUpHeightLegacy:I

.field private mNotificationColor:I

.field private mNotificationMaxHeight:I

.field private mNotificationMinHeight:I

.field private mNotificationMinHeightLegacy:I

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCovered:Z

.field private mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

.field private mOnGutsButtonClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;

.field private mPositon:[I

.field private mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

.field private mRefocusOnDismiss:Z

.field private mRemoved:Z

.field private mSecurityBadgeForKnox:Landroid/widget/ImageView;

.field private mSensitive:Z

.field private mSensitiveHiddenInGeneral:Z

.field private mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

.field private mSettingsIconRowStub:Landroid/view/ViewStub;

.field private mShowNoBackground:Z

.field private mShowingPublic:Z

.field private mShowingPublicInitialized:Z

.field private mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

.field private mTranslateAnim:Landroid/animation/Animator;

.field private mTranslateableViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mUserExpanded:Z

.field private mUserLocked:Z

.field private mVetoButton:Landroid/view/View;

.field private mVetoButtonArea:Landroid/graphics/RectF;

.field private mVetoButtonPositon:[I


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method static synthetic -get11(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method static synthetic -get12(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationData$Entry;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBlockGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;)Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationGuts;)Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/ViewStub;)Landroid/view/ViewStub;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/NotificationSettingsIconRow;)Lcom/android/systemui/statusbar/NotificationSettingsIconRow;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;

    const-string/jumbo v1, "translate"

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$2;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsExpandedNotificationPreview:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsNotificationPreviewMode:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsInHeaderTransfrom:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    new-instance v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$1;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mArea:Landroid/graphics/RectF;

    new-array v0, v3, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonArea:Landroid/graphics/RectF;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDeskHeadsUp:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->IsBecomingGroupChild:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsMouseHoverExit:Z

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLocale:Ljava/util/Locale;

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPreview:Z

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManager;->getInstance(Landroid/content/Context;)Lcom/android/systemui/classifier/FalsingManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    return-void
.end method

.method private canViewBeDismissed()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    return v0
.end method

.method private getFontScaledHeight(I)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    int-to-float v2, v0

    mul-float/2addr v2, v1

    float-to-int v2, v2

    return v2
.end method

.method private getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 2

    const v0, 0x7f0d0201

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    const v0, 0x7f0d01ff

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    const v0, 0x7f0d0202

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    const v0, 0x7f0d0203

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    const v0, 0x7f0d0204

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getFontScaledHeight(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return-void
.end method

.method private isSystemChildExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return v0
.end method

.method private logExpansionEvent(ZZ)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    :cond_0
    if-eq p2, v0, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    invoke-interface {v1, v2, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;->logNotificationExpansion(Ljava/lang/String;ZZ)V

    :cond_1
    return-void
.end method

.method private onChildrenCountChanged()V
    .locals 4

    const/4 v1, 0x0

    sget-boolean v0, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private prepareDeskUI()V
    .locals 11

    const v10, 0x7f0d0473

    const/4 v9, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const v6, 0x800035

    iput v6, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0452

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d02d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sub-int/2addr v7, v8

    div-int/lit8 v7, v7, 0x2

    add-int v5, v6, v7

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d0474

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v0, v9, v5, v3, v9}, Landroid/widget/FrameLayout$LayoutParams;->setMarginsRelative(IIII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v6, v9, v9, v9, v9}, Landroid/view/View;->setPadding(IIII)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v6, 0x7f020381

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const v6, 0x7f0b0185

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v2, v6}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v6, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0, v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method private setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3

    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result p1

    :goto_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunningForChild(ZLandroid/view/View;)V

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x1

    goto :goto_0
.end method

.method private setChronometerRunningForChild(ZLandroid/view/View;)V
    .locals 2

    if-eqz p2, :cond_0

    const v1, 0x102044d

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/widget/Chronometer;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/widget/Chronometer;

    invoke-virtual {v0, p1}, Landroid/widget/Chronometer;->setStarted(Z)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    :cond_0
    return-void
.end method

.method private setIconAnimationRunningForChild(ZLandroid/view/View;)V
    .locals 3

    if-eqz p2, :cond_0

    const v2, 0x1020006

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    const v2, 0x1020044

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconRunning(Landroid/widget/ImageView;Z)V

    :cond_0
    return-void
.end method

.method private setIconRunning(Landroid/widget/ImageView;Z)V
    .locals 4

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v3, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p2, :cond_1

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0

    :cond_2
    instance-of v3, v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->stop()V

    goto :goto_0
.end method

.method private shouldShowPublicLayout()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->shouldShowPublicLayout()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateBadgePosition()V
    .locals 5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    sub-int v4, v1, v4

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setY(F)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineheight()I

    move-result v2

    const/4 v0, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    if-eq v3, v2, :cond_0

    sub-int v3, v1, v2

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    div-float v0, v3, v4

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v3

    if-ge v3, v1, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateChildrenVisibility()V
    .locals 4

    const/4 v2, 0x4

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_2

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_3

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_5

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    return-void

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_2

    :cond_5
    move v1, v2

    goto :goto_3
.end method

.method private updateClearability()V
    .locals 4

    const/16 v1, 0x8

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private updateClickAndFocus()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-eqz v2, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isFocusable()Z

    move-result v2

    if-eq v2, v1, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFocusable(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClickable()Z

    move-result v2

    if-eq v2, v0, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setClickable(Z)V

    :cond_1
    return-void

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateLimits()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V

    :cond_0
    return-void
.end method

.method private updateLimitsForView(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 8

    const v7, 0x1020450

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_2

    const/4 v1, 0x1

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget v5, v5, Lcom/android/systemui/statusbar/NotificationData$Entry;->targetSdk:I

    const/16 v6, 0x18

    if-ge v5, v6, :cond_3

    const/4 v0, 0x1

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_4

    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeight:I

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v5

    if-eq v5, v7, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeightLegacy:I

    :goto_3
    iget v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMaxHeight:I

    invoke-virtual {p1, v4, v3, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeights(III)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationMinHeightLegacy:I

    goto :goto_2

    :cond_5
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxHeadsUpHeight:I

    goto :goto_3
.end method

.method private updateMaxHeights()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    const/4 v1, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationContentView;->getHeadsUpChild()Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method private updateNotificationColor()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->color:I

    invoke-static {v0, v1}, Lcom/android/internal/util/NotificationColorUtil;->resolveContrastColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    return-void
.end method


# virtual methods
.method public IsPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPreview:Z

    return v0
.end method

.method public activateGutsLayout(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATION_GUTS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$12;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    goto :goto_0
.end method

.method public addChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public animateTranslateNotification(F)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :cond_1
    return-void
.end method

.method public applyChildOrder(Ljava/util/List;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyChildOrder(Ljava/util/List;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public applyChildrenState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    :cond_0
    return-void
.end method

.method public areChildrenExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    return v0
.end method

.method public areGutsExposed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->areGutsExposed()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public canBeSwiped()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public closeRemoteInput()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->closeRemoteInput()V

    :cond_0
    return-void
.end method

.method protected disallowSingleClick(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslation()F

    move-result v3

    sub-float v3, v1, v3

    invoke-virtual {v0, v3, v2}, Landroid/view/NotificationHeaderView;->isInTouchRect(FF)Z

    move-result v3

    return v3

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->disallowSingleClick(Landroid/view/MotionEvent;)Z

    move-result v3

    return v3
.end method

.method public enableKnoxView(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    return-void
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    return-object v0
.end method

.method public getChildAfterViewWhenDismissed()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getChildrenContainer()Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0
.end method

.method public getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackViewState;)V

    :cond_0
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    return-object v0
.end method

.method public getExtraBottomPadding()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIncreasedPaddingBetweenElements:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getGroupManager()Lcom/android/systemui/statusbar/phone/NotificationGroupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-object v0
.end method

.method public getGroupParentWhenDismissed()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    return-object v0
.end method

.method public getGuts()Lcom/android/systemui/statusbar/NotificationGuts;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    return-object v0
.end method

.method public getHideUnlocked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->areGutsExposed()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsType()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->getHeight()I

    move-result v0

    return v0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v0

    return v0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v0

    return v0

    :cond_5
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_9

    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-nez v0, :cond_7

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_c

    :cond_7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v0

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    if-eqz v0, :cond_a

    :cond_8
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v0

    return v0

    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_b
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    return v0

    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    return v0
.end method

.method public getIsBecomingGroupChild()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->IsBecomingGroupChild:Z

    return v0
.end method

.method public getIsMouseHoverExit()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsMouseHoverExit:Z

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    return-object v0
.end method

.method public getKnoxLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getMaxContentHeight()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v1

    return v1

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxContentHeight()I

    move-result v1

    return v1
.end method

.method public getMaxExpandHeight()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    return v0
.end method

.method public getMinHeight()I
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isTrackingHeadsUp()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getPinnedHeadsUpHeight(Z)I

    move-result v1

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v1, :cond_3

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v1

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight()I

    move-result v1

    return v1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v1

    return v1
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public getNotificationColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationColor:I

    return v0
.end method

.method public getNotificationHeader()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v0

    return-object v0
.end method

.method public getNotificationParent()Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    return-object v0
.end method

.method public getPinnedHeadsUpHeight(Z)I
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0

    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    return v0
.end method

.method public getPositionOfChild(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getPositionInLinearLayout(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getPrivateLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getPublicLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0
.end method

.method public getSettingsRow()Lcom/android/systemui/statusbar/NotificationSettingsIconRow;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRowStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    return-object v0
.end method

.method public getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    return-object v0

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    :goto_0
    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    goto :goto_0
.end method

.method public getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v0

    return-object v0
.end method

.method public getSpaceForGear()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->getSpaceForGear()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public getTranslateViewAnimator(FLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/animation/Animator;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->TRANSLATE_CONTENT:Landroid/util/Property;

    const/4 v2, 0x1

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_2
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$7;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;F)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateAnim:Landroid/animation/Animator;

    return-object v0
.end method

.method public getTranslation()F
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-object p0

    :cond_0
    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0
.end method

.method protected handleSlideBack()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->animateTranslateNotification(F)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasUserChangedExpansion()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    return v0
.end method

.method public hideVetoButton(FF)V
    .locals 8

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    invoke-virtual {v1, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonArea:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    aget v2, v2, v7

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    aget v3, v3, v6

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    aget v4, v4, v7

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonPositon:[I

    aget v5, v5, v6

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    add-int/2addr v5, v6

    int-to-float v5, v5

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButtonArea:Landroid/graphics/RectF;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v7, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public inactivateGutsLayout(Z)V
    .locals 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->NOTIFICATION_GUTS_ANIMATION_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$13;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationGuts;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, v2, v2}, Lcom/android/systemui/statusbar/NotificationGuts;->setExposed(ZZ)V

    goto :goto_0
.end method

.method public inflateBlockGuts()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBlockGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public inflateGuts()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    return-void
.end method

.method public isChildInGroup()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClearable()Z
    .locals 5

    const/4 v4, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isClearable()Z

    move-result v3

    if-nez v3, :cond_1

    return v4

    :cond_0
    return v4

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method public isContentExpandable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->isContentExpandable()Z

    move-result v1

    return v1
.end method

.method public isDismissed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    return v0
.end method

.method public isExpandable()Z
    .locals 3

    const/4 v1, 0x1

    const/4 v0, 0x0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    :goto_1
    return v0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    move v0, v1

    goto :goto_0
.end method

.method public isExpanded()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v0

    return v0
.end method

.method public isExpanded(Z)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hasUserChangedExpansion()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSystemChildExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserExpanded()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    sget-boolean v0, Lcom/android/systemui/SystemUIRune;->SUPPORT_NOTIFICATION_ICONS_ONLY:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandedNotificationPreview()Z

    move-result v0

    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isExpandedNotificationPreview()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsExpandedNotificationPreview:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isGroupExpanded()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return v0
.end method

.method public isHeadsUp()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public isNotificationPreview()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsNotificationPreviewMode:Z

    return v0
.end method

.method public isOnCoverd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnCovered:Z

    return v0
.end method

.method public isOnKeyguard()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    return v0
.end method

.method public isPinned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    return v0
.end method

.method public isRemoved()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    return v0
.end method

.method public isShowingPublic()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    return v0
.end method

.method public isSystemExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    return v0
.end method

.method public isUserExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return v0
.end method

.method public isUserLocked()Z
    .locals 2

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mForceUnlocked:Z

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public keepInParent()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    return v0
.end method

.method public makeActionsVisibile()V
    .locals 3

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    return-void
.end method

.method public mustStayOnScreen()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    return v0
.end method

.method public notifyGutsButtonClicked(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnGutsButtonClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnGutsButtonClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;->onGutsButtonClicked(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public notifyHeightChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->notifyHeightChanged(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->requestSelectLayout(Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected onAppearAnimationFinished(Z)V
    .locals 4

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onAppearAnimationFinished(Z)V

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLocale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLocale:Ljava/util/Locale;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0368

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public onExpandedByGesture(Z)V
    .locals 3

    const/16 v0, 0x199

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v0, 0x19a

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v1, 0x7f1304bb

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const v1, 0x7f1304ba

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    const v1, 0x7f1304bc

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/NotificationContentView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setExpandClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContainingNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const v1, 0x7f1304b8

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRowStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRowStub:Landroid/view/ViewStub;

    new-instance v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$3;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    const v1, 0x7f1304c0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    new-instance v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$4;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    const v1, 0x7f1304c1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBlockGutsStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mBlockGutsStub:Landroid/view/ViewStub;

    new-instance v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$5;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    const v1, 0x7f1304be

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    new-instance v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;

    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$6;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setOnInflateListener(Landroid/view/ViewStub$OnInflateListener;)V

    const v1, 0x7f1304bd

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRowStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainerStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGutsStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const v1, 0x7f1304c3

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    return-void
.end method

.method public onFinishedExpansionChange()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onInitializeAccessibilityNodeInfoInternal(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_DISMISS:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    return-void
.end method

.method public onInterceptHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/16 v2, 0x2002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return v7

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showVetoButton()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->showVetoButton()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getWidth()I

    move-result v1

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/NotificationHeaderView;->getHeight()I

    move-result v0

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLocationOnScreen([I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mArea:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    aget v3, v3, v7

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    aget v4, v4, v8

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    aget v5, v5, v7

    add-int/2addr v5, v1

    int-to-float v5, v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPositon:[I

    aget v6, v6, v8

    add-int/2addr v6, v0

    int-to-float v6, v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hideVetoButton(FF)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v0

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hideVetoButton(FF)V

    goto/16 :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mArea:Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->hideVetoButton(FF)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateMaxHeights()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->updateVerticalLocation()V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBadgePosition()V

    return-void
.end method

.method public onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v1, p1, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    iput-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->onNotificationUpdated(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateNotificationColor()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClearability()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->onNotificationUpdated()V

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenHeaderAppearance()V

    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateLimits()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->isMarkedDex()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->prepareDeskUI()V

    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2, v4}, Landroid/content/pm/PackageManager;->getUserBadgeForDensity(Landroid/os/UserHandle;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSecurityBadgeForKnox:Landroid/widget/ImageView;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_6
    return-void
.end method

.method public onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onRequestSendAccessibilityEventInternal(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/view/accessibility/AccessibilityEvent;->obtain()Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->appendRecord(Landroid/view/accessibility/AccessibilityRecord;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public performAccessibilityActionInternal(ILandroid/os/Bundle;)Z
    .locals 2

    const/4 v1, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAccessibilityActionInternal(ILandroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    invoke-static {p0, v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->performDismiss(Landroid/view/View;Lcom/android/systemui/statusbar/phone/NotificationGroupManager;Z)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x100000
        :pswitch_0
    .end packed-switch
.end method

.method public performAddAnim(Ljava/lang/Runnable;)V
    .locals 14

    new-instance v11, Landroid/view/animation/AnimationSet;

    const/4 v1, 0x1

    invoke-direct {v11, v1}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    sget-object v1, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v11, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->shouldShowPublicLayout()Z

    move-result v2

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitive(ZZJJ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v8

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    :goto_0
    if-eqz v9, :cond_0

    const/4 v1, 0x1

    invoke-virtual {p0, v9, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$9;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Runnable;)V

    invoke-virtual {v11, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v10, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v10, v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/view/View;

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    instance-of v1, v13, Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/view/View;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    new-instance v12, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, -0x3d600000    # -80.0f

    invoke-direct {v12, v1, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v11, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    invoke-virtual {v11, v12}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, v11}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandedNotificationPreview()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMaxHeight()I

    move-result v9

    goto :goto_0

    :cond_4
    invoke-virtual {v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight()I

    move-result v9

    goto :goto_0

    :cond_5
    return-void
.end method

.method public performAddAnimation(JJ)V
    .locals 7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isNotificationIconsOnlyOn()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->isShowNotificationGutsMode()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow$11;

    invoke-direct {v6, p0, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$11;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;)V

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-super/range {v1 .. v6}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAddAnimation(JJLjava/lang/Runnable;)V

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->performAddAnimation(JJ)V

    return-void
.end method

.method public performRemoveAnim(Ljava/lang/Runnable;)V
    .locals 6

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    sget-object v2, Lcom/android/systemui/Interpolators;->SINE_IN_OUT80:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v2, 0xa6

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    const/4 v2, 0x1

    new-array v3, v2, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    sget-object v4, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;

    invoke-direct {v2, p0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow$10;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    :cond_0
    return-void
.end method

.method public reInflateViews()V
    .locals 9

    const/4 v8, 0x0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->initDimens()V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandClickListener:Landroid/view/View$OnClickListener;

    iget-object v7, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mEntry:Lcom/android/systemui/statusbar/NotificationData$Entry;

    iget-object v7, v7, Lcom/android/systemui/statusbar/NotificationData$Entry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v5, v6, v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v5, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    const v3, 0x7f0400ef

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationGuts;->getGutsType()I

    move-result v5

    packed-switch v5, :pswitch_data_0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    invoke-virtual {v5, v3, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationGuts;

    iput-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationGuts;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {p0, v5, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v5, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->indexOfChild(Landroid/view/View;)I

    move-result v4

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->removeView(Landroid/view/View;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400f5

    invoke-virtual {v5, v6, p0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iput-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v5, p0}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setNotificationRowParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setAppName(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->addView(Landroid/view/View;I)V

    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/NotificationContentView;->reInflateViews()V

    :cond_3
    return-void

    :pswitch_0
    const v3, 0x7f040026

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public removeAllChildren()V
    .locals 6

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->keepInParent()Z

    move-result v4

    if-eqz v4, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    return-void
.end method

.method public removeChildNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onChildrenCountChanged()V

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    return-void
.end method

.method public reset()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->reset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemExpanded:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->reset()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->reset()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->reset()V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetTranslation()V

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    return-void
.end method

.method public resetHeight()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mMaxExpandHeight:I

    iput v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->onHeightReset()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->requestLayout()V

    return-void
.end method

.method public resetTranslation()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->resetState()V

    :cond_1
    return-void
.end method

.method public resetUserExpansion()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setActualHeight(IZ)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NotificationGuts;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMinHeight()I

    move-result v1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeight(I)V

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setActualHeight(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setActualHeight(I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBadgePosition()V

    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setContentHeightAnimating(Z)V

    :cond_0
    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mAppName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->setAppName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setChildrenExpanded(ZZ)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenExpanded:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setChildrenExpanded(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    return-void
.end method

.method public setChronometerRunning(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 2

    const/4 v1, 0x1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    :goto_0
    invoke-super {p0, v0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipToActualHeight(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipToActualHeight(Z)V

    return-void

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public setClipTopAmount(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setClipTopAmount(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGuts:Lcom/android/systemui/statusbar/NotificationGuts;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationGuts;->setClipTopAmount(I)V

    :cond_1
    return-void
.end method

.method public setContentBackground(IZLcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-ne v0, p3, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setTintColor(IZ)V

    :cond_0
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationContentView;->setDark(ZZJ)V

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setDark(ZZJ)V

    :cond_1
    return-void
.end method

.method public setDeskHeadsUp(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDeskHeadsUp:Z

    return-void
.end method

.method public setDismissed(ZZ)V
    .locals 3

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mDismissed:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupParentWhenDismissed:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildAfterViewWhenDismissed:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public setExpandable(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    return-void
.end method

.method public setExpandedNotificationPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsExpandedNotificationPreview:Z

    return-void
.end method

.method public setExpansionLogger(Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLogger:Lcom/android/systemui/statusbar/ExpandableNotificationRow$ExpansionLogger;

    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLoggingKey:Ljava/lang/String;

    return-void
.end method

.method public setForceUnlocked(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mForceUnlocked:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setForceUnlocked(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setGroupExpansionChanging(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupExpansionChanging:Z

    return-void
.end method

.method public setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V

    return-void
.end method

.method public setHeadsUp(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsHeadsUp:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUp(Z)V

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsUp(Z)V

    goto :goto_0
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    return-void
.end method

.method public setHeadsupDisappearRunning(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHeadsupDisappearRunning:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setHeadsupDisappearRunning(Z)V

    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x4

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_1

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getHideUnlocked()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_3

    :cond_0
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-ne v2, v0, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_4

    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    if-eqz v2, :cond_2

    move v2, p1

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_2

    :cond_3
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_5

    return-void

    :cond_5
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->getChildCount()I

    move-result v2

    if-nez v2, :cond_6

    return-void

    :cond_6
    if-nez p2, :cond_a

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationContentView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setAlpha(F)V

    :cond_8
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v2, v5}, Lcom/android/systemui/statusbar/NotificationContentView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v2, :cond_b

    :cond_9
    move v2, v4

    :goto_3
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v2, :cond_c

    move v2, v4

    :goto_4
    invoke-virtual {v5, v2}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v5, :cond_d

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxView:Z

    if-eqz v5, :cond_d

    :goto_5
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    :goto_6
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateChildrenVisibility()V

    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/NotificationContentView;->updateBackgroundColor(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpandable()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->updateExpandButtons(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClearability()V

    iput-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublicInitialized:Z

    return-void

    :cond_b
    move v2, v3

    goto :goto_3

    :cond_c
    move v2, v3

    goto :goto_4

    :cond_d
    move v3, v4

    goto :goto_5

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v5, :cond_f

    :goto_7
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationContentView;->setVisibility(I)V

    goto :goto_6

    :cond_f
    move v3, v4

    goto :goto_7
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideSensitiveForIntrinsicHeight:Z

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setHideSensitiveForIntrinsicHeight(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setHideUnlocked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHideUnlocked:Z

    return-void
.end method

.method public setIconAnimationRunning(Z)V
    .locals 4

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(ZLcom/android/systemui/statusbar/NotificationContentView;)V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getHeaderView()Landroid/view/NotificationHeaderView;

    move-result-object v3

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunningForChild(ZLandroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIconAnimationRunning:Z

    return-void
.end method

.method public setIsBecomingGroupChild(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->IsBecomingGroupChild:Z

    return-void
.end method

.method public setIsChildInGroup(ZLcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 3

    const/4 v1, 0x0

    sget-boolean v2, Lcom/android/systemui/statusbar/BaseStatusBar;->ENABLE_CHILD_NOTIFICATIONS:Z

    if-eqz v2, :cond_1

    move v0, p1

    :goto_0
    if-eqz v0, :cond_2

    :goto_1
    iput-object p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setIsChildInGroup(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->resetBackgroundAlpha()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-object p2, v1

    goto :goto_1
.end method

.method public setIsPersona(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    return-void
.end method

.method public setIsPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPreview:Z

    return-void
.end method

.method public setJustClicked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    return-void
.end method

.method public setKeepInParent(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKeepInParent:Z

    return-void
.end method

.method public setNotificationPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsNotificationPreviewMode:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateClickAndFocus()V

    return-void
.end method

.method public setOnCoveredState(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnCovered:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnCovered:Z

    :cond_0
    return-void
.end method

.method public setOnExpandClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnExpandClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnExpandClickListener;

    return-void
.end method

.method public setOnGutsButtonClickListener(Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnGutsButtonClickListener:Lcom/android/systemui/statusbar/ExpandableNotificationRow$OnGutsButtonClickListener;

    return-void
.end method

.method public setOnKeyguard(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    if-eq p1, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mOnKeyguard:Z

    invoke-direct {p0, v2, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v1

    if-eq v0, v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutlineAlpha()V

    :cond_2
    return-void
.end method

.method public setPinned(Z)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPinned:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->notifyHeightChanged(Z)V

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setIconAnimationRunning(Z)V

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    :cond_1
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mLastChronometerRunning:Z

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChronometerRunning(Z)V

    return-void

    :cond_2
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandedWhenPinned:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(Z)V

    goto :goto_0
.end method

.method public setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    return-void
.end method

.method public setRemoved()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRemoved:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->setRemoved()V

    return-void
.end method

.method public setSensitive(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitive:Z

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSensitiveHiddenInGeneral:Z

    return-void
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setShowingLegacyBackground(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setShowingLegacyBackground(Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPublicLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setShowingLegacyBackground(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsPersona:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mKnoxLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setShowingLegacyBackground(Z)V

    :cond_0
    return-void
.end method

.method public setSystemChildExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSystemChildExpanded:Z

    return-void
.end method

.method public setTranslation(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mTranslateableViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->invalidateOutline()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mSettingsIconRow:Lcom/android/systemui/statusbar/NotificationSettingsIconRow;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, p1, v2}, Lcom/android/systemui/statusbar/NotificationSettingsIconRow;->updateSettingsIcons(FF)V

    :cond_3
    return-void
.end method

.method public setUserExpanded(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserExpanded(ZZ)V

    return-void
.end method

.method public setUserExpanded(ZZ)V
    .locals 4

    const/4 v3, 0x1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mFalsingManager:Lcom/android/systemui/classifier/FalsingManager;

    invoke-virtual {v1}, Lcom/android/systemui/classifier/FalsingManager;->setNotificationExpanded()V

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowingPublic:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mExpandable:Z

    if-eqz v1, :cond_3

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mHasUserChangedExpansion:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserExpanded:Z

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    return-void

    :cond_2
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isGroupExpanded(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mStatusBarNotification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1, v2, p1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->setGroupExpanded(Landroid/service/notification/StatusBarNotification;Z)V

    invoke-direct {p0, v3, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->logExpansionEvent(ZZ)V

    return-void

    :cond_3
    return-void
.end method

.method public setUserLocked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mUserLocked:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mPrivateLayout:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/NotificationContentView;->setUserExpanding(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setUserLocked(Z)V

    if-nez p1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    goto :goto_0
.end method

.method protected shouldHideBackground()Z
    .locals 1

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->shouldHideBackground()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public shouldRefocusOnDismiss()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mRefocusOnDismiss:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isAccessibilityFocused()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public showVetoButton()V
    .locals 3

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mVetoButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public startChildAnimation(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V

    :cond_0
    return-void
.end method

.method public updateBackground(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackground(Z)V

    return-void
.end method

.method public updateBackgroundForGroupState()V
    .locals 7

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    :goto_0
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    invoke-virtual {v4, v5}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateHeaderForExpansion(Z)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v6

    if-nez v6, :cond_0

    move v4, v5

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isChildInGroup()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/NotificationContentView;->getBackgroundColorForExpansionState()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpanded()Z

    move-result v6

    if-nez v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_3
    if-eqz v0, :cond_6

    move v3, v5

    :goto_2
    if-eqz v3, :cond_8

    :goto_3
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateOutline()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground()V

    return-void

    :cond_5
    move v3, v5

    goto :goto_2

    :cond_6
    move v3, v4

    goto :goto_2

    :cond_7
    move v3, v4

    goto :goto_2

    :cond_8
    move v4, v5

    goto :goto_3

    :cond_9
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mShowNoBackground:Z

    goto :goto_4
.end method

.method protected updateBackgroundTint()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->updateBackgroundTint()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getNotificationChildren()Ljava/util/List;

    move-result-object v2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackgroundForGroupState()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mIsSummaryWithChildren:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mChildrenContainer:Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    :cond_0
    return-void
.end method

.method public wasJustClicked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->mJustClicked:Z

    return v0
.end method
