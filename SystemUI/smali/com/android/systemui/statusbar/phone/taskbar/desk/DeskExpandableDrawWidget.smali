.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;
.super Landroid/view/ViewGroup;
.source "DeskExpandableDrawWidget.java"


# instance fields
.field private mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

.field private mCurrentStackHeight:I

.field private mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

.field private mMaxLayoutHeight:I

.field private mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

.field private mTopPadding:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mTopPadding:I

    new-instance v0, Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/AmbientState;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollState;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mCurrentStackHeight:I

    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-direct {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private getLayoutHeight()I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mMaxLayoutHeight:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mCurrentStackHeight:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method private requestChildrenUpdate()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->updateChildren()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->invalidate()V

    return-void
.end method

.method private setMaxLayoutHeight(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mMaxLayoutHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mMaxLayoutHeight:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->updateAlgorithmHeightAndPadding()V

    :cond_0
    return-void
.end method

.method private setUpdateView(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setStackTranslation(F)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->requestChildrenUpdate()V

    return-void
.end method

.method private updateAlgorithmHeightAndPadding()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getLayoutHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setLayoutHeight(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mTopPadding:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->setTopPadding(I)V

    return-void
.end method

.method private updateChildren()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mStackScrollAlgorithm:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mAmbientState:Lcom/android/systemui/statusbar/stack/AmbientState;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mCurrentStackScrollState:Lcom/android/systemui/statusbar/stack/StackScrollState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->apply()V

    return-void
.end method


# virtual methods
.method public onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float v0, v5, v9

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildCount()I

    move-result v5

    if-ge v3, v5, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    int-to-float v4, v5

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    int-to-float v2, v5

    div-float v5, v4, v9

    sub-float v5, v0, v5

    float-to-int v5, v5

    div-float v6, v4, v9

    add-float/2addr v6, v0

    float-to-int v6, v6

    float-to-int v7, v2

    const/4 v8, 0x0

    invoke-virtual {v1, v5, v8, v6, v7}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getHeight()I

    move-result v5

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setMaxLayoutHeight(I)V

    const/4 v5, 0x0

    invoke-direct {p0, v5}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setUpdateView(F)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130182

    if-ne v2, v3, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d047c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->measureChild(Landroid/view/View;II)V

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f130186

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0663

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->measureChild(Landroid/view/View;II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getSuggestedMinimumWidth()I

    move-result v2

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getDefaultSize(II)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getSuggestedMinimumHeight()I

    move-result v3

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    invoke-static {v4, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskExpandableDrawWidget;->setMeasuredDimension(II)V

    goto :goto_1

    :cond_2
    return-void
.end method
