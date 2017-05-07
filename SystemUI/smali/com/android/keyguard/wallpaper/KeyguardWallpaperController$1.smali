.class Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardWallpaperController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;
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

    iput-object p1, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "com.sec.android.intent.action.LAUNCHER_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-get1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;)I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iget-object v2, v2, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/keyguard/KeyguardRune;->isDcmLauncher(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-set1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iget-object v2, v2, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->-set1(Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;Z)Z

    iget-object v2, p0, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController$1;->this$0:Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;

    iget-object v2, v2, Lcom/android/keyguard/wallpaper/KeyguardWallpaperController;->mService:Landroid/app/IWallpaperManager;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Landroid/app/IWallpaperManager;->setDCMLauncherEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string/jumbo v2, "KeyguardWallpaperController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "System dead?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
