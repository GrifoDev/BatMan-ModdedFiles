.class public Lcom/android/launcher3/widget/view/WidgetCell;
.super Landroid/widget/LinearLayout;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/launcher3/widget/view/PreviewLoadListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_IN_DURATION_MS:I = 0x5a

.field private static final PREVIEW_SCALE:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "WidgetCell"

.field private static final WIDTH_SCALE:F = 2.6f


# instance fields
.field public cellSize:I

.field private mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mInfo:Ljava/lang/Object;

.field private mLauncher:Lcom/android/launcher3/Launcher;

.field private mPresetPreviewSize:I

.field private mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

.field private mWidgetDims:Landroid/widget/TextView;

.field private mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

.field private mWidgetName:Landroid/widget/TextView;

.field private mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/widget/view/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/widget/view/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    check-cast p1, Lcom/android/launcher3/Launcher;

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    new-instance v1, Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/util/event/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    const v1, 0x7f0901e3

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->setContainerWidth()V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetCell;->setWillNotDraw(Z)V

    invoke-virtual {p0, v2}, Lcom/android/launcher3/widget/view/WidgetCell;->setClipToPadding(Z)V

    return-void
.end method

.method private getTagToString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private setContainerWidth()V
    .locals 3

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mLauncher:Lcom/android/launcher3/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v0

    iget-object v1, v0, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v1}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellWidth()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x40266666    # 2.6f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->cellSize:I

    iget v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->cellSize:I

    int-to-float v1, v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mPresetPreviewSize:I

    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)V
    .locals 8

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher3/LauncherAppState;->getDeviceProfile()Lcom/android/launcher3/common/deviceprofile/DeviceProfile;

    move-result-object v1

    iput-object p1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mInfo:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/launcher3/common/compat/AppWidgetManagerCompat;->loadLabel(Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanX()I

    move-result v3

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountX()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/android/launcher3/common/model/LauncherAppWidgetProviderInfo;->getSpanY()I

    move-result v3

    iget-object v4, v1, Lcom/android/launcher3/common/deviceprofile/DeviceProfile;->homeGrid:Lcom/android/launcher3/common/deviceprofile/GridInfo;

    invoke-virtual {v4}, Lcom/android/launcher3/common/deviceprofile/GridInfo;->getCellCountY()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    return-void
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lcom/android/launcher3/widget/model/WidgetPreviewLoader;)V
    .locals 7

    const/4 v6, 0x1

    iput-object p2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mInfo:Ljava/lang/Object;

    invoke-virtual {p2, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object p3, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    return-void
.end method

.method public applyPreview(Ljava/lang/Object;Landroid/graphics/Bitmap;)V
    .locals 4

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    invoke-virtual {v1, p2}, Lcom/android/launcher3/widget/view/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/view/WidgetImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/view/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/view/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/widget/view/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    :cond_0
    return-void
.end method

.method public ensurePreview()V
    .locals 5

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->getPreviewSize()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetPreviewLoader:Lcom/android/launcher3/widget/model/WidgetPreviewLoader;

    iget-object v2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mInfo:Ljava/lang/Object;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lcom/android/launcher3/widget/model/WidgetPreviewLoader;->getPreview(Ljava/lang/Object;IILcom/android/launcher3/widget/view/PreviewLoadListener;)Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mActiveRequest:Lcom/android/launcher3/widget/model/WidgetPreviewLoader$PreviewLoadRequest;

    goto :goto_0
.end method

.method public getPreviewSize()[I
    .locals 3

    const/4 v1, 0x2

    new-array v0, v1, [I

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v1

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f110102

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/view/WidgetImageView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetImage:Lcom/android/launcher3/widget/view/WidgetImageView;

    const v0, 0x7f110100

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    const v0, 0x7f110101

    invoke-virtual {p0, v0}, Lcom/android/launcher3/widget/view/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/android/launcher3/widget/view/WidgetCell;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/widget/view/WidgetCell;->ensurePreview()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/widget/view/WidgetCell;->mStylusEventHelper:Lcom/android/launcher3/util/event/StylusEventHelper;

    invoke-virtual {v1, p1}, Lcom/android/launcher3/util/event/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
