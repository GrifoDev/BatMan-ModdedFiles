.class public Lcom/android/systemui/infinity/common/TextureShaderProgram;
.super Lcom/android/systemui/infinity/common/ShaderProgram;
.source "TextureShaderProgram.java"


# instance fields
.field private final aPositionLocation:I

.field private final aTextureCoordinatesLocation:I

.field private final mOpacityUniformHandle:I

.field private final uMatrixLocation:I

.field private final uTextureUnitLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f0a000c

    const v1, 0x7f0a000b

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/infinity/common/ShaderProgram;-><init>(Landroid/content/Context;II)V

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->program:I

    const-string/jumbo v1, "u_TextureUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->uTextureUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->program:I

    const-string/jumbo v1, "u_Opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->mOpacityUniformHandle:I

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->program:I

    const-string/jumbo v1, "a_TextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->aTextureCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public getPositionAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->aPositionLocation:I

    return v0
.end method

.method public getTextureCoordinatesAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->aTextureCoordinatesLocation:I

    return v0
.end method

.method public setUniforms([FIF)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->uMatrixLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c0

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->uTextureUnitLocation:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    iget v0, p0, Lcom/android/systemui/infinity/common/TextureShaderProgram;->mOpacityUniformHandle:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
