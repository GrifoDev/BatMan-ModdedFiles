.class public final enum Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;
.super Ljava/lang/Enum;
.source "DexFanControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FanModeEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

.field public static final enum FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

.field public static final enum NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

.field public static final enum NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

.field public static final enum SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    const-string/jumbo v1, "NonDexMode"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    const-string/jumbo v1, "NoramlMode"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    const-string/jumbo v1, "FanHoldingMode"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    const-string/jumbo v1, "SystemRequestMode"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NonDexMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->NoramlMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->FanHoldingMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->SystemRequestMode:Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    aput-object v1, v0, v5

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

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

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/dexcontrol/fancontrol/DexFanControlManager$FanModeEnum;

    return-object v0
.end method
