.class Lcom/android/launcher3/home/WidgetScroll;
.super Ljava/lang/Object;
.source "WidgetScroll.java"


# instance fields
.field private final TYPE_GRID:I

.field private final TYPE_LIST:I

.field private final TYPE_NONE:I

.field private final TYPE_STACK:I

.field private final TYPE_WEAHTER:I

.field private mScrollType:I

.field private mScrollView:Landroid/view/View;


# direct methods
.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_NONE:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_LIST:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_STACK:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_GRID:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->TYPE_WEAHTER:I

    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method getScrollType(Landroid/view/View;Z)I
    .locals 5

    const/4 v3, 0x0

    if-eqz p2, :cond_0

    iget v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    :goto_0
    return v1

    :cond_0
    if-eqz p1, :cond_1

    instance-of v4, p1, Landroid/view/ViewGroup;

    if-nez v4, :cond_2

    :cond_1
    move v1, v3

    goto :goto_0

    :cond_2
    instance-of v4, p1, Landroid/widget/StackView;

    if-eqz v4, :cond_3

    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    const/4 v1, 0x2

    goto :goto_0

    :cond_3
    instance-of v4, p1, Landroid/widget/ListView;

    if-eqz v4, :cond_4

    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    instance-of v4, p1, Landroid/widget/GridView;

    if-eqz v4, :cond_5

    iput-object p1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    const/4 v1, 0x3

    goto :goto_0

    :cond_5
    move-object v2, p1

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    if-ge v0, v4, :cond_7

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/home/WidgetScroll;->getScrollType(Landroid/view/View;Z)I

    move-result v1

    if-lez v1, :cond_6

    iput v1, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    goto :goto_0

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_7
    iput v3, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    move v1, v3

    goto :goto_0
.end method

.method isScrollable()Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    if-lez v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollView:Landroid/view/View;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->canScrollVertically(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    iget v2, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method isWeather()Z
    .locals 2

    iget v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method setWeatherScrollablility(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    :goto_0
    iput v0, p0, Lcom/android/launcher3/home/WidgetScroll;->mScrollType:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
