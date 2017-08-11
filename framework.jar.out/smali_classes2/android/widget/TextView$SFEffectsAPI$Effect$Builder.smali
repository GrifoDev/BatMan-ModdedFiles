.class public Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
.super Ljava/lang/Object;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SFEffectsAPI$Effect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mAnimationMode:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

.field private final mEffectRegion:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mEffectTarget:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

.field private final mGeometryAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/TextView$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private final mPixelAnimationVector:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/widget/TextView$SFEffectsAPI$Animation;",
            ">;"
        }
    .end annotation
.end field

.field private mPixelEffectType:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;


# direct methods
.method static synthetic -get0(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Landroid/widget/TextView$SFEffectsAPI$AnimationMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Landroid/widget/TextView$SFEffectsAPI$EffectTarget;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

    return-object v0
.end method

.method static synthetic -get3(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get4(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)Landroid/widget/TextView$SFEffectsAPI$PixEffectType;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/widget/TextView$SFEffectsAPI$AnimationMode;->kAnimStatic:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

    sget-object v0, Landroid/widget/TextView$SFEffectsAPI$EffectTarget;->SELF:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

    sget-object v0, Landroid/widget/TextView$SFEffectsAPI$PixEffectType;->NONE:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addEffectRegionRect(Landroid/graphics/Rect;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectRegion:Ljava/util/Vector;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addGeoAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/widget/TextView$SFEffectsAPI$Animation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/TextView$SFEffectsAPI$Animation;-><init>(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addPixAnimation(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 2

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    new-instance v1, Landroid/widget/TextView$SFEffectsAPI$Animation;

    invoke-direct {v1, p1, p2, p3, p4}, Landroid/widget/TextView$SFEffectsAPI$Animation;-><init>(Landroid/widget/TextView$SFEffectsAPI$AnimParam;IFLandroid/widget/TextView$SFEffectsAPI$InterpMode;)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/widget/TextView$SFEffectsAPI$Effect;
    .locals 1

    new-instance v0, Landroid/widget/TextView$SFEffectsAPI$Effect;

    invoke-direct {v0, p0}, Landroid/widget/TextView$SFEffectsAPI$Effect;-><init>(Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;)V

    return-object v0
.end method

.method public clearAnimations()V
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelAnimationVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mGeometryAnimationVector:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    return-void
.end method

.method public getAnimationMode()Landroid/widget/TextView$SFEffectsAPI$AnimationMode;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

    return-object v0
.end method

.method public getEffectTarget()Landroid/widget/TextView$SFEffectsAPI$EffectTarget;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

    return-object v0
.end method

.method public getPixelEffectType()Landroid/widget/TextView$SFEffectsAPI$PixEffectType;
    .locals 1

    iget-object v0, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;

    return-object v0
.end method

.method public setAnimationMode(Landroid/widget/TextView$SFEffectsAPI$AnimationMode;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mAnimationMode:Landroid/widget/TextView$SFEffectsAPI$AnimationMode;

    return-object p0
.end method

.method public setEffectTarget(Landroid/widget/TextView$SFEffectsAPI$EffectTarget;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mEffectTarget:Landroid/widget/TextView$SFEffectsAPI$EffectTarget;

    return-object p0
.end method

.method public setPixelEffectType(Landroid/widget/TextView$SFEffectsAPI$PixEffectType;)Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;
    .locals 0

    iput-object p1, p0, Landroid/widget/TextView$SFEffectsAPI$Effect$Builder;->mPixelEffectType:Landroid/widget/TextView$SFEffectsAPI$PixEffectType;

    return-object p0
.end method
