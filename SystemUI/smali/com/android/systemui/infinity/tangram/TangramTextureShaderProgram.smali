.class public Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;
.super Lcom/android/systemui/infinity/common/ShaderProgram;
.source "TangramTextureShaderProgram.java"


# instance fields
.field private final aMaskTextureCoordinatesLocation:I

.field private final aMovePositionLocation:I

.field private final aMoveYPositionLocation:I

.field private final aPositionLocation:I

.field private final uMaskUnitLocation:I

.field private final uMatrixLocation:I

.field private final uOverallAlphaLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f11000a

    const v1, 0x7f110009

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/infinity/common/ShaderProgram;-><init>(Landroid/content/Context;II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "u_MaskUnit"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uMaskUnitLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "a_MovePosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMovePositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "a_MoveYPosition"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMoveYPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "u_OverallAlpha"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uOverallAlphaLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->program:I

    const-string/jumbo v1, "a_MaskTextureCoordinates"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMaskTextureCoordinatesLocation:I

    return-void
.end method


# virtual methods
.method public getPositionAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aPositionLocation:I

    return v0
.end method

.method public getaMaskTextureCoordinatesLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMaskTextureCoordinatesLocation:I

    return v0
.end method

.method public setUniforms([FIFFF)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMovePositionLocation:I

    invoke-static {v0, p3}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->aMoveYPositionLocation:I

    invoke-static {v0, p4}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uOverallAlphaLocation:I

    invoke-static {v0, p5}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uMatrixLocation:I

    invoke-static {v0, v2, v1, p1, v1}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    const v0, 0x84c1

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    const/16 v0, 0xde1

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glBindTexture(II)V

    iget v0, p0, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->uMaskUnitLocation:I

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glUniform1i(II)V

    return-void
.end method
