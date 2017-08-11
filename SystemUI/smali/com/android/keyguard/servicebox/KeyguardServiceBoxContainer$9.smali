.class Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;
.super Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;
.source "KeyguardServiceBoxContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;


# direct methods
.method constructor <init>(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-direct {p0}, Lcom/android/keyguard/servicebox/pages/music/MusicController$MusicControllerListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public setPlaybackState(Landroid/media/session/PlaybackState;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    iget-object v1, p0, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer$9;->this$0:Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;

    invoke-virtual {v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->getCurrentPagePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;->-wrap0(Lcom/android/keyguard/servicebox/KeyguardServiceBoxContainer;Ljava/lang/String;)V

    return-void
.end method
