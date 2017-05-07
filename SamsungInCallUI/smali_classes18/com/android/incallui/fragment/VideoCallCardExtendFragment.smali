.class public Lcom/android/incallui/fragment/VideoCallCardExtendFragment;
.super Lcom/android/incallui/fragment/VideoCallCardBaseFragment;
.source "VideoCallCardExtendFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCallCardExtendFragment"


# instance fields
.field protected mDowngradeButton:Landroid/widget/ImageButton;

.field protected mDowngradeStub:Landroid/view/ViewStub;

.field private mEriCallInfoStub:Landroid/view/ViewStub;

.field private mEriCallInfoText:Landroid/widget/TextView;

.field mIsFullScreenMode:Z

.field private mJanskyIcon:Landroid/widget/ImageView;

.field private mOnholdLayoutForwardSlash:Landroid/widget/TextView;

.field private mOnholdLayoutText:Landroid/widget/TextView;

.field private mOnholdStub:Landroid/view/ViewStub;

.field private mSecondaryDiver:Landroid/view/View;

.field private mSecondaryElapsedTime:Landroid/widget/TextView;

.field private mSecondaryElapsedTimeLayout:Landroid/view/View;

.field private mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

.field private mSecondaryElapsedTimeView:Landroid/view/View;

.field private mSecondaryForwardSlash:Landroid/widget/TextView;

.field private mVideoBannerText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;-><init>()V

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    return-void
.end method

.method private hasJanskyInfo()Z
    .locals 4

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineName:Ljava/lang/String;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method private inflateEriCallInfoLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100369

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002ac

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateSecondaryElapsedTime()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10036c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100315

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f10044b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeView:Landroid/view/View;

    const v1, 0x7f10044c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateVideoBanner()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10036d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f1003a8

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f1003a9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerView:Landroid/view/View;

    const v1, 0x7f1003aa

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    :cond_1
    return-void
.end method

.method private inflateVolteOnholdLayout()V
    .locals 3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100324

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0f0190

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100325

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100326

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method private isPossibleToShowHoldText(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->isAlive(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private remindDummyBanner(I)V
    .locals 1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/VideoBanner;->getMessageForVideoState(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showVideoStateMessageUi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setPrimaryBanner()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->canUpdateUI(Lcom/android/incallui/Call;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "setPrimaryBanner : cannot update ui - none videostate"

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-nez v5, :cond_2

    const-string v5, "VideoCallCardExtendFragment"

    const-string v6, "setPrimaryBanner : Activity is null."

    invoke-static {v5, v6, v7}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V

    sget-boolean v5, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_PRIMARY_VIDEO_TYPE_ICON:Z

    if-eqz v5, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoTypeIcon(Lcom/android/incallui/Call;)V

    :cond_3
    sget-boolean v5, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_NOTIFY_VIDEO_QUALITY:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/service/vt/VideoCallManager;->isLowQuality()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateLowQualityInfo(Z)V

    :cond_4
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/VideoBanner;->isModifyVideoBannerType()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "VideoCallCardExtendFragment"

    const-string v6, "setPrimaryBanner does not set modify message "

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v5

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    :cond_5
    const-string v5, "us_show_on_hold"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateOnholdStub()V

    :cond_6
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-eqz v5, :cond_8

    :cond_7
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateEriCallInfoText(Lcom/android/incallui/Call;)V

    :cond_8
    invoke-virtual {v3}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isJpnUX()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isExistsSuguden()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_a

    if-eq v4, v8, :cond_9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingRejectedCall()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isIncomingMissedCall()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_9
    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->hide_status:Z

    if-eqz v5, :cond_f

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    :goto_1
    const-string v5, "jansky_info_for_tmo"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateJanskyInfo()V

    :cond_b
    const-string v5, "cnap_supplementary_service"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateCnapVisibleForCallState(I)V

    :cond_c
    const-string v5, "cdnip_supplementary_service"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual {p0, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateCdnipVisibleForCallState(I)V

    :cond_d
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v5

    if-nez v5, :cond_e

    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateDowngradeButton(Lcom/android/incallui/Call;)V

    :cond_e
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVTManageButton(Lcom/android/incallui/Call;)V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateFullscreenMode(Z)V

    iget v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoUXMode:I

    invoke-static {v5}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasTabletType(I)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateCallStateBgColor(Z)V

    goto/16 :goto_0

    :cond_f
    if-eq v4, v8, :cond_a

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method private setSecondaryBanner()V
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->isMultipartyCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isModifyProgressing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->needToShowMultiparty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryContainer(Lcom/android/incallui/Call;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showCallInfoContainer(Z)V
    .locals 5

    const/16 v2, 0x8

    move v1, p1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v3}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v3

    if-ne v3, v2, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :cond_2
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v2, :cond_3

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showCallInfoContainer - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_3
    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/incallui/UiAdapter;->updateSwitchButtonLayout(Z)V

    return-void
.end method

.method private updateDowngradeButton(Lcom/android/incallui/Call;)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isTheOtherPartyOnHold()Z

    move-result v1

    if-nez v1, :cond_0

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    :cond_0
    const-string v1, "VideoCallCardExtendFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateDowngradeButton - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateEriCallInfoText(Lcom/android/incallui/Call;)V
    .locals 5

    const/16 v1, 0x8

    const/4 v3, 0x4

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    if-eq v0, v3, :cond_0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_4

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    if-ne v0, v3, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01b1

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v1, 0x0

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mEriCallInfoText visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;Z)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mEriCallInfoText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateOnholdStub()V
    .locals 3

    const/16 v2, 0x11

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const v1, 0x7f1001a9

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x7f1001a3

    invoke-virtual {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    goto :goto_0
.end method

.method private updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_3
    const-string v1, "us_show_on_hold"

    invoke-static {v1}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isPossibleToShowHoldText(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mOnholdLayoutText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    if-eq v4, v0, :cond_5

    if-ne v2, v0, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v2, v0, :cond_6

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    if-eq v4, v0, :cond_9

    if-ne v2, v0, :cond_b

    :cond_9
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    if-ne v2, v0, :cond_a

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorOnHold:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mTextColorDefault:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateSecondaryButton(Lcom/android/incallui/Call;)V
    .locals 7

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {p1, v2}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    const-string v2, "support_merge_call"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    const-string v2, "VideoCallCardExtendFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateMultipartyCallButtons - canSwap="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - canMerge="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CDMA()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    :cond_4
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v2, :cond_6

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v1, :cond_7

    move v2, v3

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_6
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    :goto_2
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_7
    move v2, v4

    goto :goto_1

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method private updateSecondaryContainer(Lcom/android/incallui/Call;)V
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getFirstCallToDisplay(Lcom/android/incallui/Call;)Lcom/android/incallui/Call;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSecondaryBanner - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->toString(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryIcon(Lcom/android/incallui/Call;)V

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVideoBanner(Lcom/android/incallui/Call;)V

    return-void
.end method

.method private updateSecondaryIcon(Lcom/android/incallui/Call;)V
    .locals 8

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    if-eqz v5, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const-string v5, "VideoCallCardExtendFragment"

    const-string v6, "setSecondaryIcon secondaryCall is null"

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    const-string v5, "VideoCallCardExtendFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSecondaryIcon secondaryCall:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/android/incallui/util/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->hasVideoState()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v5

    check-cast v5, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v5}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v3

    invoke-static {v3}, Lcom/android/incallui/util/CallTypeUtils;->isEpdgCall(Lcom/android/incallui/Call;)Z

    move-result v1

    const-string v5, "VideoCallCardExtendFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "setSecondaryIcon hasVideoState:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isHDVoice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isEPDG:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_6

    if-eqz v1, :cond_4

    const v4, 0x7f020076

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    const v4, 0x7f020078

    :cond_3
    :goto_1
    if-nez v4, :cond_9

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-eqz v5, :cond_5

    const v4, 0x7f020313

    goto :goto_1

    :cond_5
    const v4, 0x7f020311

    goto :goto_1

    :cond_6
    if-eqz v1, :cond_8

    const v4, 0x7f0203fa

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_7
    const v4, 0x7f0203fd

    goto :goto_1

    :cond_8
    if-eqz v2, :cond_3

    const v4, 0x7f02007e

    goto :goto_1

    :cond_9
    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const v6, 0x3ecccccd    # 0.4f

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method private updateVTManageButton(Lcom/android/incallui/Call;)V
    .locals 10

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x8

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v7, 0x80

    invoke-virtual {p1, v7}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v2

    const-string v7, "VideoCallCardExtendFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateVTManageButton - canManageConference="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " - isConference="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v7, :cond_0

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-ne v7, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hideConferenceCallManager()V

    :cond_2
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0x9

    if-eq v7, v8, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    const/16 v8, 0xa

    if-ne v7, v8, :cond_4

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    move v3, v4

    :goto_1
    iget-boolean v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-nez v7, :cond_6

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v7

    if-eq v7, v6, :cond_6

    move v1, v4

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v3, :cond_7

    :goto_3
    invoke-virtual {v4, v5}, Landroid/view/ViewStub;->setVisibility(I)V

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setEnabled(Z)V

    if-nez v1, :cond_8

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0150

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0

    :cond_5
    move v3, v5

    goto :goto_1

    :cond_6
    move v1, v5

    goto :goto_2

    :cond_7
    move v5, v6

    goto :goto_3

    :cond_8
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0f0190

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    goto/16 :goto_0
.end method

.method private updateVideoBanner(Lcom/android/incallui/Call;)V
    .locals 3

    const-string v1, "updateVideoBanner"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, 0x3

    const v2, 0x7f100317

    invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerViewStub:Landroid/view/ViewStub;

    invoke-virtual {v1, v0}, Landroid/view/ViewStub;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private updateVisiblityForFullscreen(Z)V
    .locals 12

    const/16 v6, 0x8

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v4

    check-cast v4, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v4}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-nez p1, :cond_5

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-wide v8, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mUserType:J

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_1

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mProfileIconUpper:Landroid/widget/ImageView;

    if-nez p1, :cond_6

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v4, :cond_4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz v2, :cond_2

    const/16 v4, 0x80

    invoke-virtual {v2, v4}, Lcom/android/incallui/Call;->can(I)Z

    move-result v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    :cond_2
    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    move v3, v5

    :goto_2
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v4}, Landroid/view/ViewStub;->getVisibility()I

    move-result v4

    if-eq v4, v3, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateVisiblityForFullscreen manage button - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v4, v3}, Landroid/view/ViewStub;->setVisibility(I)V

    :cond_4
    return-void

    :cond_5
    move v4, v6

    goto :goto_0

    :cond_6
    move v4, v6

    goto :goto_1

    :cond_7
    move v3, v6

    goto :goto_2
.end method


# virtual methods
.method protected inflateCdnipLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100363

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f10025f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003bb

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCdnipNumberLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateCnapLayout()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f100362

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003bd

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f1003bc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCnapNameLayout:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected inflateDowngradeButtonLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f10036a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100299

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mDowngradeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected inflateManageLayout()V
    .locals 2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mManageStub:Landroid/view/ViewStub;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f1002d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVTManageButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method protected initializeCallCardView(Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->initializeCallCardView(Landroid/view/View;)V

    const-string v0, "initializeCallCardView"

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    const v0, 0x7f100267

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIndicatorArea:Landroid/view/ViewGroup;

    const v0, 0x7f1001a8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoneNumber:Landroid/widget/TextView;

    const v0, 0x7f1000f9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_0
    const v0, 0x7f10035d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_1
    const v0, 0x7f10011e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNumberLabel:Landroid/widget/TextView;

    const v0, 0x7f1001eb

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhotoContainer:Landroid/view/View;

    const v0, 0x7f1000a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPhoto:Landroid/widget/ImageView;

    const v0, 0x7f1001a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateIcon:Landroid/widget/ImageView;

    const v0, 0x7f1001a3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_2
    const v0, 0x7f1001a7

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallNumberAndLabel:Landroid/view/View;

    const v0, 0x7f1001a9

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mElapsedTime:Landroid/widget/TextView;

    const v0, 0x7f1000a4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    const v0, 0x7f10019c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const v0, 0x7f1001e8

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    const v0, 0x7f100360

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    const v0, 0x7f100269

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const v0, 0x7f100361

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mNameContainer:Landroid/view/View;

    const v0, 0x7f10036b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    const v0, 0x7f100313

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryIcon:Landroid/widget/ImageView;

    const v0, 0x7f100317

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    sget-boolean v0, Lcom/android/incallui/service/vt/VideoCallConfig;->UI_MULTIPARTY_SECONDARY_PANNEL:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    const v0, 0x7f10030e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    const v0, 0x7f100312

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallName:Landroid/widget/TextView;

    const v0, 0x7f1000a1

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f10009b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v0, "ecid_enable"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "feature_vzw"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f10034a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCityId:Landroid/widget/TextView;

    :cond_4
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_VZW()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_CCT()Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateEriCallInfoLayout()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateSecondaryElapsedTime()V

    :cond_6
    const-string v0, "us_show_on_hold"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVolteOnholdLayout()V

    :cond_7
    const-string v0, "jansky_info_for_tmo"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f100367

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateManageLayout()V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateDowngradeButtonLayout()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->inflateVideoBanner()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const-string v1, "VideoCallCardExtendFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "VideoCallCardExtendFragment"

    const-string v2, "onClick: call super onClick"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1, p2, p3}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f040129

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const v0, 0x7f040128

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onDestroyView()V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoTypeIconImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hideStatusbar(Z)V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryBanner()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setSecondaryBanner()V

    return-void
.end method

.method protected onVideoUXModeChagned()V
    .locals 1

    invoke-super {p0}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onVideoUXModeChagned()V

    iget v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoUXMode:I

    invoke-static {v0}, Lcom/android/incallui/service/vt/VideoCallMetrics$VideoUXMode;->hasTabletType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateCallStateBgColor(Z)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->isShowingVideoBanner()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->remindVideoBanner()V

    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/VideoBanner;->getVideoBannerType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->remindDummyBanner(I)V

    :cond_0
    return-void
.end method

.method public onVolumeKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected resetMergeAnimation()V
    .locals 5

    const/4 v0, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v1, "resetMergeAnimation"

    invoke-static {v1}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setMergeProgressing(Z)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v1, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryName(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumber:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentPrimaryCallNumberLabel:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryLabel(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMergeButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSwapButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setAlpha(F)V

    :cond_6
    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setSecondaryBanner()V

    goto :goto_0
.end method

.method public setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V
    .locals 0

    invoke-super/range {p0 .. p10}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->setCallState(IIILandroid/telecom/DisconnectCause;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;ZZZ)V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setPrimaryBanner()V

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setSecondaryBanner()V

    return-void
.end method

.method public setMergeProgressing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsMergeProcessing:Z

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallManager;->getInstance()Lcom/android/incallui/service/vt/VideoCallManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/vt/VideoCallManager;->resetFullScreenMode()V

    :cond_0
    return-void
.end method

.method public setPrimaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryCallElapsedTimeArea(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTimeForDialpad(ZLjava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/incallui/UiAdapter;->setPrimaryCallElapsedTime(ZLjava/lang/String;)V

    return-void
.end method

.method public setPrimaryVisible(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    return-void
.end method

.method public setSecondaryCallElapsedTime(ZLjava/lang/String;)V
    .locals 6

    const/16 v3, 0x8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTimeLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCallTime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {p0, v2, v3, v4}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->setTTS(JLandroid/view/View;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090047

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    iget-object v4, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCurrentSecondaryCallName:Ljava/lang/String;

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const/4 v4, 0x2

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/android/incallui/util/GraphicResourceUtils;->setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryForwardSlash:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public setSecondaryInfoVisible(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getSecondaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showSecondaryContainer(Z)V

    :cond_0
    return-void
.end method

.method public showCallCardIndicatorArea(Z)V
    .locals 0

    return-void
.end method

.method protected showSecondaryContainer(Z)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    move v1, v2

    :goto_0
    const/4 v0, 0x0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eq v3, v1, :cond_5

    const/4 v0, 0x1

    :cond_0
    :goto_1
    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryDiver:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    const/16 v1, 0x8

    goto :goto_0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public showVideoStateMessageUi(Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerText:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->bringToFront()V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/incallui/UiAdapter;->updateSmallView(Lcom/android/incallui/Call;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerDivider:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mVideoBannerContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected updateCallStateBgColor(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryBannerColor:I

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    iget v1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryBannerColor:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryCallCardContainer:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0200ef

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public updateFullscreenMode(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updateFullscreenMode(Z)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    if-eq v0, p1, :cond_0

    const-string v0, "VideoCallCardExtendFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFullscreenMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsFullScreenMode:Z

    invoke-direct {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateVisiblityForFullscreen(Z)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updatePrimaryContainerForCall(Lcom/android/incallui/Call;)V

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/CallCardPresenter;->getPrimaryCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateSecondaryButton(Lcom/android/incallui/Call;)V

    iget-boolean v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mIsLandscape:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->updateCallStateBgColor(Z)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateJanskyInfo()V
    .locals 5

    const-string v2, "jansky_info_for_tmo"

    invoke-static {v2}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->hasJanskyInfo()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getInstance(Landroid/content/Context;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->getLineMSISDN()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo;->getJanskyInfo(Ljava/lang/String;)Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineIcon:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/incallui/operator/usa/jansky/JanskyCallerInfo$JanskyCallerInfoEntry;->janskyMultiLineColor:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/incallui/util/GraphicResourceUtils;->getJanskyLineIcon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mJanskyIcon:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method protected updateMultiWindowLayout()V
    .locals 13

    const v12, 0x7f0a05aa

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v7, "updateMultiWindowLayout : VideoCallMetrics is null."

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v7, "updateMultiWindowLayout"

    invoke-static {v7}, Lcom/android/incallui/service/vt/VideoCallLog;->callcard(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->getDisplayWidth()I

    move-result v0

    int-to-double v8, v0

    const-wide v10, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v8, v10

    double-to-int v2, v8

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCallMetrics;->isFreeformMultiWindow()Z

    move-result v7

    if-eqz v7, :cond_2

    int-to-double v8, v0

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v8, v10

    double-to-int v2, v8

    iget-object v7, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->button:Lcom/android/incallui/service/vt/VideoButtonMetrics;

    iget v1, v7, Lcom/android/incallui/service/vt/VideoButtonMetrics;->answer_incoming_area_height:I

    iget-object v7, v3, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v7}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getOutgoingCallCardHeight()I

    move-result v4

    add-int v7, v1, v4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    iget v8, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_5

    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    :cond_2
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mPrimaryUpperName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setMaxWidth(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v6, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryPanel:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    float-to-int v7, v7

    iput v7, v5, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v7, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mSecondaryCallInfoContainer:Landroid/view/View;

    invoke-virtual {v7, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_5
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_1
.end method

.method protected updatePrimaryContainerLayout()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->getVideoCallMetrics()Lcom/android/incallui/service/vt/VideoCallMetrics;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallStateHeight()I

    move-result v3

    iput v3, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallStateContainer:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v3, v1, Lcom/android/incallui/service/vt/VideoCallMetrics;->callcard:Lcom/android/incallui/service/vt/VideoCardMetrics;

    invoke-virtual {v3}, Lcom/android/incallui/service/vt/VideoCardMetrics;->getPrimaryCallStateHeight()I

    move-result v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected updatePrimaryContainerVisibilityForCallState(I)V
    .locals 6

    const/4 v5, 0x6

    const/4 v4, 0x4

    const/4 v1, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/android/incallui/fragment/VideoCallCardBaseFragment;->updatePrimaryContainerVisibilityForCallState(I)V

    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->isUsaUX()Z

    move-result v0

    if-eqz v0, :cond_7

    if-eq p1, v4, :cond_0

    if-ne p1, v5, :cond_3

    :cond_0
    invoke-static {}, Lcom/android/incallui/service/vt/VideoCallConfig;->CONCEPT_USA_ATT()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->mCallInfoContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/16 v0, 0x9

    if-eq v0, p1, :cond_4

    const/16 v0, 0xa

    if-ne v0, p1, :cond_5

    :cond_4
    invoke-static {}, Lcom/android/incallui/VideoBanner;->getInstance()Lcom/android/incallui/VideoBanner;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/incallui/VideoBanner;->setVideoCallBanner(I)V

    goto :goto_0

    :cond_5
    if-eq p1, v1, :cond_6

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_6
    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_0

    :cond_7
    if-eq p1, v4, :cond_8

    if-ne p1, v5, :cond_9

    :cond_8
    invoke-direct {p0, v3}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_0

    :cond_9
    if-eq p1, v1, :cond_a

    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    :cond_a
    invoke-direct {p0, v2}, Lcom/android/incallui/fragment/VideoCallCardExtendFragment;->showCallInfoContainer(Z)V

    goto :goto_0
.end method
