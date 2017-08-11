.class public final enum Landroid/widget/TextView$SFEffectsAPI$EffectOutput;
.super Ljava/lang/Enum;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView$SFEffectsAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EffectOutput"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/TextView$SFEffectsAPI$EffectOutput;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

.field public static final enum FBO:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

.field public static final enum SCREEN:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;


# instance fields
.field public id:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    const-string/jumbo v1, "SCREEN"

    invoke-direct {v0, v1, v2, v2}, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->SCREEN:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    new-instance v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    const-string/jumbo v1, "FBO"

    invoke-direct {v0, v1, v3, v3}, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->FBO:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    const/4 v0, 0x2

    new-array v0, v0, [Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->SCREEN:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    aput-object v1, v0, v2

    sget-object v1, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->FBO:Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    aput-object v1, v0, v3

    sput-object v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->$VALUES:[Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->id:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/TextView$SFEffectsAPI$EffectOutput;
    .locals 1

    const-class v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    return-object v0
.end method

.method public static values()[Landroid/widget/TextView$SFEffectsAPI$EffectOutput;
    .locals 1

    sget-object v0, Landroid/widget/TextView$SFEffectsAPI$EffectOutput;->$VALUES:[Landroid/widget/TextView$SFEffectsAPI$EffectOutput;

    return-object v0
.end method
