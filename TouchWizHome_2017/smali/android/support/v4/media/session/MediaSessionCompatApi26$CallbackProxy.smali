.class Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;
.super Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;
.source "MediaSessionCompatApi26.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/MediaSessionCompatApi26;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CallbackProxy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;",
        ">",
        "Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy",
        "<TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi24$CallbackProxy;-><init>(Landroid/support/v4/media/session/MediaSessionCompatApi24$Callback;)V

    return-void
.end method


# virtual methods
.method public onSetRepeatMode(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;->onSetRepeatMode(I)V

    return-void
.end method

.method public onSetShuffleModeEnabled(Z)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/media/session/MediaSessionCompatApi26$CallbackProxy;->mCallback:Landroid/support/v4/media/session/MediaSessionCompatApi21$Callback;

    check-cast v0, Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompatApi26$Callback;->onSetShuffleModeEnabled(Z)V

    return-void
.end method
