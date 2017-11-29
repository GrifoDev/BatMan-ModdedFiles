.class public Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;
.super Landroid/view/ViewGroup;
.source "NotificationChildrenContainer.java"


# instance fields
.field private mActualHeight:I

.field private mChildPadding:I

.field private final mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation
.end field

.field private mChildrenExpanded:Z

.field private mCollapsedBottompadding:F

.field private mDividerHeight:I

.field private mDividerpadding:I

.field private final mDividers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private mHeaderHeight:I

.field private mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

.field private mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

.field private final mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

.field private mMaxNotificationHeight:I

.field private mNeverAppliedGroupState:Z

.field private mNotificationHeader:Landroid/view/NotificationHeaderView;

.field private mNotificationHeaderMargin:I

.field private mNotificationHeaderPaddingEnd:I

.field private mNotificationHeaderPaddingEndForGroup:I

.field private mNotificationHeaderPaddingStart:I

.field private mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

.field private mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

.field private mNotificatonTopPadding:I

.field private mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mOverflowNumber:Landroid/widget/TextView;

.field private mOverflowNumberHeight:I

.field private mOverflowNumberTopPadding:I

.field private mRealHeight:I

.field private mUserLocked:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    new-instance v0, Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    return-void
.end method

.method private getIntrinsicHeight(F)I
    .locals 11

    const/4 v10, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v2

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_1

    int-to-float v7, v6

    cmpl-float v7, v7, p1

    if-ltz v7, :cond_3

    :cond_1
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_9

    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-static {v8, v10, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    :cond_2
    :goto_1
    return v5

    :cond_3
    if-nez v3, :cond_6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_4

    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    int-to-float v8, v8

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v9, v9

    invoke-static {v8, v9, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v7

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v7, :cond_5

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    :goto_3
    add-int/2addr v5, v7

    goto :goto_2

    :cond_5
    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    goto :goto_3

    :cond_6
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v7, :cond_7

    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v8, v9

    int-to-float v8, v8

    invoke-static {v10, v8, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v8

    add-float/2addr v7, v8

    float-to-int v5, v7

    :goto_4
    const/4 v3, 0x0

    goto :goto_2

    :cond_7
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v7, :cond_8

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v7, v8

    :goto_5
    add-int/2addr v5, v7

    goto :goto_4

    :cond_8
    const/4 v7, 0x0

    goto :goto_5

    :cond_9
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v7, :cond_2

    int-to-float v7, v5

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v7, v8

    float-to-int v5, v7

    goto :goto_1
.end method

.method private getMaxAllowedVisibleChildren()I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    return v0
.end method

.method private getMaxAllowedVisibleChildren(Z)I
    .locals 1

    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isUserLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x8

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isOnCoverd()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 v0, 0x5

    return v0

    :cond_3
    const/4 v0, 0x2

    return v0
.end method

.method private getMinHeight(I)I
    .locals 8

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    const/4 v5, 0x0

    const/4 v2, 0x1

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    if-lt v5, p1, :cond_1

    :cond_0
    int-to-float v6, v4

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    add-float/2addr v6, v7

    float-to-int v4, v6

    return v4

    :cond_1
    if-nez v2, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    add-int/2addr v4, v6

    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getHeight()I

    move-result v6

    add-int/2addr v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private getVisibleChildrenExpandHeight()I
    .locals 10

    const/4 v9, 0x1

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int v4, v7, v8

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    if-lt v6, v5, :cond_1

    :cond_0
    return v4

    :cond_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    :goto_1
    int-to-float v2, v7

    int-to-float v7, v4

    add-float/2addr v7, v2

    float-to-int v4, v7

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1
.end method

.method private inflateDivider()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0400ee

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private initDimens()V
    .locals 3

    const v2, 0x1050040

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02e5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0202

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050045

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02e6

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050046

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mCollapsedBottompadding:F

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerpadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0458

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0457

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x105003f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingStart:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingEnd:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0459

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingEndForGroup:I

    return-void
.end method

.method private processChildrenBackground(Z)V
    .locals 3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->updateBackground(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateChildStateForExpandedGroup(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/stack/StackViewState;I)Z
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v4

    add-int v3, p4, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v1

    add-int v0, v3, v1

    move v2, v1

    if-lt v0, p2, :cond_0

    sub-int v4, p2, v3

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_0
    if-nez v2, :cond_2

    move v4, v5

    :goto_0
    iput-boolean v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    iput v2, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    iget v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    if-eq v4, v1, :cond_1

    iget-boolean v4, p3, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    if-eqz v4, :cond_3

    :cond_1
    :goto_1
    return v6

    :cond_2
    move v4, v6

    goto :goto_0

    :cond_3
    move v6, v5

    goto :goto_1
.end method

.method private updateExpansionStates()V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_2

    if-ne v2, v4, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v5

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method public addNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;I)V
    .locals 3

    if-gez p2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void

    :cond_0
    move v1, p2

    goto :goto_0
.end method

.method public applyChildOrder(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v4, 0x0

    return v4

    :cond_0
    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eq v0, v1, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    return v3
.end method

.method public applyState(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 13

    const/4 v12, 0x0

    const/4 v11, 0x0

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    new-instance v7, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct {v7}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    const/4 v5, 0x0

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v5

    :cond_0
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v9, :cond_3

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v4

    :goto_0
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_5

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v8

    invoke-virtual {p1, v1, v8}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyState(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;)Z

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    iput v9, v7, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v9, :cond_4

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_4

    const/high16 v0, 0x3f000000    # 0.5f

    :goto_2
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v9, :cond_1

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    cmpl-float v9, v9, v11

    if-eqz v9, :cond_1

    iget v9, v8, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    invoke-static {v9, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    const/high16 v10, 0x3f000000    # 0.5f

    invoke-static {v11, v10, v9}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    :cond_1
    if-nez v4, :cond_2

    :cond_2
    iput-boolean v12, v7, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    iput v0, v7, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    invoke-virtual {p1, v3, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    invoke-virtual {v1, v11, v11, v12, v12}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {p1, v9, v10}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    iput-boolean v12, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNeverAppliedGroupState:Z

    :cond_6
    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-virtual {p1, v9, v10}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    :cond_7
    return-void
.end method

.method public getCollapsedHeight()I
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(I)I

    move-result v0

    return v0
.end method

.method public getGroupExpandFraction()F
    .locals 5

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getVisibleChildrenExpandHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getCollapsedHeight()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    sub-int/2addr v3, v1

    int-to-float v3, v3

    sub-int v4, v2, v1

    int-to-float v4, v4

    div-float v0, v3, v4

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    const/4 v4, 0x0

    invoke-static {v4, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    return v3
.end method

.method public getHeaderView()Landroid/view/NotificationHeaderView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v0

    int-to-float v1, v0

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getIntrinsicHeight(F)I

    move-result v1

    return v1
.end method

.method public getMaxContentHeight()I
    .locals 9

    const/4 v8, 0x1

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v4, v6, v7

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    const/16 v6, 0x8

    if-lt v5, v6, :cond_2

    :cond_0
    if-lez v5, :cond_1

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    mul-int/2addr v6, v5

    add-int/2addr v4, v6

    :cond_1
    return v4

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v6

    :goto_1
    int-to-float v2, v6

    int-to-float v6, v4

    add-float/2addr v6, v2

    float-to-int v4, v6

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v6

    invoke-virtual {v6, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v6

    goto :goto_1
.end method

.method public getMinHeight()I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMinHeight(I)I

    move-result v0

    return v0
.end method

.method public getNotificationChildCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getNotificationChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/systemui/statusbar/ExpandableNotificationRow;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    return-object v0
.end method

.method public getPositionInLinearLayout(Landroid/view/View;)I
    .locals 7

    const/4 v4, 0x0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int v3, v5, v6

    const/4 v1, 0x0

    :goto_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_1

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_0

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    add-int/2addr v3, v5

    :cond_0
    if-ne v0, p1, :cond_2

    return v3

    :cond_1
    move v2, v4

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v5

    add-int/2addr v3, v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v4
.end method

.method public getState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackViewState;)V
    .locals 22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v17, v0

    const/4 v7, 0x1

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren()I

    move-result v12

    add-int/lit8 v11, v12, -0x1

    add-int/lit8 v8, v11, 0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v6

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v8

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v18

    if-nez v18, :cond_3

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    :goto_0
    move-object/from16 v0, p2

    iget v15, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v3, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v7, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v20, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v2, v15, v4, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildStateForExpandedGroup(Lcom/android/systemui/statusbar/ExpandableNotificationRow;ILcom/android/systemui/statusbar/stack/StackViewState;I)Z

    move-result v18

    if-eqz v18, :cond_1

    const/16 v18, 0x1

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    :cond_1
    :goto_3
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    :goto_4
    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->zTranslation:F

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->dimmed:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->dark:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->hideSensitive:Z

    move-object/from16 v0, p2

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    move/from16 v18, v0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->belowSpeedBump:Z

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->clipTopAmount:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    if-ge v9, v8, :cond_b

    const/high16 v18, 0x3f800000    # 1.0f

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    :cond_2
    :goto_5
    move-object/from16 v0, p2

    iget v0, v0, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    move/from16 v18, v0

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->location:I

    add-int v17, v17, v10

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_3
    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v18, v0

    :goto_6
    add-int v17, v17, v18

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildPadding:I

    move/from16 v18, v0

    goto :goto_6

    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v21, v0

    add-int v20, v20, v21

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v0, v1, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v19

    add-float v18, v18, v19

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v17, v0

    :goto_7
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    :goto_8
    add-int v17, v17, v18

    goto :goto_7

    :cond_8
    const/16 v18, 0x0

    goto :goto_8

    :cond_9
    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->hidden:Z

    iput v10, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    const/16 v18, 0x0

    move/from16 v0, v18

    iput-boolean v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->isBottomClipped:Z

    goto/16 :goto_3

    :cond_a
    const/16 v18, 0x0

    goto/16 :goto_4

    :cond_b
    const/high16 v18, 0x3f800000    # 1.0f

    cmpl-float v18, v6, v18

    if-nez v18, :cond_2

    if-gt v9, v11, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    move/from16 v18, v0

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v18, v0

    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    move/from16 v19, v0

    sub-float v18, v18, v19

    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v18, v18, v19

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    iget v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    move/from16 v18, v0

    const/high16 v19, 0x3f800000    # 1.0f

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v18

    const/16 v19, 0x0

    move/from16 v0, v19

    move/from16 v1, v18

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v18

    move/from16 v0, v18

    iput v0, v4, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    goto/16 :goto_5

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v19

    move/from16 v0, v19

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_e

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_e

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getSingleLineView()Lcom/android/systemui/statusbar/notification/HybridNotificationView;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTextView()Landroid/widget/TextView;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_d

    invoke-virtual/range {v16 .. v16}, Lcom/android/systemui/statusbar/notification/HybridNotificationView;->getTitleView()Landroid/widget/TextView;

    move-result-object v13

    :cond_d
    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_e

    move-object/from16 v13, v16

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v19, v0

    if-eqz v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    :goto_9
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    if-nez v18, :cond_11

    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v19, v0

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationZ()F

    move-result v18

    :goto_a
    move/from16 v0, v18

    move-object/from16 v1, v19

    iput v0, v1, Lcom/android/systemui/statusbar/stack/ViewState;->zTranslation:F

    :cond_12
    return-void

    :cond_13
    const/16 v18, 0x0

    goto :goto_9

    :cond_14
    const/16 v18, 0x0

    goto :goto_a
.end method

.method public getViewAtPosition(F)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 7

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getTranslationY()F

    move-result v2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getClipTopAmount()I

    move-result v6

    int-to-float v6, v6

    add-float v5, v2, v6

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getActualHeight()I

    move-result v6

    int-to-float v6, v6

    add-float v0, v2, v6

    cmpl-float v6, p1, v5

    if-ltz v6, :cond_0

    cmpg-float v6, p1, v0

    if-gtz v6, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    return-object v6
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v5, 0x8

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7, v4, v5}, Landroid/view/View;->layout(IIII)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v5

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getLayoutDirection()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_4

    const/4 v3, 0x1

    :cond_1
    :goto_1
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    iget-object v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v4, v8, v5, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v5}, Landroid/view/NotificationHeaderView;->getMeasuredWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v6}, Landroid/view/NotificationHeaderView;->getMeasuredHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    add-int/2addr v6, v7

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8, v5, v6}, Landroid/view/NotificationHeaderView;->layout(IIII)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getWidth()I

    move-result v7

    iget v8, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberTopPadding:I

    iget-object v9, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/widget/TextView;->layout(IIII)V

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 20

    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mMaxNotificationHeight:I

    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v10

    const/high16 v18, 0x40000000    # 2.0f

    move/from16 v0, v18

    if-ne v10, v0, :cond_4

    const/4 v7, 0x1

    :goto_0
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    if-ne v10, v0, :cond_5

    const/4 v12, 0x1

    :goto_1
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    if-nez v7, :cond_0

    if-eqz v12, :cond_1

    :cond_0
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->min(II)I

    move-result v15

    :cond_1
    const/high16 v18, -0x80000000

    move/from16 v0, v18

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumberHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v18, v0

    const/high16 v19, -0x80000000

    move/from16 v0, v17

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v19

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v1, v14}, Landroid/widget/TextView;->measure(II)V

    :cond_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v18, v0

    const/high16 v19, 0x40000000    # 2.0f

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderMargin:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v19, v0

    add-int v9, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v18

    const/16 v19, 0x8

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(II)I

    move-result v3

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v4

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v0, p1

    invoke-virtual {v2, v0, v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    move/from16 v0, p1

    invoke-virtual {v5, v0, v6}, Landroid/view/View;->measure(II)V

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v18

    const/16 v19, 0x8

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_3

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMeasuredHeight()I

    move-result v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    move/from16 v19, v0

    add-int v18, v18, v19

    add-int v9, v9, v18

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_5
    const/4 v12, 0x0

    goto/16 :goto_1

    :cond_6
    move-object/from16 v0, p0

    iput v9, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    if-eqz v10, :cond_7

    move/from16 v0, v16

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v9

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderHeight:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificatonTopPadding:I

    move/from16 v19, v0

    add-int v18, v18, v19

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1, v8}, Landroid/view/NotificationHeaderView;->measure(II)V

    :cond_8
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNotificationUpdated()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->setOverflowNumberColor(Landroid/widget/TextView;I)V

    return-void
.end method

.method public pointInView(FFF)Z
    .locals 3

    const/4 v0, 0x0

    neg-float v1, p3

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    neg-float v1, p3

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRight:I

    iget v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mLeft:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mRealHeight:I

    int-to-float v1, v1

    add-float/2addr v1, p3

    cmpg-float v1, p2, v1

    if-gez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public prepareExpansionChanged(Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 0

    return-void
.end method

.method public reInflateViews(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->initDimens()V

    const/4 v1, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->indexOfChild(Landroid/view/View;)I

    move-result v2

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->inflateDivider()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v4, v1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iput-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    return-void
.end method

.method public recreateNotificationHeader(Landroid/view/View$OnClickListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->makeNotificationHeader()Landroid/widget/RemoteViews;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, p0}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/NotificationHeaderView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    const v4, 0x102044e

    invoke-virtual {v3, v4}, Landroid/view/NotificationHeaderView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    iget-object v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-static {v3, v4, v5}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->wrap(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {p0, v3, v6}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addView(Landroid/view/View;I)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->invalidate()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateChildrenHeaderAppearance()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v2, v3, v4}, Landroid/widget/RemoteViews;->reapply(Landroid/content/Context;Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v3, p2}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    goto :goto_0
.end method

.method public removeNotification(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    new-instance v2, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;

    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$1;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setSystemChildExpanded(Z)V

    invoke-virtual {p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateGroupOverflow()V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->restoreNotificationHeader(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    :cond_0
    return-void
.end method

.method public setActualHeight(I)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v7, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mActualHeight:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v3

    invoke-direct {p0, v9}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getMaxAllowedVisibleChildren(Z)I

    move-result v5

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isExpanded(Z)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getMaxExpandHeight()I

    move-result v7

    :goto_1
    int-to-float v2, v7

    if-ge v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    int-to-float v6, v7

    invoke-static {v6, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/NotificationContentView;

    move-result-object v7

    invoke-virtual {v7, v9}, Lcom/android/systemui/statusbar/NotificationContentView;->getMinHeight(Z)I

    move-result v7

    goto :goto_1

    :cond_2
    float-to-int v7, v2

    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public setChildrenExpanded(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->updateExpansionStates()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v3, p1}, Landroid/view/NotificationHeaderView;->setExpanded(Z)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setChildrenExpanded(ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->processChildrenBackground(Z)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->setInverted(ZZJ)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderWrapper:Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    return-void
.end method

.method public setNotificationParent(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 2

    iput-object p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    new-instance v0, Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;-><init>(Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    return-void
.end method

.method public setUserLocked(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setUserLocked(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public startAnimationToState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackStateAnimator;JJ)V
    .locals 19

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v14

    new-instance v18, Lcom/android/systemui/statusbar/stack/ViewState;

    invoke-direct/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/ViewState;-><init>()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getGroupExpandFraction()F

    move-result v16

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-nez v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isGroupExpansionChanging()Z

    move-result v15

    :goto_0
    add-int/lit8 v17, v14, -0x1

    :goto_1
    if-ltz v17, :cond_4

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v5

    const/4 v7, -0x1

    move-object/from16 v3, p2

    move-object/from16 v6, p1

    move-wide/from16 v8, p3

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startStackAnimations(Lcom/android/systemui/statusbar/ExpandableView;Lcom/android/systemui/statusbar/stack/StackViewState;Lcom/android/systemui/statusbar/stack/StackScrollState;IJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividers:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/View;

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Lcom/android/systemui/statusbar/stack/ViewState;->initFrom(Landroid/view/View;)V

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mDividerHeight:I

    int-to-float v6, v6

    sub-float/2addr v3, v6

    move-object/from16 v0, v18

    iput v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->yTranslation:F

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildrenExpanded:Z

    if-eqz v3, :cond_2

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    const/high16 v2, 0x3f000000    # 0.5f

    :goto_2
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mUserLocked:Z

    if-eqz v3, :cond_0

    iget v3, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    iget v6, v5, Lcom/android/systemui/statusbar/stack/StackViewState;->alpha:F

    move/from16 v0, v16

    invoke-static {v6, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v3, v7, v6}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v2

    :cond_0
    if-eqz v15, :cond_3

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, v18

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/stack/ViewState;->hidden:Z

    move-object/from16 v0, v18

    iput v2, v0, Lcom/android/systemui/statusbar/stack/ViewState;->alpha:F

    move-object/from16 v7, p2

    move-object/from16 v9, v18

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    invoke-virtual/range {v7 .. v13}, Lcom/android/systemui/statusbar/stack/StackStateAnimator;->startViewAnimations(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;JJ)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual {v4, v3, v6, v7, v9}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setFakeShadowIntensity(FFII)V

    add-int/lit8 v17, v17, -0x1

    goto/16 :goto_1

    :cond_1
    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v3, 0x1

    goto :goto_3

    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mGroupOverFlowState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v3, :cond_6

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderViewState:Lcom/android/systemui/statusbar/stack/ViewState;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->applyViewState(Landroid/view/View;Lcom/android/systemui/statusbar/stack/ViewState;)V

    :cond_6
    return-void
.end method

.method public updateChildrenHeaderAppearance()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHeaderUtil:Lcom/android/systemui/statusbar/NotificationHeaderUtil;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationHeaderUtil;->updateChildrenHeaderAppearance()V

    return-void
.end method

.method public updateGroupOverflow()V
    .locals 9

    const/4 v4, 0x0

    const/4 v8, 0x0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mChildren:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v3, 0x2

    if-lt v0, v3, :cond_2

    move v1, v0

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mHybridGroupManager:Lcom/android/systemui/statusbar/notification/HybridGroupManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/statusbar/notification/HybridGroupManager;->bindOverflowNumber(Landroid/widget/TextView;I)Landroid/widget/TextView;

    move-result-object v3

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/systemui/ViewInvertHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    const-wide/16 v6, 0x2bc

    invoke-direct {v3, v4, v6, v7}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingStart:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingEndForGroup:I

    invoke-virtual {v3, v4, v8, v5, v8}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->removeView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->isShown()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->getTransientViewCount()I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->addTransientView(Landroid/view/View;I)V

    new-instance v3, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;

    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer$2;-><init>(Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;Landroid/view/View;)V

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeOut(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_3
    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowNumber:Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mOverflowInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    iget-object v3, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object v3

    iget v4, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingStart:I

    iget v5, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeaderPaddingEnd:I

    invoke-virtual {v3, v4, v8, v5, v8}, Landroid/view/NotificationHeaderView;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method public updateHeaderForExpansion(Z)V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationParent:Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->calculateBgColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v0}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v1, v2}, Landroid/view/NotificationHeaderView;->setHeaderBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateHeaderVisibility(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/NotificationChildrenContainer;->mNotificationHeader:Landroid/view/NotificationHeaderView;

    invoke-virtual {v0, p1}, Landroid/view/NotificationHeaderView;->setVisibility(I)V

    :cond_0
    return-void
.end method
