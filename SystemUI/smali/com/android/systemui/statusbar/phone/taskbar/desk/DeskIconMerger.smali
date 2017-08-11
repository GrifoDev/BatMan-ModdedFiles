.class public Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;
.super Lcom/android/systemui/statusbar/phone/IconMerger;
.source "DeskIconMerger.java"


# instance fields
.field private mIconMaxCount:I

.field private mIconMinCount:I

.field private mIsExpanded:Z

.field private mMaxWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private calculateMaxWidth()V
    .locals 2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMaxCount:I

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildCount()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getFullIconWidth()I

    move-result v1

    mul-int/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMaxWidth:I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMinCount:I

    goto :goto_0
.end method


# virtual methods
.method public checkOverflow()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getMaxWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->checkOverflow(I)V

    return-void
.end method

.method protected checkOverflow(I)V
    .locals 8

    const/16 v6, 0x8

    const/4 v5, 0x0

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    if-nez v7, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildCount()I

    move-result v0

    const/4 v4, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-eq v7, v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    if-nez v7, :cond_4

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getFullIconWidth()I

    move-result v7

    mul-int/2addr v7, v4

    if-le v7, p1, :cond_5

    const/4 v2, 0x1

    :goto_2
    if-eq v2, v3, :cond_3

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMoreView:Landroid/view/View;

    if-eqz v2, :cond_6

    :goto_3
    invoke-virtual {v7, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    :cond_5
    move v2, v5

    goto :goto_2

    :cond_6
    move v5, v6

    goto :goto_3
.end method

.method protected getFullIconWidth()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconSize:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->calculateMaxWidth()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMaxWidth:I

    return v0
.end method

.method public isExpanded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/IconMerger;->onMeasure(II)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMaxWidth:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMaxWidth:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->setMeasuredDimension(II)V

    return-void
.end method

.method protected reloadDimens()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0660

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconSize:I

    const v1, 0x7f0d0661

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconHPadding:I

    const v1, 0x7f0c0097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMinCount:I

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIconMaxCount:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->calculateMaxWidth()V

    return-void
.end method

.method public setExpanded(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mIsExpanded:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->calculateMaxWidth()V

    iget v0, p0, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->mMaxWidth:I

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/taskbar/desk/DeskIconMerger;->checkOverflow(I)V

    :cond_0
    return-void
.end method
