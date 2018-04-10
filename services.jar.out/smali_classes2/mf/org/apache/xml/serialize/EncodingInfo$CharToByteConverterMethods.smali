.class Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;
.super Ljava/lang/Object;
.source "EncodingInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xml/serialize/EncodingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CharToByteConverterMethods"
.end annotation


# static fields
.field private static fgCanConvertMethod:Ljava/lang/reflect/Method;

.field private static fgConvertersAvailable:Z

.field private static fgGetConverterMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    :try_start_0
    const-string/jumbo v2, "sun.io.CharToByteConverter"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "getConverter"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "canConvert"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    sput-boolean v2, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    sput-object v6, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    sput-boolean v5, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Z
    .locals 1

    sget-boolean v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgConvertersAvailable:Z

    return v0
.end method

.method static synthetic access$1()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgGetConverterMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/reflect/Method;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/EncodingInfo$CharToByteConverterMethods;->fgCanConvertMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
