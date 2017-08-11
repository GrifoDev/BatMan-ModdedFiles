.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;
.super Landroid/view/ViewGroup;
.source "DeskNotificationView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/stack/ScrollContainer;


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mContext:Landroid/content/Context;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

.field private mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private mIncreasedPaddingBetweenElements:I

.field private mIsDeskPanelPreview:Z

.field private mIsHeadsup:Z

.field private mKey:Ljava/lang/String;

.field private mMaxLayoutHeight:I

.field private mNotificationAreaView:Landroid/widget/LinearLayout;

.field private mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

.field private mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

.field private mPaddingBetweenElements:I

.field private mPaddingOffset:F

.field private mPrevKeyStack:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackHeight:I

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mTopPadding:I

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsDeskPanelPreview:Z

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mKey:Ljava/lang/String;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->init()V

    return-void
.end method

.method private findViewByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .locals 4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v3, v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v0, v2

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private getHeadsUpTopEntryKey()Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

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

.method private getLayoutHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private requestChildrenUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->updateChildren()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->invalidate()V

    return-void
.end method

.method private setActualHeight(I)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/StackViewState;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    iget v3, v1, Lcom/android/systemui/statusbar/stack/StackViewState;->height:I

    if-ne p1, v3, :cond_0

    invoke-virtual {v0, p1, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setActualHeight(IZ)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mMaxLayoutHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mMaxLayoutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->updateAlgorithmHeightAndPadding()V

    :cond_0
    return-void
.end method

.method private setUpdateView(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->requestChildrenUpdate()V

    return-void
.end method

.method private showBottom()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method private showHeader()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    return-void
.end method

.method private updateChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeight()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setActualHeight(I)V

    return-void
.end method


# virtual methods
.method public addPrevKeyStack(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-void
.end method

.method public clear()V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v3, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    move-object v3, v1

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v3, v4}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V

    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->removeViewStateForView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->removeAllViews()V

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    iput-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    return-void
.end method

.method public getBottomBarView()Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    return-object v0
.end method

.method public init()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->setDeskMode(Z)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->loadDimens()V

    return-void
.end method

.method public loadDimens()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPaddingBetweenElements:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d02d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIncreasedPaddingBetweenElements:I

    return-void
.end method

.method public lockScrollTo(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mKey:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setChildHeight(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->measureChild(Landroid/view/View;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    float-to-int v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setMeasuredDimension(II)V

    return-void
.end method

.method public removeAllPrevKeyStack()V
    .locals 1

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->removePrevKeyStack()Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removePrevKeyStack()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, ""

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public requestDisallowDismiss()V
    .locals 0

    return-void
.end method

.method public requestDisallowLongPress()V
    .locals 0

    return-void
.end method

.method public setBottomBarView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationBottomBarView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    return-void
.end method

.method public setChildAllVisible()V
    .locals 3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setChildHeight(Ljava/lang/String;)F
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsDeskPanelPreview:Z

    move/from16 v22, v0

    if-nez v22, :cond_3

    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->findViewByKey(Ljava/lang/String;)Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v22

    if-eqz v22, :cond_0

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v22

    if-eqz v22, :cond_6

    :cond_0
    const/4 v15, 0x0

    :goto_0
    if-nez v14, :cond_1

    if-eqz v15, :cond_3

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeadsUpTopEntryKey()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_2

    if-eqz v14, :cond_7

    :cond_2
    move-object/from16 p1, v8

    :cond_3
    :goto_1
    const/4 v10, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v5, v22, v23

    const/16 v17, 0x0

    const/4 v11, 0x0

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v22

    move/from16 v0, v22

    if-ge v11, v0, :cond_13

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getMeasuredHeight()I

    move-result v22

    move/from16 v0, v22

    int-to-float v9, v0

    const/high16 v22, 0x40000000    # 2.0f

    div-float v22, v21, v22

    sub-float v22, v5, v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    const/high16 v23, 0x40000000    # 2.0f

    div-float v23, v21, v23

    add-float v23, v23, v5

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    float-to-int v0, v9

    move/from16 v24, v0

    const/16 v25, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    move-object/from16 v0, v20

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    move-object/from16 v6, v20

    check-cast v6, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    move/from16 v22, v0

    if-eqz v22, :cond_b

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getKey()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    :cond_4
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setDeskHeadsUp(Z)V

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_6
    const/4 v15, 0x1

    goto/16 :goto_0

    :cond_7
    const-string/jumbo p1, ""

    goto/16 :goto_1

    :cond_8
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeadsUpTopEntryKey()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_9

    const-string/jumbo p1, ""

    goto/16 :goto_1

    :cond_9
    move-object/from16 p1, v8

    goto/16 :goto_1

    :cond_a
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v10

    goto :goto_3

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/NotificationGroupManager;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v22

    if-eqz v22, :cond_10

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isRemoved()Z

    move-result v22

    if-eqz v22, :cond_f

    const/4 v15, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isKeyguardState()Z

    move-result v22

    if-nez v22, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isShadeLockedState()Z

    move-result v22

    if-eqz v22, :cond_11

    :cond_c
    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v22, v0

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->shouldShowOnKeyguard(Landroid/service/notification/StatusBarNotification;)Z

    move-result v19

    if-nez v15, :cond_12

    if-nez v13, :cond_d

    if-eqz v19, :cond_12

    :cond_d
    const/16 v22, 0x0

    :goto_6
    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->setVisibility(I)V

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v22

    if-nez v22, :cond_4

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIncreasedPaddingAmount()F

    move-result v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPaddingBetweenElements:I

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIncreasedPaddingBetweenElements:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v17

    invoke-static {v0, v12}, Ljava/lang/Math;->max(FF)F

    move-result v24

    invoke-static/range {v22 .. v24}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v22

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v16, v0

    if-eqz v10, :cond_e

    int-to-float v0, v10

    move/from16 v22, v0

    add-float v22, v22, v16

    move/from16 v0, v22

    float-to-int v10, v0

    :cond_e
    move/from16 v17, v12

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v22

    add-int v10, v10, v22

    goto/16 :goto_3

    :cond_f
    const/4 v15, 0x1

    goto :goto_4

    :cond_10
    const/4 v15, 0x0

    goto :goto_4

    :cond_11
    const/4 v13, 0x1

    goto :goto_5

    :cond_12
    const/16 v22, 0x8

    goto :goto_6

    :cond_13
    int-to-float v0, v10

    move/from16 v22, v0

    return v22
.end method

.method public setDeskPanelPreview(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsDeskPanelPreview:Z

    return-void
.end method

.method public setDisplayMetrics(Landroid/util/DisplayMetrics;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-void
.end method

.method public setHeaderView(Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationHeaderView:Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHeadsUpManager(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    return-void
.end method

.method public setHideSensitive(Z)V
    .locals 5

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v4

    if-eq p1, v4, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v4, v2, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v4, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setHideSensitiveForIntrinsicHeight(Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v4, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setHideSensitive(Z)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->requestChildrenUpdate()V

    :cond_2
    return-void
.end method

.method public setNotificationAddinfo(ZLjava/lang/String;)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mIsHeadsup:Z

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mKey:Ljava/lang/String;

    return-void
.end method

.method public setNotificationAreaView(Landroid/widget/LinearLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mNotificationAreaView:Landroid/widget/LinearLayout;

    return-void
.end method

.method public setNotificationGroupManager(Lcom/android/systemui/statusbar/phone/NotificationGroupManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mGroupManager:Lcom/android/systemui/statusbar/phone/NotificationGroupManager;

    return-void
.end method

.method public setNotificationHeight(ZLjava/lang/String;)F
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setChildHeight(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationAddinfo(ZLjava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->getHeight()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setMaxLayoutHeight(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->showBottom()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->showHeader()V

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setUpdateView(F)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPaddingOffset:F

    return v0
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/PhoneStatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    return-void
.end method

.method public showPrevView(Landroid/view/View;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->removePrevKeyStack()Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->mPrevKeyStack:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskNotificationView;->setNotificationHeight(ZLjava/lang/String;)F

    return-object v0

    :cond_0
    const-string/jumbo v1, ""

    return-object v1
.end method
