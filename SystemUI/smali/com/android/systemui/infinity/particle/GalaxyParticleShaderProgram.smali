.class public Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;
.super Lcom/android/systemui/infinity/common/ShaderProgram;
.source "GalaxyParticleShaderProgram.java"


# instance fields
.field private final aColorLocation:I

.field private final aHideOnHomeLocation:I

.field private final aPositionLocation:I

.field private final aSizeLocation:I

.field private final uMatrixLocation:I

.field private final uParticleAlphaLocation:I

.field private final uParticleDistanceLocation:I

.field private final uPlusAlphaLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0a0008

    const v1, 0x7f0a0007

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/infinity/common/ShaderProgram;-><init>(Landroid/content/Context;II)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "a_Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aColorLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "a_Size"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aSizeLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "a_HideOnHome"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aHideOnHomeLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "u_PlusAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uPlusAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "u_ParticleAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uParticleAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->program:I

    const-string/jumbo v1, "u_ParticleDistance"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uParticleDistanceLocation:I

    return-void
.end method


# virtual methods
.method public getColorAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aColorLocation:I

    return v0
.end method

.method public getPositionAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aPositionLocation:I

    return v0
.end method

.method public getSizeAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aSizeLocation:I

    return v0
.end method

.method public getaHideOnHomeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->aHideOnHomeLocation:I

    return v0
.end method

.method public setUniforms([FFFF)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uMatrixLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uPlusAlphaLocation:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uParticleAlphaLocation:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->uParticleDistanceLocation:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
