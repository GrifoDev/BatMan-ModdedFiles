.class final enum Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;
.super Ljava/lang/Enum;
.source "MediaStatisticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/MediaStatisticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Category"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

.field public static final enum ADEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

.field public static final enum AENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

.field public static final enum NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

.field public static final enum VDEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

.field public static final enum VENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const-string/jumbo v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const-string/jumbo v1, "VENC"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->VENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const-string/jumbo v1, "VDEC"

    invoke-direct {v0, v1, v4}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->VDEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const-string/jumbo v1, "AENC"

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->AENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const-string/jumbo v1, "ADEC"

    invoke-direct {v0, v1, v6}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->ADEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->VENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->VDEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->AENC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->ADEC:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    aput-object v1, v0, v6

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->$VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;
    .locals 5

    invoke-static {}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Category.valueOf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->values()[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;
    .locals 1

    const-class v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;
    .locals 1

    sget-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;->$VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Category;

    return-object v0
.end method
