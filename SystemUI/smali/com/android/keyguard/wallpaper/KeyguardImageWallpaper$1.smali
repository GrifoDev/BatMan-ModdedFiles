.class Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;
.super Landroid/os/Handler;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/os/Bundle;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
