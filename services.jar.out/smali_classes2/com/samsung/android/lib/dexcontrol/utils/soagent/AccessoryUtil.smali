.class public Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;
.super Ljava/lang/Object;
.source "AccessoryUtil.java"


# static fields
.field public static final API_SERVER:Ljava/lang/String; = "https://dir-apis.samsungdm.com"

.field public static final API_TEST_SERVER:Ljava/lang/String; = "http://dir-stg-apis.samsungdiroute.net:8080"

.field private static final TAG:Ljava/lang/String;

.field private static clientPasswordDict:[B


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v2, 0x1

    const/16 v3, 0xd

    const-class v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    const/16 v0, 0x28

    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    const/16 v1, 0xf

    aput-byte v1, v0, v2

    const/4 v1, 0x5

    aput-byte v1, v0, v4

    const/16 v1, 0xb

    aput-byte v1, v0, v5

    const/16 v1, 0x13

    aput-byte v1, v0, v6

    const/16 v1, 0x1c

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    const/16 v1, 0x17

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    const/16 v1, 0x23

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    const/16 v1, 0x2c

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    aput-byte v4, v0, v1

    const/16 v1, 0xe

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    const/4 v1, 0x6

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    const/16 v1, 0xa

    aput-byte v1, v0, v3

    const/16 v1, 0x12

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    const/16 v1, 0xf

    aput-byte v3, v0, v1

    const/16 v1, 0x16

    const/16 v2, 0x10

    aput-byte v1, v0, v2

    const/16 v1, 0x1a

    const/16 v2, 0x11

    aput-byte v1, v0, v2

    const/16 v1, 0x20

    const/16 v2, 0x12

    aput-byte v1, v0, v2

    const/16 v1, 0x2f

    const/16 v2, 0x13

    aput-byte v1, v0, v2

    const/16 v1, 0x14

    aput-byte v5, v0, v1

    const/16 v1, 0x15

    aput-byte v3, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x16

    aput-byte v1, v0, v2

    const/16 v1, 0x9

    const/16 v2, 0x17

    aput-byte v1, v0, v2

    const/16 v1, 0x11

    const/16 v2, 0x18

    aput-byte v1, v0, v2

    const/16 v1, 0x1e

    const/16 v2, 0x19

    aput-byte v1, v0, v2

    const/16 v1, 0x15

    const/16 v2, 0x1a

    aput-byte v1, v0, v2

    const/16 v1, 0x19

    const/16 v2, 0x1b

    aput-byte v1, v0, v2

    const/16 v1, 0x21

    const/16 v2, 0x1c

    aput-byte v1, v0, v2

    const/16 v1, 0x2d

    const/16 v2, 0x1d

    aput-byte v1, v0, v2

    const/16 v1, 0x1e

    aput-byte v6, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x1f

    aput-byte v1, v0, v2

    const/16 v1, 0x8

    const/16 v2, 0x20

    aput-byte v1, v0, v2

    const/16 v1, 0x3f

    const/16 v2, 0x21

    aput-byte v1, v0, v2

    const/16 v1, 0x10

    const/16 v2, 0x22

    aput-byte v1, v0, v2

    const/16 v1, 0x1f

    const/16 v2, 0x23

    aput-byte v1, v0, v2

    const/16 v1, 0x14

    const/16 v2, 0x24

    aput-byte v1, v0, v2

    const/16 v1, 0x18

    const/16 v2, 0x25

    aput-byte v1, v0, v2

    const/16 v1, 0x22

    const/16 v2, 0x26

    aput-byte v1, v0, v2

    const/16 v1, 0x2e

    const/16 v2, 0x27

    aput-byte v1, v0, v2

    sput-object v0, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertId(Ljava/lang/String;)Ljava/lang/String;
    .locals 28

    if-eqz p0, :cond_0

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v23, v10, -0x1

    move/from16 v0, v23

    if-lt v3, v0, :cond_1

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    :try_start_0
    const-string/jumbo v23, "MD5"

    invoke-static/range {v23 .. v23}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v11

    invoke-virtual {v11}, Ljava/security/MessageDigest;->reset()V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->getServerID()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v12

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v23, 0x0

    aget-byte v23, v12, v23

    shr-int/lit8 v23, v23, 0x4

    and-int/lit8 v23, v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x2

    aget-byte v23, v12, v23

    and-int/lit8 v23, v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x2

    aget-byte v23, v12, v23

    shr-int/lit8 v23, v23, 0x4

    and-int/lit8 v23, v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x3

    aget-byte v23, v12, v23

    shr-int/lit8 v23, v23, 0x4

    and-int/lit8 v23, v23, 0xf

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v23

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v23

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v25, v10, -0x2

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x2

    move-object/from16 v0, v20

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/lib/dexcontrol/utils/soagent/UnixCrypt;->crypt([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    rem-int/lit8 v13, v9, 0x2

    div-int/lit8 v23, v9, 0x2

    add-int v15, v23, v13

    const/4 v7, 0x0

    :goto_1
    const/16 v23, 0x3

    move/from16 v0, v23

    if-lt v7, v0, :cond_2

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v23

    return-object v23

    :cond_0
    sget-object v23, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    const-string/jumbo v24, "null ID"

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, ""

    return-object v23

    :cond_1
    aget-byte v23, v4, v3

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    sget-object v23, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    aget-byte v23, v23, v3

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    add-long v16, v16, v24

    aget-byte v23, v4, v3

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-int/lit8 v23, v10, -0x1

    sub-int v23, v23, v3

    aget-byte v23, v4, v23

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    sget-object v23, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->clientPasswordDict:[B

    aget-byte v23, v23, v3

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v26, v0

    mul-long v24, v24, v26

    add-long v18, v18, v24

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    move v3, v15

    :goto_2
    if-lt v3, v9, :cond_3

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    :try_start_1
    move-object/from16 v0, v21

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v22

    sub-int v23, v9, v3

    add-int/lit8 v23, v23, -0x1

    add-int v5, v23, v13

    move v6, v3

    :goto_3
    if-gt v6, v5, :cond_4

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v0, v5, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v23, v6, -0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v23

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v6, v1}, Ljava/lang/StringBuilder;->setCharAt(IC)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    sget-object v23, Lcom/samsung/android/lib/dexcontrol/utils/soagent/AccessoryUtil;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "convert fail : "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/samsung/android/lib/dexcontrol/utils/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v23, ""

    return-object v23
.end method

.method public static getServerID()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "fscw5mpc23"

    return-object v0
.end method

.method public static getServerPassword()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "99Q2ang60Wqx83cc2"

    return-object v0
.end method
