.class Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;
.super Ljava/lang/Object;
.source "ServiceBoxMusicPage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MusicClickListener"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mKeyCode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/servicebox/pages/music/MusicController;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/servicebox/pages/music/ServiceBoxMusicPage$MusicClickListener;->mKeyCode:I

    invoke-virtual {v0, v1}, Lcom/android/keyguard/servicebox/pages/music/MusicController;->sendKeyToPlayer(I)V

    return-void
.end method
