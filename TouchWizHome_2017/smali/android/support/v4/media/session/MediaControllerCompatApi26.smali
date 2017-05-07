.class Landroid/support/v4/media/session/MediaControllerCompatApi26;
.super Ljava/lang/Object;
.source "MediaControllerCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;,
        Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;,
        Landroid/support/v4/media/session/MediaControllerCompatApi26$TransportControls;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createCallback(Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;

    invoke-direct {v0, p0}, Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;)V

    return-object v0
.end method

.method public static getRepeatMode(Ljava/lang/Object;)I
    .locals 1

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->getRepeatMode()I

    move-result v0

    return v0
.end method

.method public static isShuffleModeEnabled(Ljava/lang/Object;)Z
    .locals 1

    check-cast p0, Landroid/media/session/MediaController;

    invoke-virtual {p0}, Landroid/media/session/MediaController;->isShuffleModeEnabled()Z

    move-result v0

    return v0
.end method
