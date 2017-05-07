.class public final enum Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;
.super Ljava/lang/Enum;
.source "PageTransitionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/pagetransition/PageTransitionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionEffect"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum ACCORDIAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum CARD:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum CARDFLIP:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum CAROUSAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum CASCADE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum CONVEYOR:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum DEFAULT:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum FAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum INNERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum OUTERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum PLAIN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum ROTATE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum SPIRAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

.field public static final enum ZOOM:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->DEFAULT:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "CASCADE"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CASCADE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "OUTERCUBE"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->OUTERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "INNERCUBE"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->INNERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "CAROUSAL"

    invoke-direct {v0, v1, v7}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CAROUSAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "PLAIN"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->PLAIN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "CONVEYOR"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CONVEYOR:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "CARD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARD:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "ACCORDIAN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ACCORDIAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "CARDFLIP"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARDFLIP:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "FAN"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->FAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "ROTATE"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ROTATE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "SPIRAL"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->SPIRAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    new-instance v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const-string v1, "ZOOM"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ZOOM:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    const/16 v0, 0xe

    new-array v0, v0, [Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->DEFAULT:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CASCADE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->OUTERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->INNERCUBE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CAROUSAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->PLAIN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CONVEYOR:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARD:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ACCORDIAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->CARDFLIP:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->FAN:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ROTATE:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->SPIRAL:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->ZOOM:Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->$VALUES:[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;
    .locals 1

    const-class v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;
    .locals 1

    sget-object v0, Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->$VALUES:[Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    invoke-virtual {v0}, [Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/pagetransition/PageTransitionManager$TransitionEffect;

    return-object v0
.end method
