.class public Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;
.super Landroid/app/Fragment;
.source "FaceEnrollSetupwizardFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

.field private mEnrollView:Landroid/view/View;

.field private mFacePreview:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mFacePreview:Landroid/view/View;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-string/jumbo v0, "FcstFaceSetupwizardBixbyFragment"

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->TAG:Ljava/lang/String;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mFacePreview:Landroid/view/View;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "FcstFaceSetupwizardBixbyFragment"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const-string/jumbo v1, "FcstFaceSetupwizardBixbyFragment"

    const-string/jumbo v2, "onCreateView"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    return-object v1

    :cond_0
    const v1, 0x7f0402a8

    const/4 v2, 0x0

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    const v2, 0x7f1102e3

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mFacePreview:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mFacePreview:Landroid/view/View;

    if-eqz v1, :cond_1

    new-instance v0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment$1;-><init>(Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;)V

    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mActivity:Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;

    iget-object v2, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceSetupwizardBixby;->initBixbyFaceEnroll(Landroid/view/View;)V

    :cond_2
    iget-object v1, p0, Lcom/samsung/android/settings/face/bixbysetupwizard/FaceEnrollSetupwizardFragment;->mEnrollView:Landroid/view/View;

    return-object v1
.end method
