.class Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;
.super Ljava/lang/Object;
.source "WidgetFolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/widget/view/WidgetFolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationInfo"
.end annotation


# instance fields
.field location:[I

.field scaleBy:[F


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v4, [I

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    new-array v0, v4, [F

    iput-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v1, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->location:[I

    aput v1, v0, v3

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/launcher3/widget/view/WidgetFolder$AnimationInfo;->scaleBy:[F

    aput v2, v0, v3

    return-void
.end method
