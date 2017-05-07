.class public abstract Lcom/android/systemui/infinity/OpenGLES2WallpaperService;
.super Lcom/android/systemui/infinity/GLWallpaperService;
.source "OpenGLES2WallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/GLWallpaperService;-><init>()V

    return-void
.end method


# virtual methods
.method abstract getNewRenderer()Landroid/opengl/GLSurfaceView$Renderer;
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    new-instance v0, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;

    invoke-direct {v0, p0}, Lcom/android/systemui/infinity/OpenGLES2WallpaperService$OpenGLES2Engine;-><init>(Lcom/android/systemui/infinity/OpenGLES2WallpaperService;)V

    return-object v0
.end method
