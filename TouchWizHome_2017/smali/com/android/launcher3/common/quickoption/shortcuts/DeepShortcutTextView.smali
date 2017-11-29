.class public Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;
.super Lcom/android/launcher3/common/view/IconView;
.source "DeepShortcutTextView.java"


# instance fields
.field private final mDragHandleBounds:Landroid/graphics/Rect;

.field private final mDragHandleWidth:I

.field private mShouldPerformClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/common/view/IconView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a0121

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f0a011e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/2addr v1, v2

    const v2, 0x7f0a011f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/common/view/IconView;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    iget v1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleWidth:I

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    sget-boolean v0, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->getMeasuredWidth()I

    move-result v1

    iget-object v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mDragHandleBounds:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/common/view/IconView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public performClick()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutTextView;->mShouldPerformClick:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/android/launcher3/common/view/IconView;->performClick()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
