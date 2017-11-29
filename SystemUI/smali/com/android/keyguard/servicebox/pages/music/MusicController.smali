.class public Lcom/android/keyguard/servicebox/pages/music/MusicController;
.super Ljava/lang/Object;
.source "MusicController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/servicebox/pages/music/MusicController$1;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$2;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$3;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$4;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;,
        Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;


# instance fields
.field private mAppLabelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mContext:Landroid/content/Context;

.field private mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

.field private mIsAdditionalSpace:Z

.field private mIsListeningStarted:Z

.field private mIsMusicClosedTextNeed:Z

.field private mIsOOBETextNeed:Z

.field private mIsSessionEnabled:Z

.field private mLastMediaMetadata:Landroid/media/MediaMetadata;

.field private mLastMusicAppName:Ljava/lang/String;

.field private mLastMusicLyrics:Ljava/lang/String;

.field private mLastPackageName:Ljava/lang/String;

.field private mLastPlaybackState:Landroid/media/session/PlaybackState;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

.field private mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

.field private mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

.field private mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;


# direct methods
.method static synthetic -get0(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsAdditionalSpace:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Landroid/media/MediaMetadata;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/keyguard/servicebox/pages/music/MusicController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsAdditionalSpace:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/keyguard/servicebox/pages/music/MusicController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/MediaMetadata;)Landroid/media/MediaMetadata;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    return-object p1
.end method

.method static synthetic -set5(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set6(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set7(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set8(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/media/session/PlaybackState;)Landroid/media/session/PlaybackState;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    return-object p1
.end method

.method static synthetic -set9(Lcom/android/keyguard/servicebox/pages/music/MusicController;Landroid/app/PendingIntent;)Landroid/app/PendingIntent;
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/keyguard/servicebox/pages/music/MusicController;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadLastInformation()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->resetDataAndClear()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->saveCurrentDataToDB()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->writeMusicPageToSetting()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    iput-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    iput-boolean v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsAdditionalSpace:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$1;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$2;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$3;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$4;-><init>(Lcom/android/keyguard/servicebox/pages/music/MusicController;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-direct {v0, p1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mOnHeadsetListener:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;

    invoke-direct {v0, v1, v2}, Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;-><init>(Landroid/content/Context;Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver$OnHeadsetListener;)V

    iput-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mHeadsetReceiver:Lcom/android/keyguard/servicebox/pages/music/HeadsetReceiver;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadLastInformation()V

    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;
    .locals 2

    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    if-nez v0, :cond_1

    const-class v1, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    :cond_1
    sget-object v0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sInstance:Lcom/android/keyguard/servicebox/pages/music/MusicController;

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private loadLastInformation()V
    .locals 8

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v7, -0x2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "servicebox_music_last_pkg"

    invoke-static {v3, v6, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v6, "servicebox_show_music_oobe_text"

    invoke-static {v3, v6, v4, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    if-eqz v3, :cond_1

    :goto_1
    iput-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    const-string/jumbo v3, ""

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadLastInformation() oobe = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", closed = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move v3, v5

    goto :goto_0

    :cond_1
    move v5, v4

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_title"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_artist"

    invoke-static {v3, v4, v7}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/media/MediaMetadata$Builder;

    invoke-direct {v0}, Landroid/media/MediaMetadata$Builder;-><init>()V

    const-string/jumbo v3, "android.media.metadata.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    const-string/jumbo v3, "android.media.metadata.ARTIST"

    invoke-virtual {v0, v3, v1}, Landroid/media/MediaMetadata$Builder;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/media/MediaMetadata$Builder;

    invoke-virtual {v0}, Landroid/media/MediaMetadata$Builder;->build()Landroid/media/MediaMetadata;

    move-result-object v3

    iput-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "loadLastInformation() ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadMusicAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string/jumbo v2, ""

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v2, :cond_2

    const-string/jumbo v2, ""

    return-object v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, p1, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "loadMusicAppLabel() packageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", label = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, ""

    return-object v2

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string/jumbo v2, ""

    return-object v2
.end method

.method private resetDataAndClear()V
    .locals 6

    const/4 v5, -0x2

    const-string/jumbo v2, "MusicController_LOCK"

    const-string/jumbo v3, "resetDataAndClear()"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "servicebox_music_last_title"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "servicebox_music_last_artist"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "servicebox_music_last_pkg"

    const-string/jumbo v4, ""

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->loadLastInformation()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private saveCurrentDataToDB()V
    .locals 9

    const/4 v8, 0x0

    const/4 v7, -0x2

    const/16 v6, 0xc8

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getMediaButtonReceiver()Landroid/app/PendingIntent;

    move-result-object v1

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveCurrentDataToDB() mbr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v3, :cond_3

    const-string/jumbo v2, ""

    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    if-nez v3, :cond_4

    const-string/jumbo v0, ""

    :goto_1
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_0

    invoke-virtual {v2, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v3, v6, :cond_1

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_title"

    invoke-static {v3, v4, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_artist"

    invoke-static {v3, v4, v0, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "servicebox_music_last_pkg"

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v4, "android.media.metadata.TITLE"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    const-string/jumbo v4, "android.media.metadata.ARTIST"

    invoke-virtual {v3, v4}, Landroid/media/MediaMetadata;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private startMusicStateListening()V
    .locals 3

    const-string/jumbo v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startMusicStateListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMediaPlaybackStateChangeListener:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->setOnPlaybackStateChangedListener(Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor$OnPlaybackStateChangedListener;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private stopMusicStateListening()V
    .locals 3

    const-string/jumbo v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopMusicStateListening() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->removeOnPlaybackStateChangedListener()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private writeMusicPageToSetting()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v0

    const-string/jumbo v1, "servicebox_music"

    invoke-virtual {v0, v1}, Lcom/android/keyguard/util/SettingsHelper;->setServiceBoxSharePageName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 5

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "addCallback() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_1

    monitor-exit v3

    return-void

    :cond_2
    :try_start_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    invoke-interface {p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_4

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->startMusicStateListening()V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public clearListeners()V
    .locals 2

    const-string/jumbo v0, "MusicController_LOCK"

    const-string/jumbo v1, "clearListeners()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getLastSavedSessionPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public isMusicClosedTextNeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsMusicClosedTextNeed:Z

    return v0
.end method

.method public isMusicPlaying()Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    if-nez v3, :cond_0

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-virtual {v3}, Landroid/media/session/PlaybackState;->getState()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    :cond_1
    :goto_0
    return v1

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public isOOBETextNeed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsOOBETextNeed:Z

    return v0
.end method

.method public launchMusicApp(Lcom/android/keyguard/servicebox/KeyguardStatusCallback;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string/jumbo v3, "MusicController_LOCK"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "launchMusicApp() pk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return v7

    :cond_0
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v3}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->getSessionActivity()Landroid/app/PendingIntent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "launch session intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1, v2, v6}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    if-nez v3, :cond_3

    :cond_2
    return v7

    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {p1, v0, v6}, Lcom/android/keyguard/servicebox/KeyguardStatusCallback;->startActivity(Landroid/content/Intent;Z)V

    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "launch package intent"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    :cond_4
    const-string/jumbo v3, "MusicController_LOCK"

    const-string/jumbo v4, "there is no launch intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7
.end method

.method public pushMediaKeyEvent(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    return-void
.end method

.method public removeAllCacheData()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mAppLabelMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public removeCallback(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 5

    const-string/jumbo v2, "MusicController_LOCK"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "removeCallback() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    if-eqz v1, :cond_1

    if-ne v1, p1, :cond_2

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-interface {v2}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->clear()V

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mSelfListenerForAod:Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v3

    iget-object v2, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_5

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->stopMusicStateListening()V

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->removeAllCacheData()V

    :cond_5
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public requestCacheData(Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;)V
    .locals 3

    const-string/jumbo v0, "MusicController_LOCK"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestCacheData() callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isOOBETextNeed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->isMusicClosedTextNeed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPlaybackState:Landroid/media/session/PlaybackState;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setPlaybackState(Landroid/media/session/PlaybackState;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setMetadata(Landroid/media/MediaMetadata;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicLyrics:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setLyrics(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMusicAppName:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setAppName(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsSessionEnabled:Z

    invoke-interface {p1, v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListener;->setSessionEnabled(Z)V

    return-void
.end method

.method public requestLyrics()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastMediaMetadata:Landroid/media/MediaMetadata;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->requestLyrics(Landroid/media/MediaMetadata;)V

    return-void
.end method

.method public sendKeyToPlayer(I)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    new-instance v1, Landroid/view/KeyEvent;

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    move v7, p1

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method

.method public showBigActivity()Z
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showBigActivity() pi = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    return v4

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMusicActivityLaunchPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v0

    const-string/jumbo v1, "MusicController_LOCK"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "showBigActivity() occur exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    return v4
.end method

.method public updateBlackList()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->loadBlackList()V

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mLastPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->isBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->resetDataAndClear()V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    return-void
.end method

.method public updateSessions()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mIsListeningStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/MusicController;->mMonitor:Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/servicebox/pages/music/PlaybackStateMonitor;->updateSessions()V

    :cond_0
    return-void
.end method
