.class public Lcom/android/incallui/fragment/view/CallCardMultiSimView;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/incallui/fragment/view/ICallCardViewAdapter;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CallCardMultiSimView"


# instance fields
.field private mCarrierImage:Landroid/widget/ImageView;

.field private final mFragment:Lcom/android/incallui/fragment/CallCardFragment;

.field private mSimIconLabel:Landroid/widget/ImageView;

.field private mSimIconLabelLarge:Landroid/widget/ImageView;

.field private mSimIconLabelLargeStub:Landroid/view/ViewStub;

.field private mSimIconLabelStub:Landroid/view/ViewStub;

.field private mSubIconLabel:Landroid/widget/ImageView;

.field private mSubIconLabelStub:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    return-void
.end method

.method private getSubIdIcon(I)I
    .locals 3

    const-string v0, "CallCardMultiSimView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSubIdIcon subId ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f020375

    :goto_0
    return v0

    :pswitch_0
    const v0, 0x7f020376

    goto :goto_0

    :pswitch_1
    const v0, 0x7f020377

    goto :goto_0

    :pswitch_2
    const v0, 0x7f020378

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private inflateSimIconLabel(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-nez v0, :cond_0

    const v0, 0x7f10029f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-nez v0, :cond_1

    const v0, 0x7f10029b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLargeStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    :cond_3
    const v0, 0x7f1004c5

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f1004c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    return-void
.end method

.method private onResume(Lcom/android/incallui/fragment/CallCardFragment;)V
    .locals 0

    return-void
.end method

.method private onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V
    .locals 1

    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1002a0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    const v0, 0x7f10029c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    :cond_0
    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->inflateSimIconLabel(Landroid/view/View;)V

    :cond_1
    const-string v0, "feature_multisim_carrier_match"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f1003ba

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method private removeSubImage()V
    .locals 3

    const/16 v2, 0x8

    const-string v0, "CallCardMultiSimView"

    const-string v1, "removeSubImage"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 6

    const/4 v2, 0x0

    const-string v0, ""

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, "CallCardMultiSimView"

    const-string v1, "call is null"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    move v1, v0

    :goto_0
    const-string v0, "feature_multisim_display_sim_icon"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getPhoneId(Lcom/android/incallui/Call;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_1
    const-string v0, "multi_number_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/CallCardPresenter;->getNameForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/CallCardPresenter;

    invoke-virtual {v0, p2}, Lcom/android/incallui/CallCardPresenter;->getNumberForCall(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_2

    iget-object v5, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v2, 0x1

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/InCallUISystemDB;->getOSMNState(I)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v2, :cond_6

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->needToRemoveThePrefixOSMN(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSubNumberNo()I

    move-result v0

    invoke-static {v4}, Lcom/android/incallui/util/InCallUtils;->removeThePrefixOSMN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4, v2}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryName(Ljava/lang/String;Z)V

    invoke-direct {p0, v2, v1, v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySubImage(ZII)V

    :cond_3
    :goto_1
    const-string v0, "feature_multisim_carrier_match"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimaryCarrierImage(Ljava/lang/String;Z)V

    :cond_4
    return-void

    :cond_5
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->removeSubImage()V

    goto :goto_1

    :cond_6
    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->needToRemoveThePrefixOSMN(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->getSubNumberNo()I

    move-result v4

    invoke-static {v0}, Lcom/android/incallui/util/InCallUtils;->removeThePrefixOSMN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/incallui/fragment/CallCardFragment;->setPrimaryPhoneNumber(Ljava/lang/String;)V

    invoke-direct {p0, v2, v1, v4}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimarySubImage(ZII)V

    goto :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->removeSubImage()V

    goto :goto_1

    :cond_8
    invoke-direct {p0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->removeSubImage()V

    goto :goto_1

    :cond_9
    move v1, v2

    goto/16 :goto_0
.end method

.method private setPrimaryCarrierImage(Ljava/lang/String;Z)V
    .locals 3

    const/16 v2, 0x8

    if-nez p2, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/incallui/util/NameNumberUtils;->isValidPhoneNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/incallui/CarrierMatchUtils;->queryCarrierCodeFromDb(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierCode(I)I

    move-result v1

    invoke-static {v0}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierType(I)I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/incallui/CarrierMatchUtils;->getCarrierImage(II)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mCarrierImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setPrimarySubImage(ZII)V
    .locals 4

    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v0, "CallCardMultiSimView"

    const-string v1, "setPrimarySubImage"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-static {p1, p3, p2, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdIcon(ZIIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_3
    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-static {p1, p3, p2, v2}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSubIdIcon(ZIIZ)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public animateForAnswerCall()V
    .locals 0

    return-void
.end method

.method public animateForSwap()V
    .locals 2

    const/16 v1, 0x8

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public arrangePrimaryLayout()V
    .locals 0

    return-void
.end method

.method public isSimIconLargeLabelVisible()Z
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public onResume()V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onResume(Lcom/android/incallui/fragment/CallCardFragment;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->onViewCreated(Lcom/android/incallui/fragment/CallCardFragment;Landroid/view/View;)V

    return-void
.end method

.method public setCallState(I)V
    .locals 0

    return-void
.end method

.method public setPrimary(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    instance-of v0, v0, Lcom/android/incallui/fragment/CallCardFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-direct {p0, v0, p1}, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->setPrimary(Lcom/android/incallui/fragment/CallCardFragment;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    :cond_0
    return-void
.end method

.method public setPrimarySimIconLabel(Lcom/android/incallui/fragment/CallCardFragment;ILcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 5

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-nez v1, :cond_4

    :cond_3
    if-eqz p3, :cond_6

    iget-object v1, p3, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->time:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    :cond_4
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v0, "rich_call_screen_cmcc"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/incallui/fragment/CallCardFragment;->getChnFeatureView()Lcom/android/incallui/fragment/view/CallCardChnFeatureView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/fragment/view/CallCardChnFeatureView;->isRichScreen()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-static {p2, v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    :cond_7
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-static {p2, v3}, Lcom/android/incallui/util/InCallUtilsMultiSIM;->getSimImage(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabelLarge:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSimIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateSubIconColor(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v0}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e018c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v1}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e018b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v2}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0188

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mFragment:Lcom/android/incallui/fragment/CallCardFragment;

    invoke-virtual {v3}, Lcom/android/incallui/fragment/CallCardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0186

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const/16 v4, 0xa

    if-ne p1, v4, :cond_2

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabel:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/incallui/fragment/view/CallCardMultiSimView;->mSubIconLabelStub:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0
.end method
