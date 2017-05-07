.class Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;
.super Ljava/lang/Object;
.source "HomeItemPositionHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/home/HomeItemPositionHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CellPositionInfo"
.end annotation


# instance fields
.field screenId:J

.field spanX:I

.field spanY:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(JIIII)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    iput v0, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    iput-wide p1, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->screenId:J

    iput p3, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->x:I

    iput p4, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->y:I

    iput p5, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanX:I

    iput p6, p0, Lcom/android/launcher3/home/HomeItemPositionHelper$CellPositionInfo;->spanY:I

    return-void
.end method
