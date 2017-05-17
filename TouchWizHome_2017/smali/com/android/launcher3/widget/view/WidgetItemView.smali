.class public abstract Lcom/android/launcher3/widget/view/WidgetItemView;
.super Landroid/widget/LinearLayout;
.source "WidgetItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;,
        Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;
    }
.end annotation


# instance fields
.field protected mDimensionsFormatString:Ljava/lang/String;

.field private mHighlightColor:I

.field protected mLauncher:Lcom/android/launcher3/Launcher;

.field protected mLoadTask:Lcom/android/launcher3/util/threadpool/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/threadpool/Future",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

.field protected mTalkbackDimen:Ljava/lang/String;

.field private final mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

.field protected mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallExitIconAnimation:Landroid/view/animation/Animation;

.field protected mUninstallIcon:Landroid/widget/ImageView;

.field protected mWidgets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040009

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    const v1, 0x7f040008

    invoke-static {p1, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$1;

    invoke-direct {v2, p0}, Lcom/android/launcher3/widget/view/WidgetItemView$1;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const v1, 0x7f0801ba

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mDimensionsFormatString:Ljava/lang/String;

    const v1, 0x7f0801b8

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mTalkbackDimen:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setHapticFeedbackEnabled(Z)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setWillNotDraw(Z)V

    invoke-virtual {p0, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setClipToPadding(Z)V

    const v1, 0x7f0d0035

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getThreadPool()Lcom/android/launcher3/util/threadpool/ThreadPool;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-static {}, Lcom/android/launcher3/widget/model/WidgetPreviewUtils;->getInstance()Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mPreviewUtils:Lcom/android/launcher3/widget/model/WidgetPreviewUtils;

    return-void
.end method


# virtual methods
.method protected applyCellSpan()V
    .locals 0

    return-void
.end method

.method public applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v4

    const/4 v3, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    invoke-static {v6, p1, v7}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v2}, Ljava/lang/String;-><init>([C)V

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    const/4 v6, -0x1

    if-le v3, v6, :cond_0

    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    iget v7, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mHighlightColor:I

    invoke-direct {v6, v7}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v7, v3, v1

    const/4 v8, 0x0

    invoke-interface {v0, v6, v3, v7, v8}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p2, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method protected final applyTileAndSpan(Ljava/lang/String;)V
    .locals 5

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    instance-of v0, p0, Lcom/android/launcher3/widget/view/WidgetItemFolderView;

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getApplicationLabel()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyTitle(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyHighlightTitle(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->applyCellSpan()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method protected abstract applyTitle(Ljava/lang/String;)V
.end method

.method public changeColorForBg(Z)V
    .locals 0

    return-void
.end method

.method public changeState(Lcom/android/launcher3/widget/controller/WidgetState$State;Z)V
    .locals 1

    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->NORMAL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher3/widget/controller/WidgetState$State;->UNINSTALL:Lcom/android/launcher3/widget/controller/WidgetState$State;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/widget/controller/WidgetState$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/launcher3/widget/view/WidgetItemView;->enterUninstallMode(Z)V

    goto :goto_0
.end method

.method public enterUninstallMode(Z)V
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v4, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const-string v6, "\u00a0"

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallEnterAnimation()V

    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallEnter(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method public exitUninstallMode(Z)V
    .locals 6

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v3, v1, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    if-eqz v3, :cond_1

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v0, v3}, Lcom/android/launcher3/common/base/item/PendingAddItemInfo;->uninstallable(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {p0, v5, v3}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTalkbackDescription(ZZ)V

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->startUninstallExitAnimation()V

    :cond_0
    if-nez v2, :cond_3

    :goto_1
    invoke-virtual {p0, v4}, Lcom/android/launcher3/widget/view/WidgetItemView;->prepareUninstallExit(Z)V

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setFocusable(Z)V

    :cond_1
    return-void

    :cond_2
    move v3, v5

    goto :goto_0

    :cond_3
    move v4, v5

    goto :goto_1
.end method

.method protected abstract getPreviewImageHeight()I
.end method

.method protected abstract getPreviewImageWidth()I
.end method

.method protected abstract getTitleTextView()Landroid/widget/TextView;
.end method

.method public getWidgets()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    return-object v0
.end method

.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    return-object v0
.end method

.method protected abstract loadPreview(Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;Ljava/util/List;II)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/threadpool/ThreadPool$JobContext;",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;II)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected abstract postToSetPreview(Ljava/lang/Object;II)V
.end method

.method protected prepareUninstallEnter(Z)V
    .locals 0

    return-void
.end method

.method protected prepareUninstallExit(Z)V
    .locals 0

    return-void
.end method

.method public requestPreview(Lcom/android/launcher3/widget/view/WidgetPageLayout;)V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mThreadPool:Lcom/android/launcher3/util/threadpool/ThreadPool;

    new-instance v1, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewLoadTask;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Ljava/util/List;II)V

    new-instance v2, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getPreviewImageHeight()I

    move-result v4

    invoke-direct {v2, p0, p1, v3, v4}, Lcom/android/launcher3/widget/view/WidgetItemView$PreviewJobListener;-><init>(Lcom/android/launcher3/widget/view/WidgetItemView;Lcom/android/launcher3/widget/view/WidgetPageLayout;II)V

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/threadpool/ThreadPool;->submit(Lcom/android/launcher3/util/threadpool/ThreadPool$Job;Lcom/android/launcher3/util/threadpool/FutureListener;)Lcom/android/launcher3/util/threadpool/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    return-void
.end method

.method protected resetToRecycle()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, -0x1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    invoke-interface {v0}, Lcom/android/launcher3/util/threadpool/Future;->cancel()V

    iput-object v2, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mLoadTask:Lcom/android/launcher3/util/threadpool/Future;

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusLeftId(I)V

    invoke-virtual {p0, v1}, Lcom/android/launcher3/widget/view/WidgetItemView;->setNextFocusRightId(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetItemView;->exitUninstallMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetItemView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method protected setTalkbackDescription(ZZ)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getTitleTextView()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080062

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setWidgets(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/PendingAddItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mWidgets:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method protected startUninstallEnterAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallEnterIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected startUninstallExitAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallExitIconAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected supportLongClick()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected uninstallExitIconAnimationEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetItemView;->mUninstallIcon:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method
