.class public Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.super Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;,
        Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;
    }
.end annotation


# static fields
.field private static final INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

.field private static final PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mAlbumSwitchListener:Landroid/view/View$OnClickListener;

.field private mBigViewAppInfoBottomSpace:Landroid/view/View;

.field private mBigViewAppInfoContainer:Landroid/view/View;

.field private mBigViewAppInfoTopSpace:Landroid/view/View;

.field private mBigViewMKKeyboardSpace1:Landroid/view/View;

.field private mBigViewMKKeyboardSpace2:Landroid/view/View;

.field private mBigViewNavibarSpace:Landroid/view/View;

.field private mBigViewTopSpace:Landroid/view/View;

.field private mControllerContainer:Landroid/view/View;

.field private mIsCoverShowing:Z

.field private mIsShowingPauseBtn:Z

.field private mIsViewInitializing:Z

.field private mLyricsBtn:Landroid/view/View;

.field private mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

.field private mLyricsScrollView:Landroid/view/View;

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppNameTextView:Landroid/widget/TextView;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicCoverContainer:Landroid/view/View;

.field private mMusicCoverView:Landroid/widget/ImageView;

.field private mMusicHolder:Landroid/widget/FrameLayout;

.field private mMusicLyricsView:Landroid/widget/TextView;

.field private mMusicOOBETextView:Landroid/widget/TextView;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mNextBtn:Landroid/widget/ImageView;

.field private mPlayBtn:Landroid/widget/ImageView;

.field private mPrevBtn:Landroid/widget/ImageView;

.field private mRippleArea:Landroid/view/View;

.field private mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsAnimating:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)I
    .locals 1

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)Lcom/android/keyguard/servicebox/KeyguardStatusCallback;
    .locals 1

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getKeyguardStatusCallback()Lcom/android/keyguard/servicebox/KeyguardStatusCallback;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->dismissServiceBox()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->showServiceBox()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;

    invoke-direct {v0}, Lcom/samsung/android/graphics/spr/animation/interpolator/SineInOut33;-><init>()V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "android.media.metadata.ALBUM_ART"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.ART"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string/jumbo v1, "android.media.metadata.DISPLAY_ICON"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$2;-><init>(Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method private getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_0
    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->PREFERRED_BITMAP_ORDER:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p1, v2}, Landroid/media/MediaMetadata;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method public static launchBaseApplication(Landroid/content/Context;Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->launchMusicApp(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)Z

    return-void
.end method

.method private playAlbumAnimation(Landroid/view/View;)V
    .locals 8

    const-wide/16 v6, 0xfa

    const-wide/16 v4, 0x0

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->INTER_SINEINOUT33:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    goto :goto_0
.end method

.method private playControllerAnimation(ZZ)V
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "playControllerAnimation() immediately = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", isPlayToPause = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-ne p2, v2, :cond_0

    return-void

    :cond_0
    iput-boolean p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->music_player_ic_control_play_to_pause_06:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_0
    if-eqz p2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->servicebox_music_description_pause:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->music_player_ic_control_play_to_pause_01:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->music_play_to_pause:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->music_pause_to_play:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/keyguard/R$string;->servicebox_music_description_play:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private updateSpace()V
    .locals 5

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_7

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_8

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewTopSpace:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewTopSpace:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_9

    move v1, v3

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_a

    move v1, v3

    :goto_3
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_b

    move v1, v3

    :goto_4
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    iget-boolean v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v4, :cond_c

    :goto_5
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoContainer:Landroid/view/View;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoContainer:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsMKeyboardConnected:Z

    if-eqz v1, :cond_d

    const/4 v1, -0x2

    :goto_6
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :cond_6
    return-void

    :cond_7
    move v1, v3

    goto :goto_0

    :cond_8
    move v1, v3

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_2

    :cond_a
    move v1, v2

    goto :goto_3

    :cond_b
    move v1, v2

    goto :goto_4

    :cond_c
    move v3, v2

    goto :goto_5

    :cond_d
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/keyguard/R$dimen;->servicebox_music_view_component_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_6
.end method

.method private updateViewStyleOnWhiteWallpaper()V
    .locals 7

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/ViewStyleUtils;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/ViewStyleUtils;

    move-result-object v3

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Landroid/widget/TextView;

    invoke-virtual {v3, v5, v6}, Lcom/android/keyguard/util/ViewStyleUtils;->updateViewStyle(Landroid/widget/TextView;I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/keyguard/util/SettingsHelper;->isWhiteKeyguardWallpaper()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$color;->dark_navigation_bar_icon_color_lockscreen:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    :goto_0
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    if-eqz v4, :cond_2

    sget v0, Lcom/android/keyguard/R$drawable;->ripple_drawable_dark_oval:I

    :goto_1
    if-eqz v4, :cond_3

    sget v1, Lcom/android/keyguard/R$drawable;->ripple_drawable_dark_rect:I

    :goto_2
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v5, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    invoke-virtual {v5, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void

    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v6, Lcom/android/keyguard/R$color;->dark_navigation_bar_white_icon_color:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getColor(I)I

    move-result v2

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/keyguard/R$drawable;->ripple_drawable_oval:I

    goto :goto_1

    :cond_3
    sget v1, Lcom/android/keyguard/R$drawable;->ripple_drawable_rect:I

    goto :goto_2
.end method


# virtual methods
.method protected attachContentsView(Landroid/animation/Animator$AnimatorListener;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->attachContentsView(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    return-void
.end method

.method public clear()V
    .locals 7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "clear() showOOBEText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", showMusicClosedText = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    if-eqz v0, :cond_c

    :cond_0
    move v2, v4

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Landroid/widget/TextView;

    if-eqz v1, :cond_d

    sget v2, Lcom/android/keyguard/R$string;->servicebox_music_play_first:I

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    if-nez v1, :cond_2

    if-eqz v0, :cond_e

    :cond_2
    const/4 v2, 0x4

    :goto_2
    invoke-virtual {v5, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    const-string/jumbo v5, ""

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-nez v1, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v4, v3

    :cond_8
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_9
    const-string/jumbo v2, ""

    invoke-virtual {p0, v2}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->setLyrics(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v3, Lcom/android/keyguard/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_a
    if-nez v1, :cond_b

    if-eqz v0, :cond_f

    :cond_b
    :goto_3
    return-void

    :cond_c
    move v2, v3

    goto :goto_0

    :cond_d
    sget v2, Lcom/android/keyguard/R$string;->servicebox_music_closed:I

    goto :goto_1

    :cond_e
    move v2, v4

    goto :goto_2

    :cond_f
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    goto :goto_3
.end method

.method protected getContentsView(I)Landroid/view/View;
    .locals 4

    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_small:I

    packed-switch p1, :pswitch_data_0

    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    return-object v1

    :pswitch_0
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_big:I

    goto :goto_0

    :pswitch_1
    sget v0, Lcom/android/keyguard/R$layout;->servicebox_music_page_expand:I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getHolder()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "servicebox_music"

    return-object v0
.end method

.method protected getTransitionOption(Z)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;
    .locals 1

    invoke-static {}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->generateCompositeOption()Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v0

    return-object v0
.end method

.method protected initViews(Landroid/view/View;)V
    .locals 4

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_appinfo:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_artist:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_oobe:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicOOBETextView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_cover:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_cover_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics_scroll:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_lyrics:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_prev_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_play_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_next_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_controller_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mControllerContainer:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_ripple_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_mkkeyboard_space_1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace1:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_mkkeyboard_space_2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewMKKeyboardSpace2:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_top_margin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewTopSpace:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_appinfo_top_margin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoTopSpace:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_appinfo_bottom_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoBottomSpace:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_navigation_space:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewNavibarSpace:Landroid/view/View;

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_big_appinfo_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mBigViewAppInfoContainer:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    :cond_0
    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsHideListener:Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$ViewHideAnimatorListener;

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mAlbumSwitchListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x58

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x55

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    const/16 v3, 0x57

    invoke-direct {v1, v2, v3}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mServiceBoxTriggerListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyleOnWhiteWallpaper()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsShowingPauseBtn:Z

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeAllCacheData()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->onFinishInflate()V

    sget v0, Lcom/android/keyguard/R$id;->servicebox_music_page_holder:I

    invoke-virtual {p0, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicHolder:Landroid/widget/FrameLayout;

    return-void
.end method

.method protected prepareTransition(Lcom/android/keyguard/servicebox/utils/SecTransition;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v5, 0x2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string/jumbo v2, "servicebox_music_page_lyrics"

    new-instance v3, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v3}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v4, 0xf

    invoke-virtual {v3, v4}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setClipFace(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v2, 0x190

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    new-instance v0, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    invoke-direct {v0}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;-><init>()V

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setScalePivot(I)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    if-ne v2, v5, :cond_1

    new-array v2, v9, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_0

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_1

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_2

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v6, v1}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    :goto_0
    const-string/jumbo v2, "music_cover"

    invoke-virtual {p1, v2, v0}, Lcom/android/keyguard/servicebox/utils/SecTransition;->add(Ljava/lang/String;Lcom/android/keyguard/servicebox/utils/SecTransitionOption;)V

    return-void

    :cond_1
    new-array v2, v9, [Landroid/animation/Animator;

    sget-object v3, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_3

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    sget-object v3, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_4

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v8

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v4, v5, [F

    fill-array-data v4, :array_5

    invoke-static {v6, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    invoke-virtual {v0, v1, v6}, Lcom/android/keyguard/servicebox/utils/SecTransitionOption;->setCustomAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Lcom/android/keyguard/servicebox/utils/SecTransitionOption;

    goto :goto_0

    nop

    :array_0
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f4ccccd    # 0.8f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f4ccccd    # 0.8f
    .end array-data

    :array_5
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public refreshViews()V
    .locals 0

    return-void
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setLyrics(Ljava/lang/String;)V
    .locals 5

    const/4 v2, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLyrics() isEmptyLyrics = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicLyricsView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const-string/jumbo p1, ""

    :cond_0
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsBtn:Landroid/view/View;

    if-eqz v0, :cond_5

    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverContainer:Landroid/view/View;

    if-eqz v0, :cond_6

    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    if-eqz v0, :cond_4

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsCoverShowing:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mLyricsScrollView:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playAlbumAnimation(Landroid/view/View;)V

    :cond_4
    return-void

    :cond_5
    move v1, v2

    goto :goto_0

    :cond_6
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 7

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, ""

    const-string/jumbo v0, ""

    const/4 v1, 0x0

    if-eqz p1, :cond_6

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    sget v5, Lcom/android/keyguard/R$string;->servicebox_music_unknown:I

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setMetadata : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.media.metadata.TITLE"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v6}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getBitmapFromMetadata(Landroid/media/MediaMetadata;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v2, v3

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v0, v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v4

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->requestLyrics()V

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    if-eqz v4, :cond_5

    if-eqz v1, :cond_7

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    :goto_1
    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "setMetadata : null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicCoverView:Landroid/widget/ImageView;

    sget v5, Lcom/android/keyguard/R$drawable;->lock_music_player_img_default_cover:I

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1
.end method

.method public setMobileKeyboardState(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/servicebox/pages/KeyguardServiceBoxPage;->setMobileKeyboardState(Z)V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->isBigView()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateSpace()V

    :cond_0
    return-void
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 4

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setPlaybackState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mIsViewInitializing:Z

    invoke-direct {p0, v1, v0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->playControllerAnimation(ZZ)V

    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setSessionEnabled(Z)V
    .locals 4

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3ecccccd    # 0.4f

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPrevBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_7

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mPlayBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_8

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mNextBtn:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mRippleArea:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicAppNameTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_a

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_b

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->mMusicArtistTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_c

    :goto_5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_6
    return-void

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_2

    :cond_a
    move v0, v2

    goto :goto_3

    :cond_b
    move v0, v2

    goto :goto_4

    :cond_c
    move v1, v2

    goto :goto_5
.end method

.method public showExternalActivity()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public updateChildViewsLook()V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;->updateViewStyleOnWhiteWallpaper()V

    return-void
.end method
