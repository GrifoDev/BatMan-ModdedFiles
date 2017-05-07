.class Lcom/android/keyguard/wallpaper/WallpaperViewController$3;
.super Lcom/android/keyguard/KnoxStateMonitorCallback;
.source "WallpaperViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/WallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/WallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    invoke-direct {p0}, Lcom/android/keyguard/KnoxStateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnableMDMWallpaper()V
    .locals 3

    const/16 v2, 0x259

    const-string/jumbo v0, "WallpaperViewController"

    const-string/jumbo v1, "enable MDMWallpaper!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/WallpaperViewController$3;->this$0:Lcom/android/keyguard/wallpaper/WallpaperViewController;

    iget-object v0, v0, Lcom/android/keyguard/wallpaper/WallpaperViewController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
