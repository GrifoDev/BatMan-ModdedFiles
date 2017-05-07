.class public final enum Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;
.super Ljava/lang/Enum;
.source "GradientMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/gradient_color_extractor/GradientMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GradientFunction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

.field public static final enum Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Linear"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Sine"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Cubic"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Bezier"

    invoke-direct {v0, v1, v6}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Quad"

    invoke-direct {v0, v1, v7}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Circ"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Expo"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    new-instance v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const-string v1, "Qunit"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Linear:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Sine:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Cubic:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Bezier:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Quad:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Circ:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Expo:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->Qunit:Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;
    .locals 1

    const-class v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;
    .locals 1

    sget-object v0, Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->$VALUES:[Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    invoke-virtual {v0}, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/gradient_color_extractor/GradientMaker$GradientFunction;

    return-object v0
.end method
