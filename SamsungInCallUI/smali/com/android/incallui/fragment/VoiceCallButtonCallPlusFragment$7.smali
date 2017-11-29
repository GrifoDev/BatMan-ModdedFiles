.class Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->inflateInCallButtons(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "mPromotedButton onClick"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    check-cast p1, Landroid/widget/Button;

    const-string v0, "common_volte_in"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "hasFeature(InCallUIFeature.VOLTE.COMMON_VOLTE_IN): true"

    invoke-static {p0, v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-static {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->access$3000(Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment$7;->this$0:Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/VoiceCallButtonCallPlusFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {p1}, Landroid/widget/Button;->isSelected()Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/incallui/CallButtonPresenter;->promotedClicked(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
