.class public Lcom/android/launcher3/home/CancelDropTarget;
.super Landroid/widget/FrameLayout;
.source "CancelDropTarget.java"

# interfaces
.implements Lcom/android/launcher3/common/drag/DropTarget;
.implements Lcom/android/launcher3/common/drag/DragManager$DragListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ANIMATION_SCALE_DURATION:I = 0xaf

.field private static final CIRCLE_ANIMATION_DURATION:I = 0xe9

.field private static final DRAG_VIEW_DROP_DURATION:I = 0x10a

.field private static final IMAGEVIEW_SCALE_DURATION:I = 0x85

.field private static final TEXTVIEW_FADE_DURATION:I = 0xe9


# instance fields
.field private mActive:Z

.field private mCircleView:Landroid/widget/ImageView;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mEnable:Z

.field private mImageView:Landroid/widget/ImageView;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/home/CancelDropTarget;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/home/CancelDropTarget;)Lcom/android/launcher3/Launcher;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/home/CancelDropTarget;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    return-void
.end method

.method private animateCircleView(Z)V
    .locals 8

    const-wide/16 v6, 0xe9

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$2;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/home/CancelDropTarget$2;-><init>(Lcom/android/launcher3/home/CancelDropTarget;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f060001

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    :goto_0
    return-void

    :cond_0
    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$3;

    invoke-direct {v2, p0, v1}, Lcom/android/launcher3/home/CancelDropTarget$3;-><init>(Lcom/android/launcher3/home/CancelDropTarget;Landroid/widget/ImageView;)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v3

    const/high16 v4, 0x7f060000

    invoke-static {v3, v4}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    invoke-virtual {v0, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0
.end method

.method private animateScale(Z)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    if-eqz p1, :cond_0

    invoke-direct {p0, v7}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    :goto_0
    const-wide/16 v4, 0xaf

    invoke-virtual {v0, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v4, v9, [Landroid/animation/Animator;

    const-string v5, "scaleX"

    new-array v6, v9, [F

    aput v1, v6, v8

    aput v3, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "scaleY"

    new-array v6, v9, [F

    aput v1, v6, v8

    aput v3, v6, v7

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    new-instance v2, Lcom/android/launcher3/home/CancelDropTarget$4;

    invoke-direct {v2, p0}, Lcom/android/launcher3/home/CancelDropTarget$4;-><init>(Lcom/android/launcher3/home/CancelDropTarget;)V

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0
.end method

.method private getIconRect(IIII)Landroid/graphics/Rect;
    .locals 12

    iget-object v10, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v10}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iget-object v10, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v10, v5}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move v7, p3

    move/from16 v2, p4

    iget v10, v5, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getPaddingLeft()I

    move-result v11

    add-int v3, v10, v11

    add-int v4, v3, v7

    iget v10, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getMeasuredHeight()I

    move-result v11

    sub-int/2addr v11, v2

    div-int/lit8 v11, v11, 0x2

    add-int v6, v10, v11

    add-int v0, v6, v2

    invoke-virtual {v5, v3, v6, v4, v0}, Landroid/graphics/Rect;->set(IIII)V

    sub-int v10, p1, v7

    neg-int v10, v10

    div-int/lit8 v8, v10, 0x2

    sub-int v10, p2, v2

    neg-int v10, v10

    div-int/lit8 v9, v10, 0x2

    invoke-virtual {v5, v8, v9}, Landroid/graphics/Rect;->offset(II)V

    return-object v5
.end method

.method private setCancelDropTargetVisible(Z)V
    .locals 4

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/launcher3/home/CancelDropTarget;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_2

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/launcher3/home/CancelDropTarget;->setDefaultState()V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method private setDefaultState()V
    .locals 3

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTranslationY(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setScaleX(F)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setScaleY(F)V

    return-void
.end method

.method private setResource(III)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public final acceptDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    return v0
.end method

.method animateCancelDropTarget()V
    .locals 2

    const/4 v1, 0x1

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    :cond_0
    return-void
.end method

.method changeColorForBg(Z)V
    .locals 3

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0039

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1, v2, p1}, Lcom/android/launcher3/util/WhiteBgManager;->changeColorFilterForBg(Landroid/content/Context;Landroid/widget/ImageView;Z)V

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0e0038

    invoke-static {v1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v0

    goto :goto_0
.end method

.method public getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getHitRect(Landroid/graphics/Rect;)V

    const/4 v1, 0x2

    new-array v0, v1, [I

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/android/launcher3/common/view/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Rect;->offsetTo(II)V

    return-void
.end method

.method public getOutlineColor()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOutlineColor()I

    move-result v0

    return v0
.end method

.method public getTargetView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public isDropEnabled(Z)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method onConfigurationChangedIfNeeded(I)V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00aa

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method public onDragEnd()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    iput-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    invoke-direct {p0, v1}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onDragEnter(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x2

    iget-boolean v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-direct {p0, v8}, Lcom/android/launcher3/home/CancelDropTarget;->animateCircleView(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v2, v6, [Landroid/animation/Animator;

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleX"

    new-array v5, v6, [F

    fill-array-data v5, :array_0

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v6, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09002e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    invoke-virtual {v2, v1}, Lcom/android/launcher3/util/Talk;->say(Ljava/lang/String;)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f99999a    # 1.2f
    .end array-data
.end method

.method public onDragExit(Lcom/android/launcher3/common/drag/DropTarget$DragObject;Z)V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x2

    iget-boolean v1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v6}, Lcom/android/launcher3/home/CancelDropTarget;->animateCircleView(Z)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-array v1, v5, [Landroid/animation/Animator;

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v3, "scaleX"

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const-string v4, "scaleY"

    new-array v5, v5, [F

    fill-array-data v5, :array_1

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public onDragOver(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 0

    return-void
.end method

.method public onDragStart(Lcom/android/launcher3/common/drag/DragSource;Ljava/lang/Object;I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDrop(Lcom/android/launcher3/common/drag/DropTarget$DragObject;)V
    .locals 27

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mActive:Z

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/common/view/DragLayer;

    move-result-object v4

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v25

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v21

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v5, v9, v1, v2}, Lcom/android/launcher3/home/CancelDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v8, v5, v9

    new-instance v16, Lcom/android/launcher3/home/CancelDropTarget$1;

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher3/home/CancelDropTarget$1;-><init>(Lcom/android/launcher3/home/CancelDropTarget;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const/16 v13, 0x10a

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragSourceList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->extraDragInfoList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v26

    :goto_0
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/launcher3/common/drag/DropTarget$DragObject;

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v4, v5, v6}, Lcom/android/launcher3/common/view/DragLayer;->getViewRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)V

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v5}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredWidth()I

    move-result v5

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    invoke-virtual {v9}, Lcom/android/launcher3/common/drag/DragView;->getMeasuredHeight()I

    move-result v9

    move-object/from16 v0, p0

    move/from16 v1, v25

    move/from16 v2, v21

    invoke-direct {v0, v5, v9, v1, v2}, Lcom/android/launcher3/home/CancelDropTarget;->getIconRect(IIII)Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float v8, v5, v9

    move-object/from16 v0, v20

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragView:Lcom/android/launcher3/common/drag/DragView;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v10, 0x3f800000    # 1.0f

    const v11, 0x3dcccccd    # 0.1f

    const v12, 0x3dcccccd    # 0.1f

    const/16 v13, 0x10a

    new-instance v14, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v15, 0x40000000    # 2.0f

    invoke-direct {v14, v15}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    new-instance v15, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v15}, Landroid/view/animation/LinearInterpolator;-><init>()V

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v4 .. v18}, Lcom/android/launcher3/common/view/DragLayer;->animateView(Lcom/android/launcher3/common/drag/DragView;Landroid/graphics/Rect;Landroid/graphics/Rect;FFFFFILandroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Ljava/lang/Runnable;ILandroid/view/View;)V

    goto :goto_0

    :cond_0
    sget-object v5, Lcom/android/launcher3/util/Talk;->INSTANCE:Lcom/android/launcher3/util/Talk;

    const v9, 0x7f09002f

    invoke-virtual {v5, v9}, Lcom/android/launcher3/util/Talk;->say(I)V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    sget-object v9, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v10, 0x1

    new-array v10, v10, [F

    const/4 v11, 0x0

    const/4 v12, 0x0

    aput v12, v10, v11

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v19

    const-wide/16 v10, 0xe9

    move-object/from16 v0, v19

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual/range {v19 .. v19}, Landroid/animation/Animator;->start()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_0

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v23

    const-wide/16 v10, 0x85

    move-object/from16 v0, v23

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v5, v23

    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    move-object/from16 v5, v23

    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual/range {v23 .. v23}, Landroid/animation/Animator;->start()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    sget-object v9, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    const/4 v10, 0x2

    new-array v10, v10, [F

    fill-array-data v10, :array_1

    invoke-static {v5, v9, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v24

    const-wide/16 v10, 0x85

    move-object/from16 v0, v24

    invoke-virtual {v0, v10, v11}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    move-object/from16 v5, v24

    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x2

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatMode(I)V

    move-object/from16 v5, v24

    check-cast v5, Landroid/animation/ObjectAnimator;

    const/4 v9, 0x1

    invoke-virtual {v5, v9}, Landroid/animation/ObjectAnimator;->setRepeatCount(I)V

    invoke-virtual/range {v24 .. v24}, Landroid/animation/Animator;->start()V

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/launcher3/home/CancelDropTarget;->animateScale(Z)V

    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v9

    const-string v10, "HCMS"

    const-string v11, "Cancel"

    const-wide/16 v12, -0x1

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragSource:Lcom/android/launcher3/common/drag/DragSource;

    invoke-interface {v5}, Lcom/android/launcher3/common/drag/DragSource;->getDragSourceType()I

    move-result v5

    const/4 v9, 0x5

    if-ne v5, v9, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    instance-of v5, v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-eqz v5, :cond_1

    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/android/launcher3/common/drag/DropTarget$DragObject;->dragInfo:Ljava/lang/Object;

    check-cast v5, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    invoke-virtual {v5}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getProviderInfo()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v5

    move-object/from16 v0, v22

    iget-object v9, v0, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5, v9}, Lcom/android/launcher3/util/logging/SALogging;->insertCancelAddWidgetLog(Landroid/content/ComponentName;)V

    :cond_1
    return-void

    :array_0
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f99999a    # 1.2f
        0x3fa66666    # 1.3f
    .end array-data
.end method

.method protected onFinishInflate()V
    .locals 5

    const/4 v4, 0x1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040022

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const v2, 0x7f11006c

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    const v2, 0x7f11006b

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mImageView:Landroid/widget/ImageView;

    const v2, 0x7f11006a

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mCircleView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v4}, Lcom/android/launcher3/home/CancelDropTarget;->changeColorForBg(Z)V

    :cond_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/launcher3/home/CancelDropTarget;->setCancelDropTargetVisible(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/home/CancelDropTarget;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/Launcher;

    invoke-virtual {v2}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->isVerticalBarLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/launcher3/home/CancelDropTarget;->mTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const v2, 0x7f09002f

    const v3, 0x7f0200ff

    const v4, 0x7f02002d

    invoke-direct {p0, v2, v3, v4}, Lcom/android/launcher3/home/CancelDropTarget;->setResource(III)V

    return-void
.end method

.method setEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/home/CancelDropTarget;->mEnable:Z

    return-void
.end method
