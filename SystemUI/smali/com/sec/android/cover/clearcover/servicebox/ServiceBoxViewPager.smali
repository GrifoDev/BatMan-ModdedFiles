.class public Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "ServiceBoxViewPager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastTouchTime:J

.field private sSetCurrentItemInternal:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->mLastTouchTime:J

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->loadMethods()V

    return-void
.end method

.method private loadMethods()V
    .locals 4

    const/4 v2, 0x3

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/android/internal/widget/ViewPager;

    const-string/jumbo v3, "setCurrentItemInternal"

    invoke-virtual {v2, v3, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while loading methods"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public isScrolledByUser()Z
    .locals 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->mLastTouchTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x1f4

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 11

    const/high16 v10, 0x40000000    # 2.0f

    const/high16 v9, -0x80000000

    const/4 v7, 0x0

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    if-ne v8, v9, :cond_0

    const/4 v7, 0x1

    :cond_0
    if-eqz v7, :cond_4

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getMeasuredHeight()I

    move-result v3

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_3

    const/4 v5, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v0, p1, v8}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    if-ge v5, v2, :cond_1

    move v5, v2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-eqz v5, :cond_3

    move v3, v5

    :cond_3
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/ViewPager;->onMeasure(II)V

    :cond_4
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->mLastTouchTime:J

    invoke-super {p0, p1}, Lcom/android/internal/widget/ViewPager;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setItemByForce(IZ)Z
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    if-nez v2, :cond_0

    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "sSetCurrentItemInternal is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_0
    const/4 v2, 0x3

    :try_start_0
    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->sSetCurrentItemInternal:Ljava/lang/reflect/Method;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    :catch_0
    move-exception v0

    sget-object v2, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxViewPager;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Error while invoking setCurrentItemInternal()"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method
