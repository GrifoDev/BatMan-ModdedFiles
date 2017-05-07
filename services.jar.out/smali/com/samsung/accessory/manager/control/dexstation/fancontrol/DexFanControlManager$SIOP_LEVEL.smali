.class public final enum Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
.super Ljava/lang/Enum;
.source "DexFanControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SIOP_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum MINUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum MINUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum PLUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum PLUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

.field public static final enum ZERO:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "MINUS_3"

    const/4 v2, -0x3

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "MINUS_2"

    const/4 v2, -0x2

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "MINUS_1"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "ZERO"

    invoke-direct {v0, v1, v6, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "PLUS_1"

    invoke-direct {v0, v1, v7, v4}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "PLUS_2"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v5}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const-string/jumbo v1, "PLUS_3"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v6}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->ZERO:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_1:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_2:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->$VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->mValue:I

    return-void
.end method

.method static fromValue(I)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
    .locals 5

    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "SIOP_LEVEL fromValue"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->getValue()I

    move-result v1

    if-ge p0, v1, :cond_0

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->MINUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v1

    :cond_0
    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-virtual {v1}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->getValue()I

    move-result v1

    if-le p0, v1, :cond_1

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->PLUS_3:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v1

    :cond_1
    invoke-static {}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->values()[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_3

    aget-object v0, v2, v1

    iget v4, v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->mValue:I

    if-ne v4, p0, :cond_2

    return-object v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->$VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$SIOP_LEVEL;->mValue:I

    return v0
.end method
