.class public final Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/base/view/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CellInfo"
.end annotation


# instance fields
.field public cell:Landroid/view/View;

.field public cellX:I

.field public cellY:I

.field public container:J

.field public layout:Lcom/android/launcher3/common/base/view/CellLayout;

.field public screenId:J

.field public spanX:I

.field public spanY:I


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/android/launcher3/common/base/item/ItemInfo;)V
    .locals 2

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    iput-object p1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanX:I

    iget v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    iput v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->spanY:I

    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->screenId:J

    iget-wide v0, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->container:J

    iput-wide v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->container:J

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    iput-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->layout:Lcom/android/launcher3/common/base/view/CellLayout;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cell[view="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    if-nez v0, :cond_0

    const-string v0, "null"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/common/base/view/CellLayout$CellInfo;->cell:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
