.class Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;
.super Landroid/media/AudioManager$AudioRecordingCallback;
.source "FanControlModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;


# direct methods
.method constructor <init>(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "onRecordingConfigChanged"

    invoke-static {v4, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v1, :cond_3

    :goto_2
    iget-object v6, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    if-gtz v1, :cond_5

    :cond_2
    move v4, v5

    :goto_3
    invoke-static {v6, v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$502(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;Z)Z

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v4}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$300(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel$3;->this$0:Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;

    invoke-static {v5}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$400(Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;)Z

    move-result v5

    invoke-interface {v4, v5}, Lcom/samsung/android/lib/dexcontrol/fancontrol/IDexFanControl;->setSystemRequest(Z)V

    goto :goto_0

    :cond_3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v4}, Landroid/media/AudioRecordingConfiguration;->getClientAudioSource()I

    move-result v0

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/model/common/FanControlModel;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "source : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x7

    if-eq v0, v4, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/4 v3, 0x1

    goto :goto_2

    :cond_5
    if-nez v3, :cond_2

    const/4 v4, 0x1

    goto :goto_3
.end method
