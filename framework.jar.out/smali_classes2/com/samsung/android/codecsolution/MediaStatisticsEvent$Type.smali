.class final enum Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;
.super Ljava/lang/Enum;
.source "MediaStatisticsEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/codecsolution/MediaStatisticsEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum FLOAT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum INT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum INTARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum LONG:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum LONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum STRING:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum STRINGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

.field public static final enum ULONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;


# instance fields
.field private val:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "NONE"

    const-string/jumbo v2, "none"

    invoke-direct {v0, v1, v4, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "INT"

    const-string/jumbo v2, "vint"

    invoke-direct {v0, v1, v5, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->INT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "LONG"

    const-string/jumbo v2, "vlng"

    invoke-direct {v0, v1, v6, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->LONG:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "FLOAT"

    const-string/jumbo v2, "vflt"

    invoke-direct {v0, v1, v7, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->FLOAT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "STRING"

    const-string/jumbo v2, "vstr"

    invoke-direct {v0, v1, v8, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->STRING:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "INTARRAY"

    const-string/jumbo v2, "aint"

    const/4 v3, 0x5

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->INTARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "LONGARRAY"

    const-string/jumbo v2, "alng"

    const/4 v3, 0x6

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->LONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "ULONGARRAY"

    const-string/jumbo v2, "auln"

    const/4 v3, 0x7

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->ULONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    new-instance v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const-string/jumbo v1, "STRINGARRAY"

    const-string/jumbo v2, "astr"

    const/16 v3, 0x8

    invoke-direct {v0, v1, v3, v2}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->STRINGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->INT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->LONG:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->FLOAT:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    aput-object v1, v0, v7

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->STRING:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    aput-object v1, v0, v8

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->INTARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->LONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->ULONGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->STRINGARRAY:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->$VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    invoke-static {p3}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent;->-wrap0(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->val:I

    return-void
.end method

.method static valueOf(I)Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;
    .locals 5

    invoke-static {}, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->values()[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    iget v4, v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->val:I

    if-ne p0, v4, :cond_0

    return-object v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->NONE:Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;
    .locals 1

    const-class v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;
    .locals 1

    sget-object v0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->$VALUES:[Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/codecsolution/MediaStatisticsEvent$Type;->val:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
