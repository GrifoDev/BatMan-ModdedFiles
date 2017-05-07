.class public Lcom/android/systemui/infinity/common/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# instance fields
.field protected final program:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1, p2}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, p3}, Lcom/android/systemui/infinity/common/TextResourceReader;->readTextFileFromResource(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/infinity/common/ShaderHelper;->buildProgram(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/infinity/common/ShaderProgram;->program:I

    return-void
.end method


# virtual methods
.method public useProgram()V
    .locals 1

    iget v0, p0, Lcom/android/systemui/infinity/common/ShaderProgram;->program:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glUseProgram(I)V

    return-void
.end method
