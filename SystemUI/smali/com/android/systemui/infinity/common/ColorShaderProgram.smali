.class public Lcom/android/systemui/infinity/common/ColorShaderProgram;
.super Lcom/android/systemui/infinity/common/ShaderProgram;
.source "ColorShaderProgram.java"


# instance fields
.field private final aColorLocation:I

.field private final aPositionLocation:I

.field private final mOpacityUniformHandle:I

.field private final uMatrixLocation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x7f110002

    const v1, 0x7f110001

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/infinity/common/ShaderProgram;-><init>(Landroid/content/Context;II)V

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->program:I

    const-string/jumbo v1, "u_Matrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->uMatrixLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->program:I

    const-string/jumbo v1, "u_Opacity"

    invoke-static {v0, v1}, Landroid/opengl/GLES30;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->mOpacityUniformHandle:I

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->program:I

    const-string/jumbo v1, "a_Position"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->aPositionLocation:I

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->program:I

    const-string/jumbo v1, "a_Color"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->aColorLocation:I

    return-void
.end method


# virtual methods
.method public getColorAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->aColorLocation:I

    return v0
.end method

.method public getPositionAttributeLocation()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->aPositionLocation:I

    return v0
.end method

.method public setUniforms([FF)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->uMatrixLocation:I

    const/4 v1, 0x1

    invoke-static {v0, v1, v2, p1, v2}, Landroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    iget v0, p0, Lcom/android/systemui/infinity/common/ColorShaderProgram;->mOpacityUniformHandle:I

    invoke-static {v0, p2}, Landroid/opengl/GLES20;->glUniform1f(IF)V

    return-void
.end method
