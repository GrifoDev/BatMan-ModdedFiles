.class public final enum Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
.super Ljava/lang/Enum;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "IndicatorType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

.field public static final enum DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

.field public static final enum FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

.field public static final enum HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

.field public static final enum PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

.field public static final enum ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const-string v1, "HOME"

    invoke-direct {v0, v1, v3}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v4}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const-string v1, "ZEROPAGE"

    invoke-direct {v0, v1, v5}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    new-instance v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const-string v1, "FESTIVAL"

    invoke-direct {v0, v1, v6}, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->DEFAULT:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->HOME:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->PLUS:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->ZEROPAGE:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->FESTIVAL:Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->$VALUES:[Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    .locals 1

    const-class v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    return-object v0
.end method

.method public static values()[Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;
    .locals 1

    sget-object v0, Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->$VALUES:[Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    invoke-virtual {v0}, [Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/launcher3/common/view/PageIndicator$PageMarkerResources$IndicatorType;

    return-object v0
.end method
