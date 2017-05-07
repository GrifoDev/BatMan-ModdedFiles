.class public Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
.super Ljava/lang/Object;
.source "CoverPlaybackStateMonitor.java"

# interfaces
.implements Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;,
        Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;
    }
.end annotation


# static fields
.field private static final AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

.field private static final AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

.field private static final SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;


# instance fields
.field private mAppNamesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mForceOnlyClockPage:Z

.field private mIsAnyActiveSession:Z

.field private mMediaController:Landroid/media/session/MediaController;

.field private mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSessionCb:Landroid/media/session/MediaController$Callback;

.field private mSessionManager:Landroid/media/session/MediaSessionManager;

.field private mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mAppNamesMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get3(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaController;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    return-object v0
.end method

.method static synthetic -get4(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Landroid/media/session/MediaSessionManager;
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)Z
    .locals 1

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isServiceBoxInUse()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-class v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.music"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.sec.android.app.music"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.app.music.chn"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.spotify.music"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string/jumbo v1, "com.sec.android.app.voicenote"

    aput-object v1, v0, v2

    const-string/jumbo v1, "com.samsung.android.app.memo"

    aput-object v1, v0, v3

    const-string/jumbo v1, "com.samsung.android.app.notes"

    aput-object v1, v0, v4

    const-string/jumbo v1, "com.shazam.android"

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.music"

    aput-object v1, v0, v2

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mAppNamesMap:Ljava/util/Map;

    iput-boolean v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mIsAnyActiveSession:Z

    iput-boolean v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mForceOnlyClockPage:Z

    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$1;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$2;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "media_session"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaSessionManager;

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/sec/android/sviewcover/R$bool;->force_only_clock_page:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mForceOnlyClockPage:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    .locals 2

    sget-object v1, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    :cond_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sInstance:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMediaControllerForCover(Ljava/util/List;)Landroid/media/session/MediaController;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)",
            "Landroid/media/session/MediaController;"
        }
    .end annotation

    const/4 v9, 0x0

    const-wide/16 v12, 0x2

    const-wide/16 v10, 0x0

    const/4 v8, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object v8

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_2

    and-long v6, v2, v12

    cmp-long v6, v6, v10

    if-eqz v6, :cond_2

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    return-object v0

    :cond_3
    return-object v8

    :cond_4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isRelevant(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    invoke-virtual {v5}, Landroid/media/session/PlaybackState;->getState()I

    move-result v6

    const/4 v7, 0x6

    if-ne v6, v7, :cond_5

    and-long v6, v2, v12

    cmp-long v6, v6, v10

    if-eqz v6, :cond_5

    return-object v0

    :cond_6
    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v6, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/media/session/MediaController;

    invoke-virtual {v6}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v6

    iget-object v7, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v7}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    and-long v6, v2, v12

    cmp-long v6, v6, v10

    if-eqz v6, :cond_0

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "onActiveSessionsChanged().Top of List<MediaController> is same as before : "

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    return-object v6
.end method

.method private getMediaControllerForServiceBox(Ljava/util/List;)Landroid/media/session/MediaController;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)",
            "Landroid/media/session/MediaController;"
        }
    .end annotation

    const/4 v10, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-object v10

    :cond_1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v5

    if-eqz v5, :cond_2

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

    if-eqz v6, :cond_3

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

    array-length v6, v6

    if-lez v6, :cond_3

    sget-object v6, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->SERVICE_BOX_META_DATA_SKIP_PACKAGES:[Ljava/lang/String;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_3

    return-object v0

    :cond_3
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getFlags()J

    move-result-wide v2

    const-wide/16 v6, 0x2

    and-long/2addr v6, v2

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_2

    return-object v0
.end method

.method private getMetadataString(Landroid/media/MediaMetadata;)Ljava/lang/String;
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Artist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.media.metadata.ARTIST"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, " Track: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "android.media.metadata.TITLE"

    invoke-virtual {p1, v1}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private isServiceBoxInUse()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    sget-boolean v2, Lcom/sec/android/cover/CoverRune;->FEATURE_SUPPORT_SERVICE_BOX:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "add_info_music_control"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mForceOnlyClockPage:Z

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private updateController(Landroid/media/session/MediaController;)V
    .locals 3

    const/4 v0, 0x1

    monitor-enter p0

    if-nez p1, :cond_4

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v2}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    :cond_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-boolean v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mIsAnyActiveSession:Z

    if-eqz v2, :cond_2

    const/4 v0, 0x0

    :cond_2
    invoke-interface {v1, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicButtonEnabled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSession$Token;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    :cond_5
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    :cond_6
    new-instance v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;-><init>(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$SessionCallback;)V

    iput-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicPakcageChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicButtonEnabled(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public getCurrentlyPlayingPacakge()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    monitor-exit p0

    return-object v1

    :cond_1
    monitor-exit p0

    return-object v3

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public getIntentForMusicApplication()Landroid/app/PendingIntent;
    .locals 6

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getCurrentlyPlayingPacakge()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_pkg"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v5, 0x10000000

    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    :cond_2
    return-object v1
.end method

.method public getMusicAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mAppNamesMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/sec/android/cover/CoverUtils;->getPackageName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mAppNamesMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public isCurentlyPlaying()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_0
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    if-nez v0, :cond_1

    monitor-exit p0

    return v2

    :cond_1
    :try_start_2
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_3

    :cond_2
    :goto_0
    monitor-exit p0

    return v1

    :cond_3
    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public isRelevant(Ljava/lang/String;)Z
    .locals 10

    const/4 v9, 0x1

    const/4 v6, 0x0

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v5, :cond_0

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_0

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_DISABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v5, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_0

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result=false reason=BLACK_LIST"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_0
    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    if-eqz v5, :cond_1

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_1

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->AUTO_ENABLED_PACKAGES:[Ljava/lang/String;

    invoke-static {v5, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRelevant packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " result=true reason=WHITE_LIST"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_1
    :try_start_0
    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPm:Landroid/content/pm/PackageManager;

    const/16 v7, 0x80

    invoke-virtual {v5, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_2

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v7, "com.sec.android.cover.ledcover.SUPPORT_MUSIC"

    const/4 v8, 0x0

    invoke-virtual {v5, v7, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result=true reason=METADATA"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v9

    :catch_0
    move-exception v1

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " not found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    iget-object v5, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverNotificationMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sec/android/cover/monitor/CoverNotificationMonitor;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    if-eqz v2, :cond_4

    array-length v7, v2

    move v5, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v3, v2, v5

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v8

    if-eqz v8, :cond_3

    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "isRelevant packageName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " result=true reason=NOTIFICATION"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    sget-object v5, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isRelevant packageName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " result=false reason=END"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6
.end method

.method public onActiveSessionsChanged(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/session/MediaController;",
            ">;)V"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    const-string/jumbo v4, "Size: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/session/MediaController;

    const-string/jumbo v4, " Package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " State: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, " Metadata: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getMetadataString(Landroid/media/MediaMetadata;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v4, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onActiveSessionsChanged controllers: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mIsAnyActiveSession:Z

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->isServiceBoxInUse()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getMediaControllerForServiceBox(Ljava/util/List;)Landroid/media/session/MediaController;

    move-result-object v0

    :goto_1
    invoke-direct {p0, v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    return-void

    :cond_2
    invoke-direct {p0, p1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getMediaControllerForCover(Ljava/util/List;)Landroid/media/session/MediaController;

    move-result-object v0

    goto :goto_1
.end method

.method public sendMediaButtonEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMediaButtonEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: KeyEvent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v3

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mIsAnyActiveSession:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: There is an active session but not handled by us."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v3

    :cond_1
    :try_start_2
    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "sendMediaButtonEvent: No current media session, send event through session manager"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/media/session/MediaSessionManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v0, p1}, Landroid/media/session/MediaController;->dispatchMediaButtonEvent(Landroid/view/KeyEvent;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOnPlaybackStateChangedListener(Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;)V
    .locals 2

    iput-object p1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMetadataChanged(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mMediaController:Landroid/media/session/MediaController;

    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicPakcageChanged(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicButtonEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mIsAnyActiveSession:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onMusicButtonEnabled(Z)V

    goto :goto_0
.end method

.method public start()V
    .locals 6

    const/4 v5, -0x2

    const/4 v4, 0x0

    sget-object v2, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "Start"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v2, "com.samsung.android.REMOVE_MEDIA_NOTIFICATION"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :cond_0
    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, p0, v4, v5, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;ILandroid/os/Handler;)V

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v2, v4, v5}, Landroid/media/session/MediaSessionManager;->getActiveSessionsForUser(Landroid/content/ComponentName;I)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->onActiveSessionsChanged(Ljava/util/List;)V

    iget-object v2, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v2

    iget-object v3, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v2, v3}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->registerCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mOnPlaybackStateChangedListener:Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-interface {v0}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor$OnPlaybackStateChangedListener;->onSessionDestroyed()V

    :cond_0
    invoke-direct {p0, v2}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->updateController(Landroid/media/session/MediaController;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mSessionManager:Landroid/media/session/MediaSessionManager;

    invoke-virtual {v0, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mPlayBackStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->mUpdateMonitorCallback:Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->unregisterCallback(Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;)V

    return-void
.end method
