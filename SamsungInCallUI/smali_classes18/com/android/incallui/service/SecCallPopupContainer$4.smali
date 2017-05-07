.class Lcom/android/incallui/service/SecCallPopupContainer$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->animateForToggleRejectMsg(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    const v4, 0x7f0902a8

    const v5, 0x7f0902a7

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v6, v2, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {v6, v2}, Lcom/android/incallui/RejectMsgContentPopup;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Lcom/android/incallui/RejectMsgContentPopup;->setTranslationY(F)V

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    iget-object v2, v2, Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgContent:Lcom/android/incallui/RejectMsgContentPopup;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-virtual {v2, v6}, Lcom/android/incallui/RejectMsgContentPopup;->setAlpha(F)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$800(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$900(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/PhoneModeUtils;->isTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v2, "support_spam_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f090138

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f09013a

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$800(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v3

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_1
    aput-object v2, v7, v8

    invoke-static {v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-void

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-virtual {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRejectMsgBtnContainer:Landroid/view/View;
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$800(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v6

    new-array v7, v7, [I

    const v2, 0x7f0902b2

    aput v2, v7, v3

    iget-object v2, p0, Lcom/android/incallui/service/SecCallPopupContainer$4;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsRejectMsgContentShowing:Z
    invoke-static {v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$700(Lcom/android/incallui/service/SecCallPopupContainer;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v4

    :goto_3
    aput v2, v7, v8

    invoke-static {v6, v7}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[I)V

    goto :goto_2

    :cond_5
    move v2, v5

    goto :goto_3
.end method
