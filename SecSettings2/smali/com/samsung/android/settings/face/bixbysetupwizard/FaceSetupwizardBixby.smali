.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
.super Landroid/app/Activity;
.source "FaceSetupwizardBixby.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;,
        Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;
    }
.end annotation


# instance fields
.field private final BOUNCE_DOWN_EFFECT_DELAY:I

.field private final BOUNCE_UP_EFFECT_DELAY:I

.field private final FACE_EFFECT_DOWN:I

.field private final FACE_EFFECT_UP:I

.field completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

.field private mCancellationSignal:Landroid/os/CancellationSignal;

.field private mContext:Landroid/content/Context;

.field private mCurrentStage:Ljava/lang/String;

.field private mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

.field private mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

.field private mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

.field private mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

.field private mFacePreviewImage:Landroid/widget/ImageView;

.field private mFaceProgressText:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIsEndIntroBixbySpeaking:Z

.field private mIsEnrolling:Z

.field private mIsFaceManagerBinded:Z

.field private mMessageView:Landroid/view/View;

.field private mNextButton:Landroid/widget/Button;

.field private mParticleView:Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

.field private mPrevButton:Landroid/widget/Button;

.field private mPreviousButton:Landroid/widget/Button;

.field private mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

.field private mRandom:Ljava/util/Random;

.field private mRunnable:Ljava/lang/Runnable;

.field private mScreenHeight:I

.field private mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

.field private mTitleView:Landroid/view/View;

.field private mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

.field private mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    return-object v0
.end method

.method static synthetic -get10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    return-object v0
.end method

.method static synthetic -get11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mTitleView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    return-object v0
.end method

.method static synthetic -get2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic -get3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return v0
.end method

.method static synthetic -get6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    return v0
.end method

.method static synthetic -get7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -get8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Landroid/widget/Button;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic -get9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mParticleView:Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    return-object v0
.end method

.method static synthetic -set0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEndIntroBixbySpeaking:Z

    return p1
.end method

.method static synthetic -set1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    return p1
.end method

.method static synthetic -set2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;)Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)F
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->dpToPixel(I)F

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getRandom(II)I

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIconTransition(JI)V

    return-void
.end method

.method static synthetic -wrap11(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startPreviewImageEffect()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startSolidBounceEffect(I)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/view/View;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startTextTransitionEffect(Landroid/view/View;IILjava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getCurrentStage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap3(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->replaceFragment()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setParticleMidMode()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->showFaceErrorDialog(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startButtonEffect(II)V

    return-void
.end method

.method static synthetic -wrap8(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    return-void
.end method

.method static synthetic -wrap9(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;JI)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIconScaleAnimation(JI)V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->FACE_EFFECT_UP:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->FACE_EFFECT_DOWN:I

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_UP_EFFECT_DELAY:I

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->BOUNCE_DOWN_EFFECT_DELAY:I

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEnrolling:Z

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEndIntroBixbySpeaking:Z

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPrevButton:Landroid/widget/Button;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$2;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$3;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    return-void
.end method

.method private bindScriptPlayer()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer.intent.action.SCRIPT_PLAYER_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "com.sec.android.app.suwscriptplayer"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private dpToPixel(I)F
    .locals 3

    int-to-float v0, p1

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getCurrentStage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    return-object v0
.end method

.method private getFaceManager()Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "getFaceManager"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/bio/face/SemBioFaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    return v2

    :cond_0
    iput-boolean v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    return v3
.end method

.method private getRandom(II)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mRandom:Ljava/util/Random;

    sub-int v1, p2, p1

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method private releaseFaceManager()V
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    :cond_1
    return-void
.end method

.method private replaceFragment()V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    const v3, 0x7f11072e

    invoke-virtual {v1, v3, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method private setCurrentStage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCurrentStage:Ljava/lang/String;

    return-void
.end method

.method private setIndicatorTransparency()V
    .locals 4

    const/16 v0, 0x3706

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x7ffff400

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    return-void
.end method

.method private setParticleMidMode()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsEndIntroBixbySpeaking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;

    invoke-direct {v1, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$17;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const-wide/16 v2, 0x352

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showFaceErrorDialog(Ljava/lang/CharSequence;)V
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b07f8

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$14;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    const v4, 0x7f0b040f

    invoke-virtual {v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$15;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startButtonEffect(II)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    const v10, 0x3ea8f5c3    # 0.33f

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    if-nez v3, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, -0x19191a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, -0xe8d175

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v2

    new-instance v5, Landroid/animation/ArgbEvaluator;

    invoke-direct {v5}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const v7, 0x2b2f5e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v11

    const v7, -0x50506

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v12

    invoke-static {v5, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v3}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    new-instance v5, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;

    invoke-direct {v5, p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$11;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/graphics/drawable/GradientDrawable;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v5, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;

    invoke-direct {v5, p0, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$12;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Landroid/widget/Button;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v2, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v5, v10, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3e99999a    # 0.3f

    invoke-direct {v5, v10, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v9, v8}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v6, 0x14d

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v5, Landroid/view/animation/PathInterpolator;

    const v6, 0x3f2b851f    # 0.67f

    invoke-direct {v5, v10, v8, v6, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v5}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v12}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method private startCompleteGuideEffect()V
    .locals 6

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "Guide view is null : close effect"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x14a

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v2, 0x3ea8f5c3    # 0.33f

    const v3, 0x3e4ccccd    # 0.2f

    invoke-direct {v1, v2, v4, v3, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startFinishEffect(I)V
    .locals 10

    const v9, 0x3ea8f5c3    # 0.33f

    const v8, 0x3dcccccd    # 0.1f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v4, :cond_1

    :cond_0
    const-string/jumbo v4, "FcstFaceSetupwizardBixby"

    const-string/jumbo v5, "start init effcet is fail : view is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v4, :cond_0

    const/4 v0, 0x0

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v0, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v9, v6, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$6;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v1, 0x0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v9, v6, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$7;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v1, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/4 v3, 0x0

    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v3, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v9, v6, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$8;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v3, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getAlpha()F

    move-result v4

    cmpl-float v4, v4, v6

    if-lez v4, :cond_2

    const/4 v2, 0x0

    new-instance v2, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v2, v7, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v4, 0x14d

    invoke-virtual {v2, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/PathInterpolator;

    invoke-direct {v4, v9, v6, v8, v7}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v4, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;

    invoke-direct {v4, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$9;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v4, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    invoke-virtual {v4, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v5, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$10;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    const-wide/16 v6, 0x215

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startIconMove()V
    .locals 5

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mParticleView:Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconViewAnimation;-><init>(Landroid/view/View;F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mParticleView:Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    invoke-virtual {v1, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startIconScaleAnimation(JI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$18;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startIconTransition(JI)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;

    invoke-direct {v1, p0, p3}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$19;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;I)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private startInitEffect()V
    .locals 12

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v1, 0x0

    const/4 v5, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-nez v3, :cond_1

    :cond_0
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "start init effcet is fail : view is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    if-eqz v3, :cond_0

    const/4 v9, 0x0

    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v10, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    invoke-virtual {v9, v5}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v3, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;

    invoke-direct {v3, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$5;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v9, v3}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    new-instance v0, Landroid/view/animation/ScaleAnimation;

    move v3, v1

    move v4, v2

    move v7, v5

    move v8, v6

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const-wide/16 v6, 0x1f4

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    new-instance v1, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;

    const v3, 0x3f19999a    # 0.6f

    invoke-direct {v1, v2, v3}, Lcom/samsung/android/graphics/spr/animation/interpolator/ElasticEaseOut;-><init>(FF)V

    invoke-virtual {v0, v1}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v5}, Landroid/view/animation/ScaleAnimation;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v9}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    invoke-virtual {v1, v9}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startPreviewImageEffect()V
    .locals 9

    const/4 v8, 0x1

    const v7, 0x3ea8f5c3    # 0.33f

    const v6, 0x3e4ccccd    # 0.2f

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v2, :cond_0

    new-instance v1, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe6

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v1, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v5, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0xe6

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v2, Landroid/view/animation/PathInterpolator;

    invoke-direct {v2, v7, v4, v6, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v8}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$4;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private startSolidBounceEffect(I)V
    .locals 14

    const/high16 v7, -0x3c510000    # -350.0f

    const-wide/16 v10, 0x2ee

    const-wide/16 v5, 0x14d

    const-wide/16 v8, 0xfa

    const-wide/16 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    if-nez v1, :cond_0

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startSolidBounceEffect : Effect is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0a0374

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    int-to-float v4, v12

    const/high16 v7, 0x43af0000    # 350.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$16;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    if-lez v1, :cond_3

    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "mScreenHeight : "

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v13, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v4, v4

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "FcstFaceSetupwizardBixby"

    const-string/jumbo v4, "startSolidBounceEffect : ScreenHeight is 0"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    const v4, -0x3ac48000    # -3000.0f

    invoke-virtual/range {v1 .. v11}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->moveToTraget(JFJFJJ)V

    goto :goto_0
.end method

.method private startTextTransitionEffect(Landroid/view/View;IILjava/lang/String;)V
    .locals 7

    const v2, 0x3f666666    # 0.9f

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "startTextTransitionEffect : view is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v6, 0x0

    const-string/jumbo v0, "face_bixby_suw_intro"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0xa6

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$21;

    move-object v1, p0

    move-object v2, p4

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$21;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;Ljava/lang/String;Landroid/view/View;II)V

    invoke-virtual {v6, v0}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p1, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_2
    const-string/jumbo v0, "face_bixby_suw_befor_enroll"

    invoke-virtual {v0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v6, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v6, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x64

    invoke-virtual {v6, v0, v1}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    goto :goto_0
.end method

.method private stopEnrollment()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "stopEnrollment"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->postEnroll()I

    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->releaseFaceManager()V

    return-void
.end method


# virtual methods
.method protected initBixbyFaceEnroll(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const v2, 0x7f1103b7

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const v2, 0x7f110733

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFacePreviewImage:Landroid/widget/ImageView;

    const v2, 0x7f110734

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    const v2, 0x7f110731

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceMaskView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceCircleMaskView;

    const v2, 0x7f110736

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    const v2, 0x7f110737

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const v2, 0x4de6e6e6    # 4.8423648E8f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mPreviousButton:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/GradientDrawable;

    const v2, -0x19191a

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    const v3, 0x4d2b2f5e    # 1.79500512E8f

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_0
    invoke-virtual {p0, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setEnrollProgressText(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startInitEffect()V

    return-void
.end method

.method public isScriptPlaying()Z
    .locals 3

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->isPlaying()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClickBixbyButton(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startButtonEffect(II)V

    const v1, 0x7f110737

    if-ne v0, v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startFinishEffect(I)V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    const/4 v4, 0x0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    const-string/jumbo v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    const v2, 0x7f0402a7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setContentView(I)V

    const v2, 0x7f11072a

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mTitleView:Landroid/view/View;

    const v2, 0x7f11072c

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mTitleView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mMessageView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "navigation_bar_height"

    const-string/jumbo v4, "dimen"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v0, 0x0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_0
    const-string/jumbo v2, "FcstFaceSetupwizardBixby"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    iget v4, v4, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " + "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    const v2, 0x7f11072d

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mSolidBounceEffect:Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;

    iget v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mScreenHeight:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/settings/face/bixbysetupwizard/SolidBounceEffect;->setToTarget(F)V

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    invoke-direct {v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;-><init>()V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollFragment:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;

    const v2, 0x7f11072b

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mParticleView:Lcom/samsung/android/settings/face/bixbysetupwizard/IconView;

    new-instance v2, Ljava/util/Random;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Random;-><init>(J)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mRandom:Ljava/util/Random;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->bindScriptPlayer()V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startIconMove()V

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;

    invoke-direct {v2, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$VoiceCallback;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    new-instance v2, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    iget-object v3, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceCallback:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;

    invoke-direct {v2, v3, v4}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;-><init>(Landroid/content/Context;Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper$VoiceCommandHelperCallback;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->isScriptPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopScript()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->unbindService(Landroid/content/ServiceConnection;)V

    invoke-direct {p0, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setCurrentStage(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->clear()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 2

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    iget-boolean v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mIsFaceManagerBinded:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mVoiceHelper:Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/VoiceCommandHelper;->stopListenering()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setRequestedOrientation(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setIndicatorTransparency()V

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby$13;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;)V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mRunnable:Ljava/lang/Runnable;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 3

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onWindowFocusChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x3706

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setEnrollProgressText(I)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceProgressText:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0b074f

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->setPrecent(F)V

    :cond_1
    const/16 v0, 0x64

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mProgressEffcetView:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;

    invoke-virtual {v0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEffectView;->startCompleteEffect()V

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->startCompleteGuideEffect()V

    :cond_3
    return-void
.end method

.method public setEnrollResult(I)V
    .locals 3

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnrollResult to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->setResult(I)V

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->stopEnrollment()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->finish()V

    return-void
.end method

.method protected startEnrollment(Landroid/view/View;)V
    .locals 6

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->getFaceManager()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v2, "startEnrollment"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/CancellationSignal;

    invoke-direct {v0}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->isEnrollSession()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    invoke-virtual {v0}, Lcom/samsung/android/bio/face/SemBioFaceManager;->preEnroll()J

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mFaceManager:Lcom/samsung/android/bio/face/SemBioFaceManager;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mCancellationSignal:Landroid/os/CancellationSignal;

    iget-object v4, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mEnrollmentCallback:Lcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;

    const/4 v3, 0x0

    move-object v5, p1

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/bio/face/SemBioFaceManager;->enroll([BLandroid/os/CancellationSignal;ILcom/samsung/android/bio/face/SemBioFaceManager$EnrollmentCallback;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string/jumbo v0, "FcstFaceSetupwizardBixby"

    const-string/jumbo v1, "FaceManager is null or already preenrolled!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startScript(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->completionCallback:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;

    invoke-interface {v1, p1, v2}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->PlayScript(Ljava/lang/String;Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public stopScript()V
    .locals 2

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->mService:Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;

    invoke-interface {v1}, Lcom/sec/android/app/suwscriptplayer/ISuwScriptPlayer;->StopScript()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method
