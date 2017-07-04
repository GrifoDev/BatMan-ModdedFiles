.class Lcom/android/incallui/CallCardPresenter$1;
.super Landroid/os/Handler;
.source "CallCardPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/CallCardPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/CallCardPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/CallCardPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    iget v5, p1, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;

    if-eqz v2, :cond_0

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    iget-object v6, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->callId:Ljava/lang/String;

    iget-object v7, v2, Lcom/android/incallui/sns/SecLinkedInHelper$LinkedinCookieWrapper;->entry:Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-static {v5, v6, v7}, Lcom/android/incallui/CallCardPresenter;->access$100(Lcom/android/incallui/CallCardPresenter;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardUi;

    if-eqz v4, :cond_0

    if-eqz v3, :cond_1

    iget-object v5, v3, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->call:Lcom/android/incallui/Call;

    iget-boolean v6, v3, Lcom/android/incallui/smartcall/SmartCallUtil$SmartCallCookieWrapper;->isTimeout:Z

    invoke-interface {v4, v5, v6}, Lcom/android/incallui/CallCardUi;->updateSmartCallInfo(Lcom/android/incallui/Call;Z)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    goto :goto_0

    :pswitch_2
    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/android/incallui/CallCardPresenter;->access$400(Lcom/android/incallui/CallCardPresenter;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/incallui/Call;

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    if-eqz v5, :cond_0

    if-eqz v1, :cond_2

    iget-object v5, p0, Lcom/android/incallui/CallCardPresenter$1;->this$0:Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardUi;

    invoke-interface {v5, v1}, Lcom/android/incallui/CallCardUi;->updateSpamCallInfo(Lcom/android/incallui/Call;)V

    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->getActivity()Lcom/android/incallui/InCallActivity;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
