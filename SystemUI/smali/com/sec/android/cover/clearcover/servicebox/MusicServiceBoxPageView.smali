.class public Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;
.super Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;
.source "MusicServiceBoxPageView.java"

# interfaces
.implements Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

.field private mNoMusicTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ClearCover"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    return-void
.end method

.method private loadLastInformation()V
    .locals 8

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "servicebox_music_last_pkg"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    iput-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    iput-object v7, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v4}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->clear()V

    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    return-void

    :cond_0
    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "servicebox_music_last_title"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "servicebox_music_last_artist"

    invoke-static {}, Landroid/app/ActivityManager;->semGetCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {v0, v4, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v4, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    new-instance v3, Landroid/media/session/PlaybackState$Builder;

    invoke-direct {v3}, Landroid/media/session/PlaybackState$Builder;-><init>()V

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x2

    invoke-virtual {v3, v7, v4, v5, v6}, Landroid/media/session/PlaybackState$Builder;->setState(IJF)Landroid/media/session/PlaybackState$Builder;

    const-wide/16 v4, 0x30

    invoke-virtual {v3, v4, v5}, Landroid/media/session/PlaybackState$Builder;->setActions(J)Landroid/media/session/PlaybackState$Builder;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState$Builder;->build()Landroid/media/session/PlaybackState;

    move-result-object v4

    iput-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object v4, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iget-object v5, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getMusicAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setApplicationName(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {p0, v4}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    return-void
.end method

.method private updateMusicVisibility(Z)V
    .locals 7

    const/16 v6, 0x8

    const/4 v5, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v5}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "servicebox_show_music_oobe_text"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :goto_1
    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    sget v1, Lcom/sec/android/sviewcover/R$string;->clear_cover_no_music:I

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, v6}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setVisibility(I)V

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget v1, Lcom/sec/android/sviewcover/R$string;->clear_cover_music_closed:I

    goto :goto_2
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Lcom/sec/android/cover/clearcover/servicebox/ServiceBoxPageView;->onFinishInflate()V

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_music_widget:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    sget v0, Lcom/sec/android/sviewcover/R$id;->clear_cover_servicebox_music_page_no_music:I

    invoke-virtual {p0, v0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mNoMusicTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->loadLastInformation()V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 1

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setMetadata(Landroid/media/MediaMetadata;)V

    :cond_0
    return-void
.end method

.method public onMusicButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setButtonState(Z)V

    return-void
.end method

.method public onMusicPakcageChanged(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMusicPakcageChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getMusicAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setApplicationName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/media/session/PlaybackState;->getState()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isCurentlyPlaying()Z

    move-result v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/clearcover/servicebox/utils/ServiceBoxPageResetTimer;->setMusicPlaying(Z)V

    return-void

    :pswitch_0
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->updateMusicVisibility(Z)V

    :pswitch_1
    iget-object v1, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-virtual {v1, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSessionDestroyed()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->mMusicWidget:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sec/android/cover/clearcover/servicebox/MusicServiceBoxPageView;->loadLastInformation()V

    :cond_0
    return-void
.end method
