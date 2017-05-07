.class public Lcom/android/systemui/statusbar/NotificationOverflowContainer;
.super Lcom/android/systemui/statusbar/ActivatableNotificationView;
.source "NotificationOverflowContainer.java"


# instance fields
.field private mContent:Landroid/view/View;

.field private mDark:Z

.field private mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

.field private mIsCover:Z

.field private mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

.field private mScaleValueForCover:F

.field private mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ActivatableNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public canBeSwiped()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getContentView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->onFinishInflate()V

    const v0, 0x7f1304ab

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v0, 0x7f1304a9

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setMoreText(Landroid/widget/TextView;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIconsView:Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    const v1, 0x7f1304aa

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->setOverflowIndicator(Landroid/view/View;)V

    const v0, 0x7f1304a8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mContent:Landroid/view/View;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d0409

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mScaleValueForCover:F

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setDark(ZZJ)V

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mDark:Z

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mViewInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0
.end method

.method public setIsCoverState(Z)V
    .locals 3

    const/high16 v1, 0x3f800000    # 1.0f

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIsCover:Z

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz p1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mScaleValueForCover:F

    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/NotificationMoreCue;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mScaleValueForCover:F

    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationMoreCue;->setScaleY(F)V

    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIsCover:Z

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public setMoreCue(Lcom/android/systemui/statusbar/NotificationMoreCue;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    return-void
.end method

.method public setTranslationY(F)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/ActivatableNotificationView;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIsCover:Z

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mScaleValueForCover:F

    mul-float/2addr v2, v3

    float-to-int v0, v2

    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mIsCover:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mScaleValueForCover:F

    mul-float/2addr v2, p1

    float-to-int v1, v2

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->mMoreCue:Lcom/android/systemui/statusbar/NotificationMoreCue;

    add-int v3, v1, v0

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/NotificationMoreCue;->setTranslationY(F)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_2
    float-to-int v1, p1

    goto :goto_1
.end method
