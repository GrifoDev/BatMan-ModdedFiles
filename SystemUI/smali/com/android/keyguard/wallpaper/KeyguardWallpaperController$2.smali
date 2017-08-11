.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/keyguard/util/SettingsHelper$OnChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 5

    const/4 v4, 0x2

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->getLockscreenWallpaperTransparent()I

    move-result v0

    const-string/jumbo v1, "KeyguardWallpaperController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onChanged() oldTransType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-static {v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", curTransType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-static {v1}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-get2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)I

    move-result v1

    if-ne v1, v4, :cond_0

    if-eq v0, v4, :cond_0

    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iget-object v1, v1, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/keyguard/util/SettingsHelper;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/util/SettingsHelper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/util/SettingsHelper;->forceBroadcastWhiteKeyguardWallpaper()V

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-static {v1, v0}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-set2(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;I)I

    return-void
.end method
