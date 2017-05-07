.class Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;
.super Ljava/lang/Object;
.source "KeyguardImageWallpaper.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string/jumbo v0, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-boolean v0, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mReloadingBitmap:Z

    if-nez v0, :cond_1

    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "Re calculate white bg settings"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap1(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-get0(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->-wrap2(Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string/jumbo v0, "KeyguardImageWallpaper"

    const-string/jumbo v1, "Bitmap reloading... "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/KeyguardImageWallpaper;->mSettingsChangedWhileReloadingBitmap:Z

    goto :goto_0
.end method
