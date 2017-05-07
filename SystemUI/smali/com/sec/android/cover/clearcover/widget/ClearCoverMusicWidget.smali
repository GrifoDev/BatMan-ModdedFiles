.class public Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
.super Landroid/widget/FrameLayout;
.source "ClearCoverMusicWidget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$1;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;,
        Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mButtonsEnabbled:Z

.field private mMetaData:Landroid/media/MediaMetadata;

.field private mMusicAppTextView:Landroid/widget/TextView;

.field private mMusicArtistTextView:Landroid/widget/TextView;

.field private mMusicNext:Landroid/widget/ImageButton;

.field private mMusicPlay:Landroid/widget/ImageButton;

.field private mMusicPrevious:Landroid/widget/ImageButton;

.field private mMusicTitleTextView:Landroid/widget/TextView;

.field private mPlaybackState:Landroid/media/session/PlaybackState;

.field private mTextContainer:Landroid/view/ViewGroup;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->updateDescriptions()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    new-instance v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$1;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    return-void
.end method

.method private updateButtonEnabledState()V
    .locals 10

    const-wide/16 v8, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v6, 0x20

    and-long/2addr v4, v6

    cmp-long v0, v4, v8

    if-eqz v0, :cond_6

    :cond_1
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    iget-boolean v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getActions()J

    move-result-wide v4

    const-wide/16 v6, 0x10

    and-long/2addr v4, v6

    cmp-long v3, v4, v8

    if-eqz v3, :cond_8

    :cond_3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    :cond_4
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mTextContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mTextContainer:Landroid/view/ViewGroup;

    iget-boolean v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setEnabled(Z)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mTextContainer:Landroid/view/ViewGroup;

    iget-boolean v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    if-eqz v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setAlpha(F)V

    :cond_5
    return-void

    :cond_6
    move v0, v2

    goto :goto_0

    :cond_7
    move v0, v2

    goto :goto_0

    :cond_8
    move v1, v2

    goto :goto_1

    :cond_9
    move v1, v2

    goto :goto_1

    :cond_a
    const v0, 0x3ecccccd    # 0.4f

    goto :goto_2
.end method

.method private updateDescriptions()V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_next:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_previous:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    iput-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicAppTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->updateDescriptions()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    const/4 v2, 0x0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_app:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicAppTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicAppTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_SERVICE_BOX:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicAppTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    sget-boolean v0, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_SERVICE_BOX:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_music_widget_text_container:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mTextContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mTextContainer:Landroid/view/ViewGroup;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;

    invoke-direct {v1, p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$2;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_title:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_artist:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_previous:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPrevious:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x58

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_play:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x55

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_next:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicNext:Landroid/widget/ImageButton;

    new-instance v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;

    const/16 v2, 0x57

    invoke-direct {v1, p0, v2}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setApplicationName(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setApplicationName: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicAppTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setButtonState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mButtonsEnabbled:Z

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->updateButtonEnabledState()V

    return-void
.end method

.method public setMetadata(Landroid/media/MediaMetadata;)V
    .locals 4

    const/4 v3, 0x1

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->clear_cover_servicebox_music_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-virtual {v0, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    sget v1, Lcom/sec/android/sviewcover/R$string;->clear_cover_servicebox_music_unknown:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :goto_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicArtistTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, "android.media.metadata.ARTIST"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicTitleTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMetaData:Landroid/media/MediaMetadata;

    const-string/jumbo v2, "android.media.metadata.TITLE"

    invoke-virtual {v1, v2}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 3

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->clear_music_pause_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_pause:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->updateButtonEnabledState()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    sget v1, Lcom/sec/android/sviewcover/R$drawable;->clear_music_play_button:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mMusicPlay:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/sec/android/sviewcover/R$string;->tts_play:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
