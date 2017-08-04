.class final Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$4;
.super Ljava/lang/Object;
.source "GyroForShadow.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$300()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-ltz v1, :cond_0

    invoke-static {p1}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$400(Landroid/hardware/SensorEvent;)V

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$500()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$600()F

    move-result v1

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$700()F

    move-result v2

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$800()F

    move-result v3

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$900()F

    move-result v4

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$1000()F

    move-result v5

    invoke-static {}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow;->access$1100()F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Lcom/android/launcher3/common/wallpaperscroller/GyroForShadow$VectorListener;->onVectorChanged(FFFFFF)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x1002b -> :sswitch_1
    .end sparse-switch
.end method
