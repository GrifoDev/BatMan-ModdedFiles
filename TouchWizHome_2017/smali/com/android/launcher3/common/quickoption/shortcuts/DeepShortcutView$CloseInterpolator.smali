.class Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;
.super Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;
.source "DeepShortcutView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CloseInterpolator"
.end annotation


# instance fields
.field private mRemainingProgress:F

.field private mStartProgress:F


# direct methods
.method public constructor <init>(F)V
    .locals 2

    const/16 v0, 0x64

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;-><init>(II)V

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;->mStartProgress:F

    iput p1, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;->mRemainingProgress:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 3

    iget v0, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;->mStartProgress:F

    invoke-super {p0, p1}, Lcom/android/launcher3/util/animation/LogAccelerateInterpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Lcom/android/launcher3/common/quickoption/shortcuts/DeepShortcutView$CloseInterpolator;->mRemainingProgress:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method
