.class Lcom/android/incallui/fragment/VoiceCallCardFragment$12;
.super Ljava/lang/Object;
.source "VoiceCallCardFragment.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/fragment/VoiceCallCardFragment;->setCallCardPriority(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

.field final synthetic val$observer:Landroid/view/ViewTreeObserver;

.field final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/android/incallui/fragment/VoiceCallCardFragment;ILandroid/view/ViewTreeObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    iput p2, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$type:I

    iput-object p3, p0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 30

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$type:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v25

    if-nez v25, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->isAdded()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v25

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-static/range {v25 .. v27}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Lcom/android/incallui/Call;->getState()I

    move-result v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->val$observer:Landroid/view/ViewTreeObserver;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string v25, "setCallCardPriority..."

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/view/View;->measure(II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallStateContainer:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getMeasuredHeight()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPrimaryNameLayout:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getHeight()I

    move-result v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallerInfoView:Lcom/android/incallui/fragment/view/CallCardCallerInfoView;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/view/CallCardCallerInfoView;->getERIHeight()I

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mPhotoContainer:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getHeight()I

    move-result v18

    const-wide/16 v4, 0x0

    const/16 v25, 0x8

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0x9

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_2

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a01ea

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v4, v0

    const/16 v25, 0x8

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a007d

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v4, v4, v26

    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mDisplayHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide v28, 0x3fdccccccccccccdL    # 0.45

    mul-double v10, v26, v28

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a0325

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f0a01da

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v25

    move/from16 v0, v25

    float-to-double v14, v0

    const/16 v25, 0x4

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_4

    const/16 v25, 0x6

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_5

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    if-eqz v25, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v25

    const/16 v26, 0x8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    const-wide/16 v14, 0x0

    :cond_5
    add-int v25, v23, v12

    add-int v25, v25, v19

    add-int v25, v25, v24

    add-int v25, v25, v13

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v16

    add-double v26, v26, v14

    int-to-double v0, v9

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-double v26, v26, v28

    sub-double v20, v10, v26

    const/16 v25, 0x8

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, 0x9

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_6

    add-double v20, v20, v4

    :cond_6
    const-string v25, "VoiceCallCardFragment"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, " remainArea "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    cmpg-double v25, v20, v4

    if-gtz v25, :cond_f

    if-eqz v13, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    int-to-double v0, v13

    move-wide/from16 v26, v0

    add-double v20, v20, v26

    const-string v25, "VoiceCallCardFragment"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "4th line is gone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    cmpg-double v25, v20, v4

    if-gtz v25, :cond_8

    if-eqz v24, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v20, v20, v26

    const-string v25, "VoiceCallCardFragment"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "3rd line is gone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    cmpg-double v25, v20, v4

    if-gtz v25, :cond_b

    if-nez v19, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    const-string v25, "VoiceCallCardFragment"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "2nd line is gone "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_2
    const-wide/16 v26, 0x0

    cmpg-double v25, v20, v26

    if-gtz v25, :cond_b

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v25

    if-eqz v25, :cond_b

    const/16 v25, 0x9

    move/from16 v0, v22

    move/from16 v1, v25

    if-eq v0, v1, :cond_a

    const/16 v25, 0xa

    move/from16 v0, v22

    move/from16 v1, v25

    if-ne v0, v1, :cond_b

    :cond_a
    const/4 v6, 0x4

    :cond_b
    :goto_3
    const-wide/16 v26, 0x0

    cmpg-double v25, v20, v26

    if-gtz v25, :cond_c

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->getInstance()Lcom/android/incallui/util/DesktopModeManager;

    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v25

    if-eqz v25, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    :cond_c
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/android/incallui/UiAdapter;->isInMultiWindowMode()Z

    move-result v25

    if-eqz v25, :cond_12

    if-nez v13, :cond_12

    if-nez v24, :cond_12

    if-nez v19, :cond_12

    const-wide/16 v26, 0x0

    cmpl-double v25, v20, v26

    if-lez v25, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    # invokes: Lcom/android/incallui/fragment/VoiceCallCardFragment;->arrangeBelowButtonLayout(I)V
    invoke-static {v0, v6}, Lcom/android/incallui/fragment/VoiceCallCardFragment;->access$500(Lcom/android/incallui/fragment/VoiceCallCardFragment;I)V

    goto/16 :goto_0

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mBelowButtonLayout:Landroid/view/View;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v4, v4, v26

    goto/16 :goto_1

    :cond_e
    const-wide/16 v26, 0x0

    cmpl-double v25, v4, v26

    if-eqz v25, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x4

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v26, v0

    add-double v26, v26, v20

    add-double v20, v20, v26

    const-string v25, "VoiceCallCardFragment"

    const-string v26, "2nd line is invisible "

    invoke-static/range {v25 .. v26}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_f
    if-eqz v13, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mForthPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    :cond_10
    if-eqz v24, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mThirdPriorityInfoLayout:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    :cond_11
    if-eqz v19, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabel:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment$12;->this$0:Lcom/android/incallui/fragment/VoiceCallCardFragment;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/incallui/fragment/VoiceCallCardFragment;->mCallNumberAndLabelDummy:Landroid/view/View;

    move-object/from16 v25, v0

    const/16 v26, 0x8

    invoke-virtual/range {v25 .. v26}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4
.end method
