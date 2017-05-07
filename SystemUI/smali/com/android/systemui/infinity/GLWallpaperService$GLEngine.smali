.class Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GLWallpaperService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;
    }
.end annotation


# instance fields
.field protected glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

.field protected rendererHasBeenSet:Z

.field final synthetic this$0:Lcom/android/systemui/infinity/GLWallpaperService;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GLWallpaperService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->this$0:Lcom/android/systemui/infinity/GLWallpaperService;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    return-void
.end method


# virtual methods
.method public getGlSurfaceView()Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    return-object v0
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    new-instance v0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    iget-object v1, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->this$0:Lcom/android/systemui/infinity/GLWallpaperService;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;-><init>(Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->onDestroy()V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    iget-boolean v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->rendererHasBeenSet:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->onResume()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->onPause()V

    goto :goto_0
.end method

.method protected setEGLContextClientVersion(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->setEGLContextClientVersion(I)V

    return-void
.end method

.method protected setPreserveEGLContextOnPause(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->setPreserveEGLContextOnPause(Z)V

    return-void
.end method

.method protected setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->glSurfaceView:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->setRenderMode(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->rendererHasBeenSet:Z

    return-void
.end method
