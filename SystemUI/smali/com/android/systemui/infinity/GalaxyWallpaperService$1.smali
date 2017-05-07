.class Lcom/android/systemui/infinity/GalaxyWallpaperService$1;
.super Landroid/content/BroadcastReceiver;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get0()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v1

    sget-object v2, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get8(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onAODBgOff()V

    const-string/jumbo v1, "GalaxyWallpaper"

    const-string/jumbo v2, "received - ACTION_AOD_BG_OFF"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$1;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {v1, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set3(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z

    :cond_2
    return-void
.end method
