.class Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi26;
.super Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;
.source "MediaControllerCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TransportControlsApi26"
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi24;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi26;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi26$TransportControls;->setRepeatMode(Ljava/lang/Object;I)V

    return-void
.end method

.method public setShuffleModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$TransportControlsApi26;->mControlsObj:Ljava/lang/Object;

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi26$TransportControls;->setShuffleModeEnabled(Ljava/lang/Object;Z)V

    return-void
.end method
