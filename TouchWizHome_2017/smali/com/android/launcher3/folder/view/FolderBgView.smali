.class public Lcom/android/launcher3/folder/view/FolderBgView;
.super Landroid/widget/FrameLayout;
.source "FolderBgView.java"


# instance fields
.field private mHelpContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/folder/view/FolderBgView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0e0066

    invoke-virtual {p0, v0}, Lcom/android/launcher3/folder/view/FolderBgView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method public onMoveFromFolderBottom()V
    .locals 2

    const/4 v1, 0x1

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0, v1, v1}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    return-void
.end method

.method public onMoveFromFolderTop()V
    .locals 3

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/LightingEffectManager;->turnOnEachLight(IZ)V

    return-void
.end method

.method public onMoveInFolder()V
    .locals 1

    sget-object v0, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LightingEffectManager;->turnOffAllLight()V

    return-void
.end method

.method public setHelpTextContainerHeightAndGravity(II)V
    .locals 2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    return-void
.end method

.method public showHelpForEdit(ZIZ)V
    .locals 4

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    if-lez p2, :cond_2

    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->start()V

    :goto_1
    if-eqz p3, :cond_0

    sget-object v1, Lcom/android/launcher3/util/LightingEffectManager;->INSTANCE:Lcom/android/launcher3/util/LightingEffectManager;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, p2, v2}, Lcom/android/launcher3/util/LightingEffectManager;->showEffect(ZIZ)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/launcher3/folder/view/FolderBgView;->mHelpContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_1
.end method
