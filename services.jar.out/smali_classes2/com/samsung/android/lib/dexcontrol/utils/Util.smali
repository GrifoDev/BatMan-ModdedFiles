.class public Lcom/samsung/android/lib/dexcontrol/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArrayToHex([B)Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    if-nez p0, :cond_1

    :cond_0
    const-string/jumbo v5, "NULL"

    return-object v5

    :cond_1
    array-length v5, p0

    if-eqz v5, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p0

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    aget-byte v3, p0, v2

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    and-int/lit16 v6, v3, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    const-string/jumbo v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method
