.class public Landroid/support/v4/media/session/MediaControllerCompatApi26$TransportControls;
.super Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;
.source "MediaControllerCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TransportControls"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v4/media/session/MediaControllerCompatApi23$TransportControls;-><init>()V

    return-void
.end method

.method public static setRepeatMode(Ljava/lang/Object;I)V
    .locals 0

    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController$TransportControls;->setRepeatMode(I)V

    return-void
.end method

.method public static setShuffleModeEnabled(Ljava/lang/Object;Z)V
    .locals 0

    check-cast p0, Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {p0, p1}, Landroid/media/session/MediaController$TransportControls;->setShuffleModeEnabled(Z)V

    return-void
.end method
