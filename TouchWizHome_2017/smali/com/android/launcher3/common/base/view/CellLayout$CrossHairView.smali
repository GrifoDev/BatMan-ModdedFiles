.class public Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;
.super Landroid/view/View;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CrossHairView"
.end annotation


# static fields
.field static final CROSS_HAIR_VI_DURATION:I = 0x12c


# instance fields
.field private mAnimate:Z

.field private mIsAnimaing:Z

.field mParent:Lcom/android/launcher3/common/base/view/CellLayout;

.field private mRunnable:Ljava/lang/Runnable;

.field final synthetic this$0:Lcom/android/launcher3/common/base/view/CellLayout;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/common/base/view/CellLayout;Landroid/content/Context;Lcom/android/launcher3/common/base/view/CellLayout;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mAnimate:Z

    iput-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mIsAnimaing:Z

    iput-object p3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->setVisibility(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mIsAnimaing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public isAnimating()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mIsAnimaing:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    invoke-static {}, Lcom/android/launcher3/common/base/view/CellLayout;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-static {}, Lcom/android/launcher3/common/base/view/CellLayout;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getPaddingLeft()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/lit8 v7, v3, 0x2

    sub-int v4, v6, v7

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    const/4 v0, 0x1

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCountX:I

    add-int/lit8 v6, v6, -0x1

    if-gt v0, v6, :cond_1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->getPaddingTop()I

    move-result v6

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v7}, Lcom/android/launcher3/common/base/view/CellLayout;->getTopPaddingCustomPage()I

    move-result v7

    add-int/2addr v6, v7

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    div-int/lit8 v7, v7, 0x2

    sub-int/2addr v6, v7

    div-int/lit8 v7, v1, 0x2

    sub-int v5, v6, v7

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    const/4 v2, 0x1

    :goto_1
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCountY:I

    add-int/lit8 v6, v6, -0x1

    if-gt v2, v6, :cond_0

    invoke-static {}, Lcom/android/launcher3/common/base/view/CellLayout;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    add-int v7, v4, v3

    add-int v8, v5, v1

    invoke-virtual {v6, v4, v5, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-static {}, Lcom/android/launcher3/common/base/view/CellLayout;->access$500()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCellHeight:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mHeightGap:I

    add-int/2addr v6, v7

    add-int/2addr v5, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v6, v6, Lcom/android/launcher3/common/base/view/CellLayout;->mCellWidth:I

    iget-object v7, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->this$0:Lcom/android/launcher3/common/base/view/CellLayout;

    iget v7, v7, Lcom/android/launcher3/common/base/view/CellLayout;->mWidthGap:I

    add-int/2addr v6, v7

    add-int/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-boolean v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mAnimate:Z

    if-eqz v4, :cond_5

    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mAnimate:Z

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v4}, Lcom/android/launcher3/common/base/view/CellLayout;->isShown()Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez p2, :cond_1

    move v2, v3

    :goto_0
    if-nez p2, :cond_2

    :goto_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x12c

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v3, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;

    invoke-direct {v3, p0, p2, p1}, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView$1;-><init>(Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;ILandroid/view/View;)V

    invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    :goto_2
    return-void

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    iput-boolean v5, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mIsAnimaing:Z

    if-ne p2, v6, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    :cond_4
    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mRunnable:Ljava/lang/Runnable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    :cond_5
    if-ne p2, v6, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mParent:Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/common/base/view/CellLayout;->removeView(Landroid/view/View;)V

    goto :goto_2
.end method

.method public setAnimate(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mAnimate:Z

    return-void
.end method

.method public setRunnable(Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CrossHairView;->mRunnable:Ljava/lang/Runnable;

    return-void
.end method
