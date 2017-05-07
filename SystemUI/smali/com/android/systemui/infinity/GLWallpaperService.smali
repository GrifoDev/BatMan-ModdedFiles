.class public abstract Lcom/android/systemui/infinity/GLWallpaperService;
.super Landroid/service/wallpaper/WallpaperService;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
    }
.end annotation


# instance fields
.field protected engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

.field tracker:Lcom/android/systemui/infinity/util/VelocityTracker;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    invoke-static {}, Lcom/android/systemui/infinity/util/VelocityTracker;->getInstance()Lcom/android/systemui/infinity/util/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->tracker:Lcom/android/systemui/infinity/util/VelocityTracker;

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;-><init>(Lcom/android/systemui/infinity/GLWallpaperService;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService;->engine:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    return-void
.end method
