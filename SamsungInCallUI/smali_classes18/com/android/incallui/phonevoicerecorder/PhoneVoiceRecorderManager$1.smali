.class Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;
.super Landroid/os/Handler;
.source "PhoneVoiceRecorderManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;


# direct methods
.method constructor <init>(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v2, "PhoneVoiceRecorderManager"

    const-string v3, "RECORD_INFO_STATE_CHANGED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    invoke-virtual {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->onRecorderStateChanged()V

    goto :goto_0

    :sswitch_1
    iget-object v2, p0, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager$1;->this$0:Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;

    # invokes: Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->getContext()Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;->access$000(Lcom/android/incallui/phonevoicerecorder/PhoneVoiceRecorderManager;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_0
        0x12d -> :sswitch_1
    .end sparse-switch
.end method
