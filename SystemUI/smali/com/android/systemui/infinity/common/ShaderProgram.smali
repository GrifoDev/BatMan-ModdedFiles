.class public Lcom/android/systemui/infinity/common/ShaderProgram;
.super Ljava/lang/Object;
.source "ShaderProgram.java"


# static fields
.field protected static final A_COLOR:Ljava/lang/String; = "a_Color"

.field protected static final A_DIRECTION_VECTOR:Ljava/lang/String; = "a_DirectionVector"

.field protected static final A_HIDE_ON_HOME:Ljava/lang/String; = "a_HideOnHome"

.field protected static final A_MASK_TEXTURE_COORDINATES:Ljava/lang/String; = "a_MaskTextureCoordinates"

.field protected static final A_MOVE_POSITION:Ljava/lang/String; = "a_MovePosition"

.field protected static final A_MOVE_Y_POSITION:Ljava/lang/String; = "a_MoveYPosition"

.field protected static final A_PARTICLE_START_TIME:Ljava/lang/String; = "a_ParticleStartTime"

.field protected static final A_POSITION:Ljava/lang/String; = "a_Position"

.field protected static final A_POSITION_INDEX:Ljava/lang/String; = "a_PositionIndex"

.field protected static final A_SIZE:Ljava/lang/String; = "a_Size"

.field protected static final A_TEXTURE_COORDINATES:Ljava/lang/String; = "a_TextureCoordinates"

.field protected static final U_COLOR:Ljava/lang/String; = "u_Color"

.field protected static final U_LUMA_UNIT:Ljava/lang/String; = "u_LumaUnit"

.field protected static final U_MASK_UNIT:Ljava/lang/String; = "u_MaskUnit"

.field protected static final U_MATRIX:Ljava/lang/String; = "u_Matrix"

.field protected static final U_OPACITY:Ljava/lang/String; = "u_Opacity"

.field protected static final U_OVERALL_ALPHA:Ljava/lang/String; = "u_OverallAlpha"

.field protected static final U_PARTICLE_ALPHA:Ljava/lang/String; = "u_ParticleAlpha"

.field protected static final U_PARTICLE_DISTANCE:Ljava/lang/String; = "u_ParticleDistance"

.field protected static final U_PLUS_ALPHA:Ljava/lang/String; = "u_PlusAlpha"

.field protected static final U_TEXTURE_UNIT:Ljava/lang/String; = "u_TextureUnit"

.field protected static final U_TIME:Ljava/lang/String; = "u_Time"


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
