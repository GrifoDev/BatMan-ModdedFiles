.class Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "GLWallpaperService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WallpaperGLSurfaceView"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;


# direct methods
.method constructor <init>(Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->this$1:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    invoke-direct {p0, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getHolder()Landroid/view/SurfaceHolder;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine$WallpaperGLSurfaceView;->this$1:Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/GLWallpaperService$GLEngine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onDetachedFromWindow()V

    return-void
.end method
