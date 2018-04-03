.class public Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;
.super Ljava/lang/Object;
.source "GalaxyParticleSystem.java"


# static fields
.field private static final COLOR_COMPONENT_COUNT:I = 0x4

.field private static final HIDE_HOME_COMPONENT_COUNT:I = 0x1

.field private static final POSITION_COMPONENT_COUNT:I = 0x3

.field private static final SIZE_COMPONENT_COUNT:I = 0x1

.field private static final STRIDE:I = 0x24

.field private static final TOTAL_COMPONENT_COUNT:I = 0x9


# instance fields
.field private DEFAULT_WIDTH:F

.field autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field public color0:I

.field public color1:I

.field public color2:I

.field public color3:I

.field public color4:I

.field colorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field public count0:I

.field public count1:I

.field public count2:I

.field public count3:I

.field public count4:I

.field public currentAutoResetRotateValue:F

.field public currentDeviceUnlockRotateValue:F

.field public currentFlickValue:F

.field public currentGyroValue:F

.field public currentOffRotateValue:F

.field public currentOnRotateValue:F

.field public currentParticleAlphaValue:F

.field public currentParticleMaxDistance:F

.field public currentParticlePlusAlphaValue:F

.field public currentPlusValue:F

.field dataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/particle/Geometry$Point;",
            ">;"
        }
    .end annotation
.end field

.field deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

.field flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field public isRight:Z

.field private mGlSurfaceView:Landroid/opengl/GLSurfaceView;

.field public maxDegree0:F

.field public maxDegree1:F

.field public maxDegree2:F

.field public maxDegree3:F

.field public maxDegree4:F

.field private final maxParticleCount:I

.field public maxParticleDistance:F

.field maxRotateDegree:F

.field public minParticleDistance:F

.field offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

.field private particleProgram:Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

.field public particleRadius0:F

.field public particleRadius1:F

.field public particleRadius2:F

.field public particleRadius3:F

.field public particleRadius4:F

.field public particleSizeDegree:F

.field private final particles:[F

.field public radius0:F

.field public radius1:F

.field public radius2:F

.field public radius3:F

.field public radius4:F

.field public randValue0:F

.field public randValue1:F

.field public randValue2:F

.field public randValue3:F

.field public randValue4:F

.field public rotateDegreeAod:F

.field public rotateDegreeHome:F

.field public rotateDegreeLock:F

.field private final vertexArray:Lcom/android/systemui/infinity/common/VertexArray;


# direct methods
.method static synthetic -wrap0(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->invalidate()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    const/high16 v5, 0x3f000000    # 0.5f

    const v4, 0x3f19999a    # 0.6f

    const/4 v3, -0x1

    const/high16 v2, 0x40e00000    # 7.0f

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x44b40000    # 1440.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->DEFAULT_WIDTH:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentPlusValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleDistance:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->minParticleDistance:F

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleSizeDegree:F

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->minParticleDistance:F

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->colorList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->isRight:Z

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count0:I

    const/16 v0, 0xfa0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count1:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count2:I

    const/16 v0, 0xbb8

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count3:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count4:I

    iput v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color0:I

    iput v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color1:I

    iput v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color2:I

    iput v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color3:I

    iput v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color4:I

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius0:F

    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius1:F

    const v0, 0x3f99999a    # 1.2f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius2:F

    const v0, 0x3fb33333    # 1.4f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius3:F

    const v0, 0x3f4ccccd    # 0.8f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius4:F

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius0:F

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius1:F

    iput v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius2:F

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius3:F

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius4:F

    iput v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree0:F

    iput v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree1:F

    iput v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree2:F

    iput v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree3:F

    iput v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree4:F

    const v0, 0x3e4ccccd    # 0.2f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue0:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue1:F

    const v0, 0x3ecccccd    # 0.4f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue2:F

    iput v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue3:F

    const/high16 v0, 0x40400000    # 3.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue4:F

    const/high16 v0, 0x40c00000    # 6.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeHome:F

    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeLock:F

    const/high16 v0, 0x41100000    # 9.0f

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeAod:F

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->rotateDegreeHome:F

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->context:Landroid/content/Context;

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count0:I

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count1:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count2:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count3:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count4:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleCount:I

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleCount:I

    mul-int/lit8 v0, v0, 0x9

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    new-instance v0, Lcom/android/systemui/infinity/common/VertexArray;

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/common/VertexArray;-><init>([F)V

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count0:I

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius0:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius0:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree0:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue0:F

    iget v7, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color0:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFI)V

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count1:I

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius1:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius1:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree1:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue1:F

    iget v7, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color1:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFI)V

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count2:I

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius2:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius2:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree2:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue2:F

    iget v7, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color2:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFI)V

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count3:I

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius3:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius3:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree3:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue3:F

    iget v7, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color3:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFI)V

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->count4:I

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->radius4:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleRadius4:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxDegree4:F

    iget v6, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->randValue4:F

    iget v7, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->color4:I

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->makeParticleWithDegree5(Ljava/util/ArrayList;IFFFFI)V

    const/4 v8, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->dataArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/infinity/particle/Geometry$Point;

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->colorList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0, v8, v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->addParticle(ILcom/android/systemui/infinity/particle/Geometry$Point;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const v1, 0x3ca3d70a    # 0.02f

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setEasing(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const v1, 0x3a83126f    # 0.001f

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setMinDiffer(F)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$1;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLEasingUpdateListener;)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->start()V

    return-void
.end method

.method private invalidate()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    :cond_0
    return-void
.end method


# virtual methods
.method public addParticle(ILcom/android/systemui/infinity/particle/Geometry$Point;I)V
    .locals 6

    const/high16 v5, 0x437f0000    # 255.0f

    mul-int/lit8 v2, p1, 0x9

    move v0, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v0, v2, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->x:F

    aput v4, v3, v2

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v1, v0, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->y:F

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v0, v1, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->z:F

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v1, v0, 0x1

    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v0, v1, 0x1

    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v1, v0, 0x1

    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v5

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v0, v1, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->alpha:F

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v1, v0, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->radius:F

    aput v4, v3, v0

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    add-int/lit8 v0, v1, 0x1

    iget v4, p2, Lcom/android/systemui/infinity/particle/Geometry$Point;->hideOnHome:F

    aput v4, v3, v1

    iget-object v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    iget-object v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particles:[F

    const/16 v5, 0x9

    invoke-virtual {v3, v4, v2, v5}, Lcom/android/systemui/infinity/common/VertexArray;->updateBuffer([FII)V

    return-void
.end method

.method public bindData(Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;)V
    .locals 6

    const/4 v5, 0x1

    const/16 v4, 0x24

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->getPositionAttributeLocation()I

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->getColorAttributeLocation()I

    move-result v2

    const/4 v3, 0x4

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    add-int/lit8 v0, v0, 0x4

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->getSizeAttributeLocation()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->vertexArray:Lcom/android/systemui/infinity/common/VertexArray;

    invoke-virtual {p1}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->getaHideOnHomeLocation()I

    move-result v2

    invoke-virtual {v1, v0, v2, v5, v4}, Lcom/android/systemui/infinity/common/VertexArray;->setVertexAttribPointer(IIII)V

    return-void
.end method

.method public changeAutoResetRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$6;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$6;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->autoResetAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeDeviceUnlockRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$7;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->deviceUnlockAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeFlickValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$2;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->flickRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeOffRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$8;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->offRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeOnRotateValue(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$5;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$5;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->onRotationAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeParticleAlpha(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$9;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public changeParticlePlusAlpha(FFJ)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$10;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$10;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/view/animation/SineInOut90;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineInOut90;-><init>()V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public draw([F[F[F)V
    .locals 11

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v1, 0x0

    const/high16 v2, 0x42100000    # 36.0f

    move-object v0, p2

    move v5, v4

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    const/high16 v7, 0x40800000    # 4.0f

    move-object v5, p2

    move v6, v1

    move v8, v4

    move v9, v4

    move v10, v3

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentGyroValue:F

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentPlusValue:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentFlickValue:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOffRotateValue:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentOnRotateValue:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentAutoResetRotateValue:F

    add-float/2addr v2, v5

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentDeviceUnlockRotateValue:F

    add-float/2addr v2, v5

    sub-float v7, v0, v2

    move-object v5, p2

    move v6, v1

    move v8, v4

    move v9, v3

    move v10, v4

    invoke-static/range {v5 .. v10}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    move-object v0, p1

    move-object v2, p3

    move v3, v1

    move-object v4, p2

    move v5, v1

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleProgram:Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

    invoke-virtual {v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->useProgram()V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleProgram:Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    iget v3, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    iget v4, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    iget v5, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleSizeDegree:F

    mul-float/2addr v4, v5

    invoke-virtual {v0, p1, v2, v3, v4}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;->setUniforms([FFFF)V

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleProgram:Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->bindData(Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;)V

    iget v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleCount:I

    invoke-static {v1, v1, v0}, Landroid/opengl/GLES20;->glDrawArrays(III)V

    return-void
.end method

.method public getEasingHelper()Lcom/altamirasoft/glanimationutil/GLEasingHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-object v0
.end method

.method public getRandValue(F)F
    .locals 4

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v0

    float-to-double v2, p1

    mul-double/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, p1, v2

    float-to-double v2, v2

    sub-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public hideParticles()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particlePlusAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleAlphaAnimator:Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->end()V

    :cond_1
    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    iput v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    invoke-direct {p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->invalidate()V

    return-void
.end method

.method public makeParticleWithDegree4(Ljava/util/ArrayList;IFFFFI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/particle/Geometry$Point;",
            ">;IFFFFI)V"
        }
    .end annotation

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_2

    int-to-float v10, v4

    move/from16 v0, p2

    int-to-float v11, v0

    div-float v5, v10, v11

    mul-float v3, v5, p5

    move/from16 v9, p3

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v7

    move/from16 v0, p3

    float-to-double v10, v0

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v11

    add-float v6, v10, v11

    move/from16 v0, p3

    float-to-double v10, v0

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v11

    add-float v8, v10, v11

    new-instance v2, Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-direct {v2, v6, v7, v8}, Lcom/android/systemui/infinity/particle/Geometry$Point;-><init>(FFF)V

    const/4 v10, 0x0

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->plusAlpha:F

    rem-int/lit8 v10, v4, 0xa

    if-eqz v10, :cond_0

    rem-int/lit8 v10, v4, 0xa

    const/4 v11, 0x3

    if-ne v10, v11, :cond_1

    :cond_0
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->hideOnHome:F

    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v10, v12

    const-wide v12, 0x3f847ae140000000L    # 0.009999999776482582

    add-double/2addr v10, v12

    double-to-float v10, v10

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->alpha:F

    move/from16 v0, p4

    iput v0, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->radius:F

    iget-object v10, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->colorList:Ljava/util/ArrayList;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    rem-int/lit8 v10, v4, 0xa

    const/4 v11, 0x6

    if-eq v10, v11, :cond_0

    const/high16 v10, 0x40400000    # 3.0f

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->hideOnHome:F

    goto :goto_1

    :cond_2
    return-void
.end method

.method public makeParticleWithDegree5(Ljava/util/ArrayList;IFFFFI)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/infinity/particle/Geometry$Point;",
            ">;IFFFFI)V"
        }
    .end annotation

    const/4 v4, 0x0

    :goto_0
    move/from16 v0, p2

    if-ge v4, v0, :cond_1

    int-to-float v10, v4

    move/from16 v0, p2

    int-to-float v11, v0

    div-float v5, v10, v11

    mul-float v3, v5, p5

    move/from16 v9, p3

    const/high16 v10, 0x40000000    # 2.0f

    mul-float v10, v10, p6

    invoke-virtual {p0, v10}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v7

    move/from16 v0, p3

    float-to-double v10, v0

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float v11, v11, p6

    invoke-virtual {p0, v11}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v11

    add-float v6, v10, v11

    move/from16 v0, p3

    float-to-double v10, v0

    float-to-double v12, v3

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    double-to-float v10, v10

    move/from16 v0, p6

    invoke-virtual {p0, v0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->getRandValue(F)F

    move-result v11

    const v12, 0x3f19999a    # 0.6f

    mul-float/2addr v11, v12

    add-float v8, v10, v11

    new-instance v2, Lcom/android/systemui/infinity/particle/Geometry$Point;

    invoke-direct {v2, v6, v7, v8}, Lcom/android/systemui/infinity/particle/Geometry$Point;-><init>(FFF)V

    const/4 v10, 0x0

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->plusAlpha:F

    rem-int/lit8 v10, v4, 0x3

    if-nez v10, :cond_0

    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->hideOnHome:F

    :goto_1
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x3fe99999a0000000L    # 0.800000011920929

    mul-double/2addr v10, v12

    const-wide v12, 0x3f847ae140000000L    # 0.009999999776482582

    add-double/2addr v10, v12

    double-to-float v10, v10

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->alpha:F

    move/from16 v0, p4

    iput v0, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->radius:F

    iget-object v10, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->colorList:Ljava/util/ArrayList;

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const/high16 v10, 0x40400000    # 3.0f

    iput v10, v2, Lcom/android/systemui/infinity/particle/Geometry$Point;->hideOnHome:F

    goto :goto_1

    :cond_1
    return-void
.end method

.method public makePaticleBig()V
    .locals 4

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxParticleDistance:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$4;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public makePaticleSmall()V
    .locals 4

    const/high16 v3, 0x41200000    # 10.0f

    invoke-static {}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->getInstance()Lcom/altamirasoft/glanimationutil/GLAnimatorManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    mul-float/2addr v1, v3

    iget v2, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->minParticleDistance:F

    mul-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/altamirasoft/glanimationutil/GLAnimatorManager;->createValueAnimator(FF)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem$3;-><init>(Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;)V

    invoke-virtual {v0, v1}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->addUpdateListener(Lcom/altamirasoft/glanimationutil/GLValueAnimator$AnimatorUpdateListener;)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->setDuration(J)Lcom/altamirasoft/glanimationutil/GLValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/altamirasoft/glanimationutil/GLValueAnimator;->start()V

    return-void
.end method

.method public onSurfaceCreated()V
    .locals 2

    new-instance v0, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleProgram:Lcom/android/systemui/infinity/particle/GalaxyParticleShaderProgram;

    return-void
.end method

.method public setCurrentGyroValue(F)V
    .locals 3

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    mul-float v0, p1, v1

    iget-object v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->easingHelper:Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/altamirasoft/glanimationutil/GLEasingHelper;->setTargetValue(FZ)Lcom/altamirasoft/glanimationutil/GLEasingHelper;

    return-void
.end method

.method public setGlSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->mGlSurfaceView:Landroid/opengl/GLSurfaceView;

    return-void
.end method

.method public setMaxRotateDegreeValue(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->maxRotateDegree:F

    return-void
.end method

.method public setMaxpaticleDistance(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleMaxDistance:F

    return-void
.end method

.method public setParticleAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticleAlphaValue:F

    return-void
.end method

.method public setParticlePlusAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->currentParticlePlusAlphaValue:F

    return-void
.end method

.method public setParticleSizeDegree(I)V
    .locals 2

    int-to-float v0, p1

    iget v1, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->DEFAULT_WIDTH:F

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/infinity/particle/GalaxyParticleSystem;->particleSizeDegree:F

    return-void
.end method
