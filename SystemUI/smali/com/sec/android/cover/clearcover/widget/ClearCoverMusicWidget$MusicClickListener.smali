.class Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;
.super Ljava/lang/Object;
.source "ClearCoverMusicWidget.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MusicClickListener"
.end annotation


# instance fields
.field mKeyCode:I

.field final synthetic this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;


# direct methods
.method public constructor <init>(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;I)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 14

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v1, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->this$0:Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;

    invoke-static {v1}, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;->-get0(Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;

    move-result-object v0

    new-instance v1, Landroid/view/KeyEvent;

    iget v7, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    new-instance v1, Landroid/view/KeyEvent;

    iget v7, p0, Lcom/sec/android/cover/clearcover/widget/ClearCoverMusicWidget$MusicClickListener;->mKeyCode:I

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x101

    move-wide v4, v2

    invoke-direct/range {v1 .. v13}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    invoke-virtual {v0, v1}, Lcom/sec/android/cover/monitor/CoverPlaybackStateMonitor;->sendMediaButtonEvent(Landroid/view/KeyEvent;)Z

    return-void
.end method
