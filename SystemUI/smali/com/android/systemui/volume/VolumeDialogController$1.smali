.class Lcom/android/systemui/volume/VolumeDialogController$1;
.super Ljava/lang/Object;
.source "VolumeDialogController.java"

# interfaces
.implements Landroid/hardware/display/SemDisplayVolumeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/volume/VolumeDialogController;-><init>(Landroid/content/Context;Landroid/content/ComponentName;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/VolumeDialogController;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/VolumeDialogController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVolumeChanged(IIIZ)V
    .locals 5

    const/4 v4, -0x1

    const/16 v3, 0xa

    invoke-static {}, Lcom/android/systemui/volume/VolumeDialogController;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[SmartView]onVolumeChanged curVol = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, v3}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap8(Lcom/android/systemui/volume/VolumeDialogController;I)Lcom/android/systemui/volume/VolumeDialogController$StreamState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/systemui/volume/VolumeDialogController$StreamState;->muted:Z

    if-eq v0, p4, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, v3, p4}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap6(Lcom/android/systemui/volume/VolumeDialogController;IZ)Z

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get1(Lcom/android/systemui/volume/VolumeDialogController;)Landroid/media/AudioManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->semGetFineVolume(I)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap19(Lcom/android/systemui/volume/VolumeDialogController;)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, p3}, Lcom/android/systemui/volume/VolumeDialogController;->-set0(Lcom/android/systemui/volume/VolumeDialogController;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, p1}, Lcom/android/systemui/volume/VolumeDialogController;->-set3(Lcom/android/systemui/volume/VolumeDialogController;I)I

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, p2}, Lcom/android/systemui/volume/VolumeDialogController;->-set2(Lcom/android/systemui/volume/VolumeDialogController;I)I

    sget-boolean v0, Lcom/android/systemui/volume/VolumeDialogController;->mIsVolumeDialogShowing:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)I

    move-result v0

    if-eq v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v1}, Lcom/android/systemui/volume/VolumeDialogController;->-get9(Lcom/android/systemui/volume/VolumeDialogController;)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    invoke-static {v0, v4}, Lcom/android/systemui/volume/VolumeDialogController;->-set4(Lcom/android/systemui/volume/VolumeDialogController;I)I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogController$1;->this$0:Lcom/android/systemui/volume/VolumeDialogController;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/systemui/volume/VolumeDialogController;->-wrap1(Lcom/android/systemui/volume/VolumeDialogController;II)Z

    goto :goto_0
.end method
