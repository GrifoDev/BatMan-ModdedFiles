.class public Lcom/android/systemui/infinity/background/TextureBackground;
.super Ljava/lang/Object;
.source "TextureBackground.java"


# static fields
.field private static final VERTEX_DATA:[F


# instance fields
.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x18

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f000000    # 0.5f
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x0
        -0x40800000    # -1.0f
        0x3f800000    # 1.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    sget-object v1, Lcom/android/systemui/infinity/background/TextureBackground;->VERTEX_DATA:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    return-void
.end method


# virtual methods
.method public bindData(Lcom/android/systemui/infinity/common/TextureShaderProgram;)V
    .locals 5

    const/16 v4, 0x10

    const/4 v3, 0x2

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getPositionAttributeLocation()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    iget-object v0, p0, Lcom/android/systemui/infinity/background/TextureBackground;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/common/TextureShaderProgram;->getTextureCoordinatesAttributeLocation()I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public draw()V
    .locals 2

    const/4 v1, 0x6

    const/4 v0, 0x0

    invoke-static {v1, v0, v1}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method
