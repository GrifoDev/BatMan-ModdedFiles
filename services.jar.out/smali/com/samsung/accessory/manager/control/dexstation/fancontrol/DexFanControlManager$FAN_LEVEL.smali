.class public final enum Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;
.super Ljava/lang/Enum;
.source "DexFanControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FAN_LEVEL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

.field public static final enum MILD:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

.field public static final enum STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

.field public static final enum STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

.field public static final enum WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;


# instance fields
.field private final mFanLevel:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const-string/jumbo v1, "STOP"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const-string/jumbo v1, "WEAK"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const-string/jumbo v1, "MILD"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->MILD:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    new-instance v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const-string/jumbo v1, "STRONG"

    invoke-direct {v0, v1, v5, v5}, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STOP:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->WEAK:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->MILD:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->STRONG:Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->$VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->mFanLevel:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 1

    const-class v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-object v0
.end method

.method public static values()[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;
    .locals 1

    sget-object v0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->$VALUES:[Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;

    return-object v0
.end method


# virtual methods
.method public getFanLevel()I
    .locals 1

    iget v0, p0, Lcom/samsung/accessory/manager/control/dexstation/fancontrol/DexFanControlManager$FAN_LEVEL;->mFanLevel:I

    return v0
.end method
