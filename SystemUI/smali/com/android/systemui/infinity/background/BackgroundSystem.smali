.class public abstract Lcom/android/systemui/infinity/background/BackgroundSystem;
.super Ljava/lang/Object;
.source "BackgroundSystem.java"


# instance fields
.field public backgroundHomeAlpha:F

.field backgroundLock:Lcom/android/systemui/infinity/background/TextureBackground;

.field public backgroundLockAlpha:F

.field private colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

.field final context:Landroid/content/Context;

.field gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

.field homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field private textureLock:I

.field private textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/infinity/background/BackgroundSystem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    iput-object p1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method


# virtual methods
.method public draw([F)V
    .locals 4

    const/4 v3, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureLock:I

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->setUniforms([FIF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/TextureBackground;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/background/TextureBackground;->bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/TextureBackground;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/TextureBackground;->draw()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;->setUniforms([FF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    invoke-virtual {v0, v1}, Lcom/android/systemui/infinity/background/GradientBackground;->bindData(Lcom/android/systemui/infinity/common/ColorShaderProgram;)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/background/GradientBackground;->draw()V

    :cond_2
    return-void
.end method

.method public abstract getHomeGradientInputColor()[[F
.end method

.method public abstract getHomeGradientInputPosition()[F
.end method

.method public abstract getHomeGridentHeight()F
.end method

.method public abstract getTextureLockId()I
.end method

.method public hide(I)V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hide() l : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->invalidate()V

    return-void

    :cond_0
    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    goto :goto_0
.end method

.method public hideAll()V
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "hideAll() l : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->invalidate()V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_3

    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->invalidate()V

    :cond_3
    return-void
.end method

.method public onSurfaceCreated()V
    .locals 4

    new-instance v0, Lcom/android/systemui/infinity/background/GradientBackground;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGradientInputPosition()[F

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGradientInputColor()[[F

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getHomeGridentHeight()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/infinity/background/GradientBackground;-><init>([F[[FF)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->gradientBackground:Lcom/android/systemui/infinity/background/GradientBackground;

    new-instance v0, Lcom/android/systemui/infinity/background/TextureBackground;

    invoke-direct {v0}, Lcom/android/systemui/infinity/background/TextureBackground;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLock:Lcom/android/systemui/infinity/background/TextureBackground;

    new-instance v0, Lcom/android/systemui/infinity/common/TextureShaderProgram;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureProgramLock:Lcom/android/systemui/infinity/common/TextureShaderProgram;

    new-instance v0, Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget-object v1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/ColorShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->colorShaderProgram:Lcom/android/systemui/infinity/common/ColorShaderProgram;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->getTextureLockId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/common/TextureHelper;->loadTexture(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->textureLock:I

    return-void
.end method

.method public setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public show(I)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "show() l : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/infinity/background/BackgroundSystem;->invalidate()V

    return-void

    :cond_0
    iput v3, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    goto :goto_0
.end method

.method public showHome()V
    .locals 8

    const-wide/16 v6, 0x258

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showHome() l : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/background/BackgroundSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$3;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/background/BackgroundSystem$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$4;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method public showLock()V
    .locals 8

    const-wide/16 v6, 0x258

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-string/jumbo v0, "GalaxyWallpaper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showLock() l : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " , h : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundHomeAlpha:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v4, v3}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/background/BackgroundSystem$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$1;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->homeAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_1
    iget v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->backgroundLockAlpha:F

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_2
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/background/BackgroundSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/background/BackgroundSystem$2;-><init>(Lcom/android/systemui/infinity/background/BackgroundSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/background/BackgroundSystem;->lockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    :cond_3
    return-void
.end method
