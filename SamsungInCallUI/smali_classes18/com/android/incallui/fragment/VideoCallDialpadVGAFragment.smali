.class public Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;
.super Lcom/android/incallui/fragment/DialpadFragment;
.source "VideoCallDialpadVGAFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;


# instance fields
.field protected mBottomArea:Landroid/view/View;

.field protected mHasNavigationBar:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/DialpadFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHasNavigationBar:Z

    return-void
.end method


# virtual methods
.method public getSavedDtmfText()Ljava/lang/String;
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mSavedDtmfText:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mSavedDtmfText:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDtmfText() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getDtmfText()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSavedDtmfText from EditText : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getViewId()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    const v1, 0x7f100298

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    const v1, 0x7f10040b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    :goto_0
    return-void

    :cond_1
    const-string v0, "getViewId : parent view is null."

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v4, "needToMultiWindowLayout : Activity is null."

    invoke-static {p0, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v4

    if-eqz v4, :cond_3

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_2
    move v2, v3

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_4
    move v3, v2

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/DialpadFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const/4 v2, 0x0

    const-string v1, "onCreateView()..."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIsVGAVideoDialpad:Z

    const-string v1, "support_folder_single_lcd"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const v1, 0x7f0400db

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToMultiWindowLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f040162

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const v1, 0x7f040165

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const v1, 0x7f04015c

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-super {p0}, Lcom/android/incallui/fragment/DialpadFragment;->onDestroyView()V

    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupLayout()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/DialpadFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHasNavigationBar:Z

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    return-void
.end method

.method public setPrimaryCallMenuForDialpad(Z)V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuIcon:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mOnScreenMenuBtn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :cond_1
    const-string v0, "tablet_device"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToShowVolumeButton()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->showVolumeButton(Z)V

    :cond_2
    return-void
.end method

.method public setupDialpadKeyButton(Lcom/android/phone/common/dialpad/DialpadKeyButton;I)V
    .locals 13

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v11, "setupDialpadKeyButton : Activity is null."

    const/4 v12, 0x1

    invoke-static {p0, v11, v12}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v11, "setupDialpadKeyButton"

    invoke-static {p0, v11}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v3

    invoke-virtual {v7}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v10

    const v11, 0x7f100322

    invoke-virtual {p1, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v11

    if-eqz v11, :cond_4

    const/4 v11, -0x1

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    const/4 v11, 0x1

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const v11, 0x7f10010c

    invoke-virtual {p1, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    const/4 v9, 0x0

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/widget/TextView;->getId()I

    move-result v9

    invoke-virtual {v8}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v11

    if-eqz v11, :cond_5

    const/16 v11, 0x10

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v11, -0x2

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    :goto_2
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    const v11, 0x7f10010d

    invoke-virtual {p1, v11}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {v7, v10}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhonePortraitType(I)Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a05ee

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v11

    float-to-int v4, v11

    const/16 v11, 0x11

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v11, 0x3

    invoke-virtual {v6, v11, v9}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iput v4, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    :cond_4
    const/4 v11, -0x1

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    mul-int/lit8 v11, p2, 0x5

    div-int/lit8 v11, v11, 0x64

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto/16 :goto_1

    :cond_5
    const/16 v11, 0xa

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0x10

    invoke-virtual {v6, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v11, -0x1

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v11, 0x11

    invoke-virtual {v8, v11}, Landroid/widget/TextView;->setGravity(I)V

    goto :goto_2

    :cond_6
    const/4 v11, 0x3

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xe

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->removeRule(I)V

    const/16 v11, 0xf

    invoke-virtual {v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v11, 0x11

    invoke-virtual {v6, v11, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    const/4 v11, 0x0

    iput v11, v6, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    goto :goto_3
.end method

.method public setupLayout()V
    .locals 32

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getViewId()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_0

    const-string v27, "setupLayout : Activity is null."

    const/16 v28, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    check-cast v5, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v5}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v18

    if-nez v18, :cond_1

    const-string v27, "setupLayout : VideoCallMetrics is null."

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->needToMultiWindowLayout()Z

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v22

    check-cast v22, Landroid/widget/FrameLayout;

    if-eqz v22, :cond_2

    invoke-virtual/range {v22 .. v22}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v23

    check-cast v23, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v27, 0x50

    move/from16 v0, v27

    move-object/from16 v1, v23

    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual/range {v22 .. v23}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    invoke-virtual/range {v27 .. v31}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v27

    if-eqz v27, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v20

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v27

    if-eqz v27, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v20

    move/from16 v2, v28

    move/from16 v3, v29

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/incallui/util/DesktopModeManager;->isDesktopMode()Z

    move-result v27

    if-nez v27, :cond_7

    if-nez v15, :cond_7

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    move/from16 v28, v0

    move/from16 v0, v27

    move/from16 v1, v28

    if-ge v0, v1, :cond_7

    const/16 v21, 0x1

    :goto_2
    if-eqz v21, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0004

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    :goto_3
    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->widthPixels:I

    move/from16 v27, v0

    mul-int v27, v27, v26

    move/from16 v0, v27

    div-int/lit16 v0, v0, 0x3e8

    move/from16 v25, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a05f5

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v25

    move/from16 v1, v17

    if-le v0, v1, :cond_4

    move/from16 v25, v17

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/incallui/widget/DialpadView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    const-string v27, "support_folder_single_lcd"

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-eqz v27, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a00e1

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lcom/android/incallui/widget/DialpadView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {v18 .. v18}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneLandscapeType()Z

    move-result v27

    if-eqz v27, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x106000d

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    :goto_4
    const/16 v27, 0xc

    move/from16 v0, v27

    new-array v7, v0, [I

    fill-array-data v7, :array_0

    const/4 v14, 0x0

    :goto_5
    array-length v0, v7

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v14, v0, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    aget v28, v7, v14

    invoke-virtual/range {v27 .. v28}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    div-int/lit8 v27, v25, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v8, v1}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->setupDialpadKeyButton(Lcom/android/phone/common/dialpad/DialpadKeyButton;I)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mView:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    move/from16 v2, v29

    move/from16 v3, v20

    move/from16 v4, v30

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    goto/16 :goto_1

    :cond_7
    const/16 v21, 0x0

    goto/16 :goto_2

    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d0003

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v26

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpadView:Lcom/android/incallui/widget/DialpadView;

    move-object/from16 v27, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    const v29, 0x7f0f01a5

    invoke-virtual/range {v28 .. v29}, Landroid/content/res/Resources;->getColor(I)I

    move-result v28

    invoke-virtual/range {v27 .. v28}, Lcom/android/incallui/widget/DialpadView;->setBackgroundColor(I)V

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_c

    const-string v27, "support_folder_single_lcd"

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v27

    if-nez v27, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a0356

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v10, v0

    if-eqz v15, :cond_14

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d006b

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    mul-int v27, v27, v13

    move/from16 v0, v27

    div-int/lit16 v10, v0, 0x3e8

    const/16 v27, -0x1

    move/from16 v0, v27

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a05e7

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v10, v0, :cond_b

    move/from16 v10, v19

    :cond_b
    iput v10, v11, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDigitContainer:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_10

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v16

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "setupLayout() isMobileKeyboard : "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    move-object/from16 v28, v0

    if-eqz v16, :cond_15

    const/16 v27, 0x8

    :goto_7
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->showSoftInput()V

    if-nez v16, :cond_d

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->hideSoftInput()V

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d006c

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    move/from16 v27, v0

    mul-int v27, v27, v13

    move/from16 v0, v27

    div-int/lit16 v12, v0, 0x3e8

    if-eqz v15, :cond_e

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0d006d

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v13

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    move/from16 v27, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/incallui/service/vt/VideoCardMetrics;->call_state_default_height:I

    move/from16 v28, v0

    sub-int v27, v27, v28

    mul-int v27, v27, v13

    move/from16 v0, v27

    div-int/lit16 v12, v0, 0x3e8

    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a05f4

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v27

    move/from16 v0, v27

    float-to-int v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v12, v0, :cond_f

    move/from16 v12, v19

    :cond_f
    iput v12, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move/from16 v0, v25

    iput v0, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDialpad:Landroid/view/View;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    move-object/from16 v27, v0

    if-eqz v27, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mDtmfDialerField:Landroid/widget/EditText;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/widget/EditText;->setFocusable(Z)V

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    if-eqz v27, :cond_17

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0a05ec

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    move/from16 v1, v24

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/GraphicResourceUtils;->setRippleSize(Landroid/view/View;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mHideButton:Landroid/widget/ImageView;

    move-object/from16 v28, v0

    if-eqz v15, :cond_16

    const/16 v27, 0x0

    :goto_8
    move-object/from16 v0, v28

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mMenuContainer:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mElapsedTimeContainer:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    move-object/from16 v27, v0

    if-eqz v27, :cond_19

    if-eqz v15, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x8

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_14
    move/from16 v0, v25

    iput v0, v11, Landroid/widget/LinearLayout$LayoutParams;->width:I

    goto/16 :goto_6

    :cond_15
    const/16 v27, 0x0

    goto/16 :goto_7

    :cond_16
    const/16 v27, 0x8

    goto :goto_8

    :cond_17
    const-string v27, "setupLayout : mHideButton is null."

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto :goto_9

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    move/from16 v27, v0

    move/from16 v0, v27

    iput v0, v6, Landroid/widget/LinearLayout$LayoutParams;->height:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mBottomArea:Landroid/view/View;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-virtual/range {v27 .. v28}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :cond_19
    const-string v27, "setupLayout : mBottomArea is null."

    invoke-static/range {v27 .. v27}, Lcom/android/incallui/service/vt/VideoCallLog;->error(Ljava/lang/String;)V

    goto/16 :goto_0

    :array_0
    .array-data 4
        0x7f100112
        0x7f10010e
        0x7f100104
        0x7f100105
        0x7f100106
        0x7f100107
        0x7f100108
        0x7f100109
        0x7f10010a
        0x7f10010b
        0x7f100111
        0x7f100110
    .end array-data
.end method

.method public showIndicator(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallDialpadVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    return-void
.end method
