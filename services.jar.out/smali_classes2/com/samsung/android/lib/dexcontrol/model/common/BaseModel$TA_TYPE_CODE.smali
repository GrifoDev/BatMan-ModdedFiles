.class public final enum Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;
.super Ljava/lang/Enum;
.source "BaseModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TA_TYPE_CODE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum AFC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum CDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum DCP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum PD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum QC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

.field public static final enum SDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "PD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->PD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "SDP"

    invoke-direct {v0, v1, v3, v4}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->SDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "CDP"

    invoke-direct {v0, v1, v4, v5}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->CDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "DCP"

    invoke-direct {v0, v1, v5, v6}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->DCP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "AFC"

    invoke-direct {v0, v1, v6, v7}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->AFC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    new-instance v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const-string/jumbo v1, "QC"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->QC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->PD:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->SDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->CDP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->DCP:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->AFC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->QC:Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;
    .locals 1

    const-class v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;
    .locals 1

    sget-object v0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->$VALUES:[Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/lib/dexcontrol/model/common/BaseModel$TA_TYPE_CODE;->mValue:I

    return v0
.end method
