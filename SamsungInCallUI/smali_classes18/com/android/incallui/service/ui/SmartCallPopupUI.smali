.class public Lcom/android/incallui/service/ui/SmartCallPopupUI;
.super Lcom/android/incallui/service/ui/PopupUI;
.source "SmartCallPopupUI.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "SmartCallPopupUI"


# instance fields
.field private mIsDefaultPhoto:Z

.field mIsSmamCallUpdated:Z

.field private mPreviousState:I

.field private mSmartCallInfoStub:Landroid/view/ViewStub;

.field private mSmartCallName:Landroid/widget/TextView;

.field private mSmartCallNumber:Landroid/widget/TextView;

.field private mSmartCallPhoto:Landroid/widget/ImageView;

.field private mSmartCallSmallIcon:Landroid/widget/ImageView;

.field private mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

.field private mSmartCallStatusText:Landroid/widget/TextView;

.field private mSmartCalllIcon:Landroid/view/ViewStub;

.field private mSmartCalllIconOnPicture:Landroid/view/ViewStub;


# direct methods
.method public constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/incallui/service/ui/PopupUI;-><init>(Lcom/android/incallui/service/SecCallPopupContainer;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/incallui/service/ui/SmartCallPopupUI;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method private setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private setSmartCallPhotoFilter(I)V
    .locals 7

    const/16 v5, 0x8

    const/4 v4, 0x1

    const/high16 v6, 0x3f800000    # 1.0f

    const-string v2, "SmartCallPopupUI"

    const-string v3, "setSmartCallPhotoFilter()"

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-ne p1, v5, :cond_1

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const v3, 0x3ecccccd    # 0.4f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x3

    if-ne p1, v2, :cond_2

    iget v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    if-ne v2, v5, :cond_2

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v6, v4, v5

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v2, Lcom/android/incallui/service/ui/SmartCallPopupUI$1;

    invoke-direct {v2, p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI$1;-><init>(Lcom/android/incallui/service/ui/SmartCallPopupUI;)V

    invoke-virtual {v0, v2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0030

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_0

    :cond_2
    const/16 v2, 0xa

    if-ne p1, v2, :cond_3

    iget-boolean v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0f01e6

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v2, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method


# virtual methods
.method public canShowSpamCallPhotoPre(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)Z
    .locals 6

    const/4 v3, 0x0

    const/4 v2, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "spam_call_enable"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    if-ne v1, v2, :cond_2

    if-nez v0, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    if-nez v4, :cond_2

    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    if-nez v4, :cond_2

    iget-boolean v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-nez v4, :cond_2

    const-string v3, "SmartCallPopupUI"

    const-string v4, "canShowSpamCallPhotoPre true "

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    return v2

    :cond_1
    move v0, v3

    goto :goto_0

    :cond_2
    const-string v4, "SmartCallPopupUI"

    const-string v5, "canShowSpamCallPhotoPre false"

    invoke-static {v4, v5, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v3

    goto :goto_1
.end method

.method public init()V
    .locals 3

    const-string v0, "SmartCallPopupUI"

    const-string v1, "init()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsSmamCallUpdated:Z

    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10022f

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100232

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10021d

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100237

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100454

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f100230

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIcon:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10037c

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10021e

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCalllIconOnPicture:Landroid/view/ViewStub;

    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    const v1, 0x7f10037d

    invoke-virtual {v0, v1}, Lcom/android/incallui/service/SecCallPopupContainer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    :cond_3
    return-void
.end method

.method onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)V
    .locals 0

    return-void
.end method

.method public setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V
    .locals 10

    const-string v6, "SmartCallPopupUI"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPrimarySpamInfo mTagName : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isSpam : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mCount : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mTagType : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mNumber : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isContactExist : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p6

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isYellowPage : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " isVoiceMail :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move/from16 v0, p8

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f02041f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-static {v7}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupYpBackgroundResource(Landroid/content/Context;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_0
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    if-nez v6, :cond_4

    :cond_3
    :goto_0
    return-void

    :cond_4
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0a04b3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v1, v6

    if-nez p6, :cond_5

    if-nez p7, :cond_5

    const/4 v6, 0x1

    if-eq p4, v6, :cond_5

    if-eqz p8, :cond_6

    :cond_5
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamReportOwn()I

    move-result v6

    if-le p4, v6, :cond_8

    if-eqz p2, :cond_8

    if-eqz p1, :cond_8

    const/4 v6, 0x2

    invoke-static {v6, v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902d5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    if-eqz v3, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    if-eqz v6, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_8
    const/4 v6, 0x1

    if-eq p4, v6, :cond_9

    if-eqz p2, :cond_9

    if-eqz p1, :cond_9

    const/4 v6, 0x2

    invoke-static {v6, v1}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallRegisterImage(II)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0902d7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p4}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCallTagName(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    :cond_9
    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updatePrimaryDisplayInfo(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 11

    const-string v0, "SmartCallPopupUI"

    const-string v1, "updatePrimaryDisplayInfo()"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v0, "support_spam_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "spam_call_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v10

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isEmergencyMode()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isUltraPowerSavingMode()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_0
    const/4 v9, 0x1

    :goto_0
    const/4 v0, 0x1

    if-ne v10, v0, :cond_1

    if-nez v9, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagName()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getisSpam()Z

    move-result v2

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamCount()I

    move-result v3

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamTagType()I

    move-result v4

    invoke-static {}, Lcom/android/incallui/util/SpamCallUtils;->getSpamNumber()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    iget-boolean v7, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isYellowPage:Z

    iget-boolean v8, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setPrimarySpamInfo(Ljava/lang/String;ZIILjava/lang/String;ZZZ)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const-string v0, "support_smart_call"

    invoke-static {v0}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/incallui/smartcall/SmartCallUtil;->isSpamEnable()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateSmartCallInfo()V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->updateTextColor(I)V

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setSmartCallPhotoFilter(I)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/incallui/Call;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    return-void

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method public updateSmartCallInfo()V
    .locals 22

    const-string v17, "SmartCallPopupUI"

    const-string v18, "updateSmartCallInfo()"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v17

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/util/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v17

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactExists:Z

    move/from16 v17, v0

    if-nez v17, :cond_3

    iget-boolean v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_4
    const-string v17, "SmartCallPopupUI"

    const-string v18, "updateSmartCallInfo"

    const/16 v19, 0x1

    invoke-static/range {v17 .. v19}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v2}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallState(Lcom/android/incallui/Call;)I

    move-result v12

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0x9

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_5

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getState()I

    move-result v17

    const/16 v18, 0xa

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    :cond_5
    const/4 v11, 0x1

    :goto_1
    const/4 v8, 0x0

    iget-object v0, v7, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->smartCallInfo:Lcom/android/incallui/smartcall/SmartCallInfo;

    move-object/from16 v16, v0

    if-eqz v16, :cond_6

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v2, v0}, Lcom/android/incallui/Call;->setSmartCallSearching(Z)V

    :cond_6
    if-eqz v16, :cond_17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_7

    if-eqz v12, :cond_17

    :cond_7
    const/4 v10, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_d

    const/16 v17, 0x1

    move/from16 v0, v17

    if-gt v12, v0, :cond_d

    new-instance v15, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v15}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/16 v17, 0x1

    move/from16 v0, v17

    iput v0, v15, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a04b3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    const/16 v17, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->imageUri:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-static {v0, v15}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-direct {v6, v0, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz v6, :cond_8

    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-static {v9, v5, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->resizeBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v5, v5}, Lcom/android/incallui/util/GraphicResourceUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/incallui/util/GraphicResourceUtils;->getDrawableFromBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mIsDefaultPhoto:Z

    :cond_8
    :goto_2
    if-eqz v10, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v17

    if-eqz v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    if-eqz v17, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v17

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-static {v0, v8}, Lcom/android/incallui/util/SecOpenThemeUtils;->setPopupSmartBackgroundResource(Landroid/content/Context;Z)I

    move-result v18

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setBackgroundResource(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v10}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->setDrawableToImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhotoContainer()Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getNameLayout()Landroid/widget/LinearLayout;

    move-result-object v13

    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/widget/RelativeLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a008b

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    iput v0, v14, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v13, v14}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Lcom/android/incallui/smartcall/SmartCallUtil;->setSmartAppLogging(ILandroid/content/Context;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_12

    const/16 v17, 0x2

    move/from16 v0, v17

    if-gt v12, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->name:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallInfoStub:Landroid/view/ViewStub;

    move-object/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    const v19, 0x7f0902c5

    invoke-virtual/range {v18 .. v19}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->reputationCategoryName:Ljava/lang/String;

    move-object/from16 v21, v0

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_b
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_c
    const/4 v11, 0x0

    goto/16 :goto_1

    :cond_d
    if-eqz v12, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f0a04b3

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v17

    move/from16 v0, v17

    float-to-int v5, v0

    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v12, v0, :cond_f

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0203f1

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    :cond_e
    :goto_5
    const/4 v8, 0x1

    goto/16 :goto_2

    :cond_f
    const/16 v17, 0x2

    move/from16 v0, v17

    if-ne v12, v0, :cond_10

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0203f4

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_5

    :cond_10
    const/16 v17, 0x3

    move/from16 v0, v17

    if-ne v12, v0, :cond_e

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0203f3

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v5}, Lcom/android/incallui/util/SecOpenThemeUtils;->setFullScreenPhotoView(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    goto :goto_5

    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-static {v12}, Lcom/android/incallui/smartcall/SmartCallUtil;->getSmartCallName(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_13
    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->managerMessage:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_14
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v17

    if-nez v17, :cond_15

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_15

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_15

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_15
    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isRoamingArea()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCountry:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_16

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressCity:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "/"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/android/incallui/smartcall/SmartCallInfo;->addressState:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallPhoto:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lcom/android/incallui/service/SecCallPopupContainer;->setPrimaryImage(Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoto()Landroid/widget/ImageView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/ImageView;->setVisibility(I)V

    if-nez v11, :cond_18

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getSmartCallSearching()Z

    move-result v17

    if-eqz v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0902c6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getCallNumberAndLabel()Landroid/view/View;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    move-object/from16 v17, v0

    const/16 v18, 0x8

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getName()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/service/ui/SmartCallPopupUI;->getParentView()Lcom/android/incallui/service/SecCallPopupContainer;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/incallui/service/SecCallPopupContainer;->getPhoneNumber()Landroid/widget/TextView;

    move-result-object v17

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public updateTextColor(I)V
    .locals 12

    const-string v7, "SmartCallPopupUI"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateTextColor() state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Lcom/android/incallui/Call$State;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v7, v8, v9}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0166

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0160

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0134

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0132

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f002c

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0f0134

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {p1}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v7

    if-nez v7, :cond_0

    const/16 v7, 0x9

    if-ne p1, v7, :cond_a

    :cond_0
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_3
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_4
    :goto_0
    const/16 v7, 0x8

    if-ne p1, v7, :cond_e

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_7
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_8
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    const v8, 0x3ecccccd    # 0.4f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_9
    :goto_1
    return-void

    :cond_a
    const/16 v7, 0xa

    if-ne p1, v7, :cond_4

    iget v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    const/16 v8, 0xa

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_b

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_c

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    invoke-virtual {v7, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_c
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_d

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_d
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setColorFilter(I)V

    goto :goto_0

    :cond_e
    const/4 v7, 0x3

    if-ne p1, v7, :cond_14

    iget v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mPreviousState:I

    const/16 v8, 0x8

    if-ne v7, v8, :cond_14

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_f

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_f
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_10

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_10
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_11

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_11
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_12
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v7, :cond_13

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    sget-object v8, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v9, 0x1

    new-array v9, v9, [F

    const/4 v10, 0x0

    const/high16 v11, 0x3f800000    # 1.0f

    aput v11, v9, v10

    invoke-static {v7, v8, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    :cond_13
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d0030

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v0, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    :cond_14
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    if-eqz v7, :cond_15

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallName:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_15
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    if-eqz v7, :cond_16

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallNumber:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_16
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    if-eqz v7, :cond_17

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIcon:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_17
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    if-eqz v7, :cond_18

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallStatusText:Landroid/widget/TextView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_18
    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/incallui/service/ui/SmartCallPopupUI;->mSmartCallSmallIconOnPicture:Landroid/widget/ImageView;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setAlpha(F)V

    goto/16 :goto_1
.end method
