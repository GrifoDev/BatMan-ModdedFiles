.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$6;
.super Ljava/lang/Object;
.source "MediaControllerCompat.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onShuffleModeChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

.field final synthetic val$shuffleMode:I


# direct methods
.method constructor <init>(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;I)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$6;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    iput p2, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$6;->val$shuffleMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$6;->this$0:Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    invoke-static {v0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->access$500(Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)Landroid/support/v4/media/session/MediaControllerCompat$Callback;

    move-result-object v0

    iget v1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback$6;->val$shuffleMode:I

    invoke-virtual {v0, v1}, Landroid/support/v4/media/session/MediaControllerCompat$Callback;->onShuffleModeChanged(I)V

    return-void
.end method
