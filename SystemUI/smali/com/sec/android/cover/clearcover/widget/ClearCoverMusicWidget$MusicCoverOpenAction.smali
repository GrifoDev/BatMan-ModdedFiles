.class Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;
.super Ljava/lang/Object;
.source "ClearCoverMusicWidget.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverOpenActionManager$CoverOpenAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicCoverOpenAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;


# direct methods
.method private constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;-><init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)V

    return-void
.end method


# virtual methods
.method public getActionDescription()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getCurrentlyPlayingPacakge()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onCoverOpened()V
    .locals 2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getIntentForMusicApplication()Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicCoverOpenAction;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitor;->sendNotificationPendingIntentOpen(Landroid/app/PendingIntent;)V

    return-void
.end method
