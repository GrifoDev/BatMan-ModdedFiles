.class Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;
.super Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;
.source "GalaxyWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GalaxyWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GalaxyWallpaperEngine"
.end annotation


# static fields
.field private static final synthetic -com-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues:[I


# instance fields
.field start:J

.field final synthetic this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;


# direct methods
.method private static synthetic -getcom-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->-com-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->-com-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->values()[Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-virtual {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->-com-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method constructor <init>(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-direct {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;-><init>(Lcom/android/systemui/infinity/OpenGLES2WallpaperService;)V

    return-void
.end method

.method private init()V
    .locals 2

    const-string/jumbo v0, "GalaxyWallpaper"

    const-string/jumbo v1, "init()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get6(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/app/KeyguardManager;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap0(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get9(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get6(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/app/KeyguardManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get7(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    goto :goto_0
.end method

.method private setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V
    .locals 3

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->-getcom-android-systemui-infinity-GalaxyWallpaperService$ModeSwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set0(Lcom/android/systemui/infinity/GalaxyWallpaperService;Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get3()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap6(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap5(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get3()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap1(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->NONE:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get2()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap6(Lcom/android/systemui/infinity/GalaxyWallpaperService;I)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;IIILandroid/os/Bundle;Z)Landroid/os/Bundle;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap0(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "SLEEP_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap2(Lcom/android/systemui/infinity/GalaxyWallpaperService;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :cond_1
    const-string/jumbo v0, "AOD_START"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onScreenOff()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get1()J

    move-result-wide v2

    invoke-static {v0, v2, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap3(Lcom/android/systemui/infinity/GalaxyWallpaperService;J)V

    goto :goto_0

    :cond_3
    const-string/jumbo v0, "WAKE_AOD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_0

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_5

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0, v3}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->resetParticle(Z)V

    goto :goto_0

    :cond_6
    const-string/jumbo v0, "WAKE_LOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v4}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onScreenOn()V

    goto/16 :goto_0

    :cond_7
    const-string/jumbo v0, "ACTION_UNLOCK"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, v4}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    sget-object v0, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    invoke-direct {p0, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->setMode(Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->onDeviceUnlocked()V

    goto/16 :goto_0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-super {p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->getGlSurfaceView()Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set1(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/opengl/GLSurfaceView;)Landroid/opengl/GLSurfaceView;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get5(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Landroid/opengl/GLSurfaceView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GalaxyRenderer;->setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-static {v1, v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set2(Lcom/android/systemui/infinity/GalaxyWallpaperService;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    invoke-direct {p0}, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->init()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 10

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v6}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->AOD:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v6, v7, :cond_0

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v6}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v6

    sget-object v7, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->BLACK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v6, v7, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v6, v6, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/infinity/util/VelocityTracker;->resetValue(FF)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->start:J

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v6, 0x2

    if-ne v0, v6, :cond_4

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v6, v6, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    invoke-virtual {v6, v4, v5}, Lcom/android/systemui/infinity/util/VelocityTracker;->addHistory(FF)V

    goto :goto_0

    :cond_4
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    iget-object v6, v6, Lcom/android/systemui/infinity/GalaxyWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Lcom/android/systemui/infinity/util/VelocityTracker;->getLastVelocityX(I)F

    move-result v1

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-wide v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->start:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x50

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    const v7, 0x3fb33333    # 1.4f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_2

    iget-object v6, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v6}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get10(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyRenderer;

    move-result-object v6

    neg-float v7, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Lcom/android/systemui/infinity/GalaxyRenderer;->onFlick(I)V

    goto :goto_0
.end method

.method public onVisibilityChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;->onVisibilityChanged(Z)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0, p1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-set4(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)Z

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onVisibilityChanged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", mCurrentMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v2}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->HOME:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    invoke-static {v0}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-get4(Lcom/android/systemui/infinity/GalaxyWallpaperService;)Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;->LOCK:Lcom/android/systemui/infinity/GalaxyWallpaperService$Mode;

    if-ne v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GalaxyWallpaperService$GalaxyWallpaperEngine;->this$0:Lcom/android/systemui/infinity/GalaxyWallpaperService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/GalaxyWallpaperService;->-wrap7(Lcom/android/systemui/infinity/GalaxyWallpaperService;Z)V

    goto :goto_0
.end method
