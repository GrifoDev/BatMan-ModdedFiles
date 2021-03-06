.class public Lcom/android/systemui/slimindicator/SlimIndicatorImageView;
.super Landroid/widget/ImageView;
.source "SlimIndicatorImageView.java"

# interfaces
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/android/systemui/slimindicator/SlimIndicatorElement;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHideMySelf:Z

.field private mIsHomeImage:Z

.field private mOriginalAlpha:F

.field private mOriginalVisibility:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalVisibility:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalAlpha:F

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mHideMySelf:Z

    iput-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mIsHomeImage:Z

    iput-object p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-boolean p2, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mIsHomeImage:Z

    return-void
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_slimindicator_SlimIndicatorImageView_2811(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->updateSlimIndicatorStyle(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 4

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->getVisibility()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalVisibility:I

    invoke-virtual {p0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->getAlpha()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalAlpha:F

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "icon_blacklist"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    sget-boolean v0, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/tuner/TunerService;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tuner/TunerService;->removeTunable(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    :cond_0
    return-void
.end method

.method public onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string/jumbo v0, "icon_blacklist"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/systemui/slimindicator/-$Lambda$JlmcoPAop5jbtlpLqQ3l1lS7FZc;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/slimindicator/-$Lambda$JlmcoPAop5jbtlpLqQ3l1lS7FZc;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v1, :cond_1

    move v0, p1

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalAlpha:F

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mHideMySelf:Z

    if-eqz v1, :cond_0

    const v0, 0x3ca3d70a    # 0.02f

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :goto_1
    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_1
.end method

.method public setVisibility(I)V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-eqz v1, :cond_1

    move v0, p1

    iput p1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalVisibility:I

    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mHideMySelf:Z

    if-eqz v1, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    return-void

    :cond_0
    move v0, p1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateSlimIndicatorStyle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-boolean v1, Lcom/android/systemui/Rune;->QPANEL_SUPPORT_SLIMINDICATOR:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mIsHomeImage:Z

    if-eqz v1, :cond_2

    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isHomeCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mHideMySelf:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mHideMySelf:Z

    iget v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalVisibility:I

    invoke-virtual {p0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->setVisibility(I)V

    iget v1, p0, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->mOriginalAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/slimindicator/SlimIndicatorImageView;->setAlpha(F)V

    :cond_1
    return-void

    :cond_2
    const-class v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/slimindicator/SlimIndicatorManager;

    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/slimindicator/SlimIndicatorManager;->isLockCarrierTextDisabled(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method
