.class Lcom/android/launcher3/allapps/controller/DragAppIcon;
.super Ljava/lang/Object;
.source "AppsDragController.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field cellX:I

.field cellY:I

.field rank:I

.field screenId:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method getScreenId()I
    .locals 4

    iget-wide v2, p0, Lcom/android/launcher3/allapps/controller/DragAppIcon;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->intValue()I

    move-result v1

    return v1
.end method
