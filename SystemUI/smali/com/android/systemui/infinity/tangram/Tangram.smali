.class public Lcom/android/systemui/infinity/tangram/Tangram;
.super Ljava/lang/Object;
.source "Tangram.java"


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method public constructor <init>([F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    invoke-direct {v0, p1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/tangram/Tangram;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/tangram/TangramTextureShaderProgram;->getaMaskTextureCoordinatesLocation()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public drawRect()V
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
