.class public Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;
.super Lcom/android/incallui/fragment/VideoCallButtonFragment;
.source "VideoCallButtonVGAFragment.java"

# interfaces
.implements Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;
.implements Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallButtonVGAFragment"


# instance fields
.field protected mAcceptButton:Landroid/widget/Button;

.field protected mAcceptButtonContainer:Landroid/view/View;

.field protected mBottomBlendEffect:Landroid/view/View;

.field protected mButtonWrapper:Landroid/view/View;

.field protected mButtonWrapperBg:Landroid/view/View;

.field private mContainer:Landroid/view/ViewGroup;

.field protected mCurrentSecondaryCallName:Ljava/lang/String;

.field protected mDeclineButton:Landroid/widget/Button;

.field protected mDeclineButtonContainer:Landroid/view/View;

.field protected mHasNavigationBar:Z

.field protected mHideShowMeButton:Landroid/widget/ToggleButton;

.field protected mHideShowMeButtonViewStub:Landroid/view/ViewStub;

.field private mHoldCallBanner:Landroid/view/View;

.field private mHoldCallBannerStub:Landroid/view/ViewStub;

.field private mHoldCallBannerText:Landroid/widget/TextView;

.field private mHoldCallBannerView:Landroid/view/View;

.field protected mIsDeviceLandScape:Z

.field protected mIsFullScreenMode:Z

.field protected mIsPlayingCaptureAnimation:Z

.field protected mIsReadyToShowView:Z

.field protected mIsVoWifiEndButton:Z

.field protected mModifyCallButtonContainer:Landroid/view/View;

.field protected mModifyCallButtonView:Landroid/view/View;

.field protected mModifyCallButtonViewStub:Landroid/view/ViewStub;

.field protected mNeedMultiWindowLayout:Z

.field private mRootView:Landroid/view/View;

.field protected mVideoUXMode:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsDeviceLandScape:Z

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    return-void
.end method

.method private inflateHoldCallBanner()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1003b6

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerView:Landroid/view/View;

    const v1, 0x7f1003ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private needToReInflateLayout()Z
    .locals 6

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v3

    iput v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-ne v3, v1, :cond_0

    iget v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    if-eq v3, v2, :cond_3

    :cond_0
    iget v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    if-eq v3, v2, :cond_1

    const-string v3, "VideoCallButtonVGAFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReInflateLayout VideoUXMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    iget-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-eq v3, v1, :cond_2

    const-string v3, "VideoCallButtonVGAFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "needToReInflateLayout needMultiWindowLayout "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " > "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_3
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setButtonLayout(Z)V
    .locals 12

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v7, "VideoCallButtonVGAFragment"

    const-string v8, "setButtonLayout : Activity is null."

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-eqz v3, :cond_1

    move-object v7, v0

    check-cast v7, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/android/incallui/InCallActivity;->updateNavigationBarIconColor(I)V

    :cond_1
    move-object v7, v0

    check-cast v7, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v7}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsDeviceLandScape:Z

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    if-eqz v7, :cond_2

    if-eqz p1, :cond_c

    iget v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    invoke-virtual {v5, v7}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneLandscapeType(I)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0f01a4

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mBottomBlendEffect:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mBottomBlendEffect:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const/high16 v9, 0x7f0d0000

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    mul-int/2addr v7, v8

    div-int/lit16 v2, v7, 0x3e8

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    if-ge v2, v7, :cond_3

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v2, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    :cond_3
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mBottomBlendEffect:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    iput v7, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x106000d

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    if-eqz p1, :cond_5

    iget v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    invoke-virtual {v5, v7}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isPhoneLandscapeType(I)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f01a4

    const/4 v9, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v7, v8, v9, v10, v11}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasNavigationBarZone()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarWidth(Landroid/content/Context;)I

    move-result v6

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v7

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v6, v8, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    :cond_7
    :goto_2
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->width:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    iput v7, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_8
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    iget-object v8, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v8, v8, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height:I

    invoke-virtual {v7, v8}, Landroid/view/View;->setMinimumHeight(I)V

    iget-object v7, v5, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    iput v7, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v7, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsDeviceLandScape:Z

    if-nez v7, :cond_a

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v7

    if-eqz v7, :cond_e

    :cond_a
    const/4 v7, 0x1

    invoke-static {v0, v7}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_b
    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    goto/16 :goto_0

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x106000d

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_1

    :cond_d
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v6, v10}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_2

    :cond_e
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    if-nez v7, :cond_f

    const/4 v7, 0x1

    :goto_4
    invoke-static {v0, v7}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto :goto_3

    :cond_f
    const/4 v7, 0x0

    goto :goto_4
.end method

.method private updateHoldCallBanner()V
    .locals 9

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    if-eqz v4, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallButtonPresenter;->getCall()Lcom/android/incallui/Call;

    move-result-object v4

    invoke-static {v7, v4, v5}, Lcom/android/incallui/util/VideoCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const-string v7, "VideoCallButtonVGAFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateHoldCallBanner secondary "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_4

    move v4, v5

    :goto_0
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const/4 v3, 0x0

    :cond_0
    if-eqz v3, :cond_6

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/UiAdapter;->getCurrentSecondaryCallName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, "Other party"

    iput-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    if-eqz v4, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090315

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    invoke-virtual {v4, v5, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBannerText:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    invoke-static {v4, v3}, Lcom/android/incallui/util/VideoAnimator;->setSecondaryBannerFullScreen(Landroid/view/View;Z)V

    :cond_3
    return-void

    :cond_4
    move v4, v6

    goto :goto_0

    :cond_5
    move v3, v6

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHoldCallBanner:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method


# virtual methods
.method protected addButtonFragmentView()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateButtonFragmentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : ButtonFragment view is null."

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->onFinishInflate(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v2, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiReady(Lcom/android/incallui/CallButtonUi;)V

    goto :goto_0

    :cond_1
    const-string v2, "VideoCallButtonVGAFragment"

    const-string v3, "addButtonFragmentView : Top view is null."

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public animateForMoveDialpad(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method protected arrangeModifyButtonLayoutForNavigator()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V

    :cond_0
    return-void
.end method

.method protected arrangeModifyButtonLayoutForNavigator(Landroid/view/ViewStub;)V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v6, "VideoCallButtonVGAFragment"

    const-string v7, "arrangeModifyButtonLayoutForNavigator"

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v6, "VideoCallButtonVGAFragment"

    const-string v7, "arrangeModifyButtonLayoutForNavigator : Activity is null."

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v6, "VideoCallButtonVGAFragment"

    const-string v7, "arrangeModifyButtonLayoutForNavigator : metrics is null."

    invoke-static {v6, v7, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/util/ScreenControlUtils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v5

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v6, :cond_4

    iget v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->heightPixels:I

    mul-int/lit8 v6, v6, 0x3

    div-int/lit8 v2, v6, 0x64

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-nez v6, :cond_3

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v2, 0x0

    :cond_3
    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iput v2, v4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v6, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-nez v6, :cond_0

    invoke-virtual {p1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout$LayoutParams;

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    if-eqz v6, :cond_5

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v6, v6, Lcom/android/incallui/service/vt/VideoButtonMetrics;->bottom_offset:I

    iput v6, v4, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    :cond_5
    :goto_1
    invoke-virtual {p1, v4}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isLeftHandRotation()Z

    move-result v6

    if-eqz v6, :cond_7

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    goto :goto_1

    :cond_7
    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isRightHandRotation()Z

    move-result v6

    if-eqz v6, :cond_5

    iput v5, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    goto :goto_1
.end method

.method protected checkAndHandleCancelButton(Lcom/android/incallui/Call;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getVideoState()I

    move-result v1

    invoke-static {p1, v1}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(Lcom/android/incallui/Call;I)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    :cond_2
    return-void
.end method

.method protected clickedHideMe()V
    .locals 0

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_hideMe()V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendStillImage()V

    return-void
.end method

.method protected clickedShowMe()V
    .locals 1

    invoke-static {}, Lcom/android/incallui/util/VideoCallAppLogging;->duringCallMenu_showMe()V

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f0900c6

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->displayToast(I)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallControl;->sendLiveVideo()V

    goto :goto_0
.end method

.method protected enableModifyCallButtons(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected enableSwitchCamera(Z)V
    .locals 8

    const/4 v6, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-static {v5, v6, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v3, "VideoCallButtonVGAFragment"

    const-string v4, "enableSwitchCamera call is null."

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/incallui/Call;->getVideoDetails()Lcom/android/incallui/service/vt/VideoDetails;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoDetails;->isPreviewReady()Z

    move-result v2

    const-string v5, "VideoCallButtonVGAFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableSwitchCamera previewReady : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " enabled : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " captureAnimation : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    iget-boolean v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    if-nez v5, :cond_3

    if-eqz p1, :cond_3

    move p1, v4

    :goto_1
    if-eqz p1, :cond_6

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_2

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    move v1, v4

    :goto_2
    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-nez v5, :cond_5

    const-string v4, "VideoCallButtonVGAFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableSwitchCamera isHold : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move p1, v3

    goto :goto_1

    :cond_4
    move v1, v3

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :cond_6
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0
.end method

.method protected inflateButtonFragmentView()Landroid/view/View;
    .locals 7

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v4, "inflateButtonFragmentView : Activity is null."

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    :goto_0
    return-object v1

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    if-nez v4, :cond_1

    const-string v4, "inflateButtonFragmentView : View container is null."

    invoke-static {p0, v4, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToMultiWindowLayout()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsDeviceLandScape:Z

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v4

    iput v4, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoUXMode:I

    const v4, 0x7f040123

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v2, v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    goto :goto_0
.end method

.method protected inflateHideShowMeButtonStub(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f1003ae

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButtonViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_0
    const v0, 0x7f1003ed

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    return-void
.end method

.method protected needToEnableHideShowMeButton()Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    const/4 v4, 0x6

    if-ne v1, v4, :cond_2

    :cond_0
    const/4 v2, 0x1

    :cond_1
    :goto_0
    return v2

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method protected needToEnableSpeakerButton()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method protected needToMultiWindowLayout()Z
    .locals 6

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "VideoCallButtonVGAFragment"

    const-string v5, "needToMultiWindowLayout : Activity is null."

    invoke-static {v2, v5, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getVideoUXMode()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/service/vt/VideoCallMetrics;->hasMultiWindowType(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v4

    :goto_1
    move v3, v2

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onClick(Landroid/view/View;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/VideoCallUtils;->getCallForVT(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    sparse-switch v1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const-string v2, "Accept MocifyCall TwoWay Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    const-string v2, "support_nsri_secure"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUISystemDB;->isNsriSecureCallMode()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    invoke-static {v0, v2}, Lcom/android/incallui/service/vt/VideoCallControl;->sendSessionModifyResponse(Lcom/android/incallui/Call;I)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableModifyCallButtons(Z)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_accept(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_1
    const-string v2, "Stay on Voice Clicked"

    invoke-static {v2}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->checkAndHandleCancelButton(Lcom/android/incallui/Call;)V

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableModifyCallButtons(Z)V

    invoke-static {v0}, Lcom/android/incallui/util/VideoCallAppLogging;->modify_decline(Lcom/android/incallui/Call;)V

    goto :goto_0

    :sswitch_2
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedHideMe()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->clickedShowMe()V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f1003ed -> :sswitch_2
        0x7f1003fb -> :sswitch_0
        0x7f1003fd -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->arrangeModifyButtonLayoutForNavigator()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateModifyButtonColor()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    iput-object p2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0400bf

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onDestroyView()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->removeButtonFragmentView()V

    return-void
.end method

.method protected onEndCallButtonClicked()V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getCallCounts()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isAliveVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "EndCall Clicked on last call"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate(Landroid/view/View;)V
    .locals 2

    const v0, 0x7f100267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonIndicatorArea()V

    const v0, 0x7f100387

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const v0, 0x7f100388

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtons:Landroid/view/View;

    const v0, 0x7f100389

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapper:Landroid/view/View;

    const v0, 0x7f1003ac

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    const v0, 0x7f1003ad

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mBottomBlendEffect:Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateFullscreenMode(Z)V

    const v0, 0x7f10038c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f10009d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    const v0, 0x7f100099

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v0, 0x7f10038d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f100098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateMuteButton()V

    :cond_4
    const v0, 0x7f10038e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    new-instance v1, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;

    invoke-direct {v1, p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment$1;-><init>(Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    :cond_5
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v0

    if-eqz v0, :cond_7

    const v0, 0x7f1003b7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mLeftArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    const v0, 0x7f1003b8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRightArrowButton:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->inflateHoldCallBanner()V

    iput-object p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallNotifier;->addVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onMultiWindowModeChanged(Z)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMultiWindowModeChanged "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->button(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    :cond_0
    return-void
.end method

.method public onSystemUiVisibilityChange(I)V
    .locals 3

    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSystemUiVisibilityChange "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " visibility "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoCallMetricsChagned(Lcom/android/incallui/service/vt/VideoCallMetrics;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToReInflateLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->arrangeModifyButtonLayoutForNavigator()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    goto :goto_0
.end method

.method public onVideoCallUiEvent(I)V
    .locals 2

    const/4 v1, 0x0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_1
    iput-boolean v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_2
        0xc8 -> :sswitch_0
        0xc9 -> :sswitch_1
    .end sparse-switch
.end method

.method public onVideoSessionEvent(ILcom/android/incallui/Call;)V
    .locals 1

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/util/ScreenControlUtils;->hasNavigationBar(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHasNavigationBar:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->addButtonFragmentView()V

    return-void
.end method

.method protected removeButtonFragmentView()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallMetricsListener(Lcom/android/incallui/InCallNotifier$VideoCallMetricsListener;)V

    invoke-static {}, Lcom/android/incallui/InCallNotifier;->getInstance()Lcom/android/incallui/InCallNotifier;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/incallui/InCallNotifier;->removeVideoCallUiEventListener(Lcom/android/incallui/InCallNotifier$VideoCallUiEventListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButtonArea:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSwitchCameraButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v2}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsPlayingCaptureAnimation:Z

    iput-boolean v3, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsVoWifiEndButton:Z

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_7

    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeButtonFragmentView"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v1, p0}, Lcom/android/incallui/CallButtonPresenter;->onUiUnready(Lcom/android/incallui/CallButtonUi;)V

    return-void

    :cond_7
    const-string v1, "VideoCallButtonVGAFragment"

    const-string v2, "removeAnswerFragmentView : Top view is null."

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public returnButtonsForDialpad(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->setButtonLayout(Z)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonFragment;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToEnableSpeakerButton()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHideShowMeButton()V

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSupportedAudio(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateSpeakerButton()V

    return-void
.end method

.method protected updateButtonAreaVisibility(Z)V
    .locals 13

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-nez v10, :cond_1

    move v4, v8

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v9, "VideoCallButtonVGAFragment"

    const-string v10, "updateButtonAreaVisibility : Activity is null."

    invoke-static {v9, v10, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    move v4, v9

    goto :goto_0

    :cond_2
    check-cast v0, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isOrientationLandscapeInMultiWindow()Z

    move-result v10

    if-eqz v10, :cond_7

    move v3, v8

    :goto_2
    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v6

    sget v7, Lcom/android/incallui/service/vt/SecVideoState;->VIDEO_NONE:I

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/SecCall;->isConferecedVideoRx()Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v1, 0x1

    const-string v10, "VideoCallButtonVGAFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateButtonAreaVisibility : Conferenced Call is not alive."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v6}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_3
    invoke-virtual {v6}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v7

    :cond_4
    if-nez v4, :cond_6

    if-eqz v3, :cond_5

    if-nez p1, :cond_6

    :cond_5
    if-nez v1, :cond_6

    invoke-static {v7}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v10

    if-eqz v10, :cond_8

    :cond_6
    move v2, v8

    :goto_3
    iget-object v10, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v10, :cond_0

    const-string v10, "VideoCallButtonVGAFragment"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateButtonAreaVisibility : isGone = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz v2, :cond_9

    iget-object v8, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_7
    move v3, v9

    goto :goto_2

    :cond_8
    move v2, v9

    goto :goto_3

    :cond_9
    iget-object v8, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public updateButtonsAsVideoState(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(IZ)V

    return-void
.end method

.method public updateButtonsAsVideoState(IZ)V
    .locals 4

    const/16 v3, 0x8

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    if-eqz v0, :cond_0

    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    if-ne p1, v0, :cond_1

    :cond_0
    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtonsAsVideoState return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsReadyToShowView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateButtonsAsVideoState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isTwoWayVideo(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyRequest(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateGeneralButtons(I)V

    :cond_3
    :goto_1
    iput p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mVideoState:I

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasModifyReceive(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateModifyReceiveVoiceToVideo()V

    goto :goto_1

    :cond_5
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->isNoVideo(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public updateButtonsAsVideoState(Lcom/android/incallui/Call;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/SecCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/SecCall;->getSecVideoState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonsAsVideoState(I)V

    :cond_0
    return-void
.end method

.method public updateCallButtons(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-ne v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableSwitchCamera(Z)V

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateEndCallButtonColor(Lcom/android/incallui/Call;)V

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateEndCallButtonColor(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v2, 0x7f0201b8

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f011c

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const v2, 0x7f0201b7

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mEndCallButton:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0f011b

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public updateFullscreenMode(Z)V
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x1

    const-string v2, "VideoCallButtonVGAFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateFullscreenMode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " > "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v2, "VideoCallButtonVGAFragment"

    const-string v4, "updateFullscreenMode : Activity is null."

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return-void

    :cond_0
    move-object v2, v0

    check-cast v2, Lcom/android/incallui/InCallActivity;

    invoke-virtual {v2}, Lcom/android/incallui/InCallActivity;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    iget-object v6, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mButtonWrapperBg:Landroid/view/View;

    iget-object v2, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v7, v2, Lcom/android/incallui/service/vt/VideoButtonMetrics;->height_with_offset:I

    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    if-eq v2, p1, :cond_3

    move v2, v3

    :goto_1
    invoke-static {v5, v6, v7, p1, v2}, Lcom/android/incallui/util/VideoAnimator;->setButtonFullScreen(Landroid/view/View;Landroid/view/View;IZZ)V

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isDeviceLandScape()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_1
    invoke-static {v0, v3}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    :cond_2
    :goto_2
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateHoldCallBanner()V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsFullScreenMode:Z

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :cond_4
    iget-boolean v2, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mNeedMultiWindowLayout:Z

    if-nez v2, :cond_2

    if-nez p1, :cond_5

    :goto_3
    invoke-static {v0, v3}, Lcom/android/incallui/util/ScreenControlUtils;->showNavigationBar(Landroid/app/Activity;Z)V

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method protected updateGeneralButtons(I)V
    .locals 4

    const/16 v3, 0x8

    const-string v0, "VideoCallButtonVGAFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateGeneralButtons: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    invoke-static {p1}, Lcom/android/incallui/service/vt/SecVideoState;->hasIncoming(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->isDialpadVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->updateButtonAreaVisibility(Z)V

    goto :goto_0
.end method

.method protected updateHideShowMeButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/vt/VideoCallManager;->isLivePreview()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mHideShowMeButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/incallui/util/VideoCallUtils;->isCameraRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->needToEnableHideShowMeButton()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateModifyButtonColor()V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mIsDeviceLandScape:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f01a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method

.method protected updateModifyReceiveVoiceToVideo()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, "VideoCallButtonVGAFragment"

    const-string v1, "updateModifyReceiveVoiceToVideo"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mModifyCallButtonView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mInCallButtonContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mAcceptButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->mDeclineButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallButtonVGAFragment;->enableModifyCallButtons(Z)V

    return-void
.end method
