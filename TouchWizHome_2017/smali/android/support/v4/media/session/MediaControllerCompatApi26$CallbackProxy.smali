.class Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;
.super Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;
.source "MediaControllerCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaControllerCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi21$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;)V

    return-void
.end method


# virtual methods
.method public onRepeatModeChanged(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;->onRepeatModeChanged(I)V

    return-void
.end method

.method public onShuffleModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompatApi26$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaControllerCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaControllerCompatApi26$Callback;->onShuffleModeChanged(Z)V

    return-void
.end method
