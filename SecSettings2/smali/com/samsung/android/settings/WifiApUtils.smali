.class public Lcom/samsung/android/settings/WifiApUtils;
.super Ljava/lang/Object;
.source "WifiApUtils.java"


# static fields
.field private static final DBG:Z

.field private static DBGSTR:Z

.field public static mMHSCustomer:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v1, 0x1

    const-string/jumbo v0, "eng"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v0

    if-eq v0, v1, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    sput-boolean v1, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    sget-object v0, Lcom/android/settings/Utils;->CONFIGOPBRANDINGFORMOBILEAP:Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 5

    const-string/jumbo v1, ""

    const-string/jumbo v0, ""

    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v3, "1"

    const-string/jumbo v4, "mhs.dbgstr"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    :goto_1
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_1
    sput-object v0, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    sput-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBGSTR:Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lcom/samsung/android/settings/WifiApUtils;->getStringID(I)I

    move-result v3

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static getStringID(I)I
    .locals 5

    const-string/jumbo v1, ""

    sget-boolean v3, Lcom/samsung/android/settings/WifiApUtils;->DBG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "mhs.customer"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    :goto_0
    const-string/jumbo v3, "ril.official_cscver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const v3, 0x7f0b0eb4

    if-ne p0, v3, :cond_8

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const p0, 0x7f0b0eb0

    :cond_1
    :goto_1
    return p0

    :cond_2
    sput-object v1, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0eb2

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const p0, 0x7f0b0eb1

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const p0, 0x7f0b0eaf

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const p0, 0x7f0b0eb3

    goto :goto_1

    :cond_7
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0eae

    goto :goto_1

    :cond_8
    const v3, 0x7f0b0fd1

    if-ne p0, v3, :cond_e

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const p0, 0x7f0b0fcc

    goto :goto_1

    :cond_9
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const p0, 0x7f0b0fcd

    goto :goto_1

    :cond_a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const p0, 0x7f0b0fce

    goto :goto_1

    :cond_b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const p0, 0x7f0b0fcb

    goto/16 :goto_1

    :cond_c
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const p0, 0x7f0b0fd0

    goto/16 :goto_1

    :cond_d
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fca

    goto/16 :goto_1

    :cond_e
    const v3, 0x7f0b0ee6

    if-ne p0, v3, :cond_13

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const p0, 0x7f0b0ee3

    goto/16 :goto_1

    :cond_f
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    :cond_10
    const p0, 0x7f0b0ee5

    goto/16 :goto_1

    :cond_11
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    const p0, 0x7f0b0ee4

    goto/16 :goto_1

    :cond_12
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ee2

    goto/16 :goto_1

    :cond_13
    const v3, 0x7f0b0f25

    if-ne p0, v3, :cond_15

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_14
    const p0, 0x7f0b0f24

    goto/16 :goto_1

    :cond_15
    const v3, 0x7f0b0f2d

    if-ne p0, v3, :cond_1c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    :cond_16
    const p0, 0x7f0b0f2b

    goto/16 :goto_1

    :cond_17
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const p0, 0x7f0b0f29

    goto/16 :goto_1

    :cond_18
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const p0, 0x7f0b0f2c

    goto/16 :goto_1

    :cond_19
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const p0, 0x7f0b0f28

    goto/16 :goto_1

    :cond_1a
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const p0, 0x7f0b0f27

    goto/16 :goto_1

    :cond_1b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f2a

    goto/16 :goto_1

    :cond_1c
    const v3, 0x7f0b0f2f

    if-ne p0, v3, :cond_1d

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f2e

    goto/16 :goto_1

    :cond_1d
    const v3, 0x7f0b0f40

    if-ne p0, v3, :cond_21

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1e

    const p0, 0x7f0b0f3e

    goto/16 :goto_1

    :cond_1e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1f

    const p0, 0x7f0b0f3d

    goto/16 :goto_1

    :cond_1f
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const p0, 0x7f0b0f3c

    goto/16 :goto_1

    :cond_20
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f3f

    goto/16 :goto_1

    :cond_21
    const v3, 0x7f0b0f5a

    if-ne p0, v3, :cond_27

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const p0, 0x7f0b0f58

    goto/16 :goto_1

    :cond_22
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_23

    const p0, 0x7f0b0f56

    goto/16 :goto_1

    :cond_23
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_24

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_24
    const p0, 0x7f0b0f59

    goto/16 :goto_1

    :cond_25
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    const p0, 0x7f0b0f57

    goto/16 :goto_1

    :cond_26
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f55

    goto/16 :goto_1

    :cond_27
    const v3, 0x7f0b0f60

    if-ne p0, v3, :cond_2d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_28

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_29

    :cond_28
    const p0, 0x7f0b0f5f

    goto/16 :goto_1

    :cond_29
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2a

    const p0, 0x7f0b0f5d

    goto/16 :goto_1

    :cond_2a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const p0, 0x7f0b0f5e

    goto/16 :goto_1

    :cond_2b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const p0, 0x7f0b0f5c

    goto/16 :goto_1

    :cond_2c
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f5b

    goto/16 :goto_1

    :cond_2d
    const v3, 0x7f0b0f70

    if-ne p0, v3, :cond_30

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const p0, 0x7f0b0f6f

    goto/16 :goto_1

    :cond_2e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2f

    const p0, 0x7f0b0f6d

    goto/16 :goto_1

    :cond_2f
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f6e

    goto/16 :goto_1

    :cond_30
    const v3, 0x7f0b0f95

    if-ne p0, v3, :cond_35

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_31

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_32

    :cond_31
    const p0, 0x7f0b0f92

    goto/16 :goto_1

    :cond_32
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_33

    const p0, 0x7f0b0f93

    goto/16 :goto_1

    :cond_33
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    const p0, 0x7f0b0f91

    goto/16 :goto_1

    :cond_34
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f94

    goto/16 :goto_1

    :cond_35
    const v3, 0x7f0b0fe5

    if-ne p0, v3, :cond_3b

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_36

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    :cond_36
    const p0, 0x7f0b0fe4

    goto/16 :goto_1

    :cond_37
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const p0, 0x7f0b0fe2

    goto/16 :goto_1

    :cond_38
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    const p0, 0x7f0b0fe3

    goto/16 :goto_1

    :cond_39
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const p0, 0x7f0b0fe1

    goto/16 :goto_1

    :cond_3a
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fe0

    goto/16 :goto_1

    :cond_3b
    const v3, 0x7f0b0fe9

    if-ne p0, v3, :cond_3f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3d

    :cond_3c
    const p0, 0x7f0b0fe8

    goto/16 :goto_1

    :cond_3d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const p0, 0x7f0b0fe7

    goto/16 :goto_1

    :cond_3e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fe6

    goto/16 :goto_1

    :cond_3f
    const v3, 0x7f0b0fed

    if-ne p0, v3, :cond_43

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_40

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_41

    :cond_40
    const p0, 0x7f0b0fec

    goto/16 :goto_1

    :cond_41
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_42

    const p0, 0x7f0b0feb

    goto/16 :goto_1

    :cond_42
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fea

    goto/16 :goto_1

    :cond_43
    const v3, 0x7f0b0ff3

    if-ne p0, v3, :cond_49

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const p0, 0x7f0b0ff1

    goto/16 :goto_1

    :cond_44
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_45

    const p0, 0x7f0b0fef

    goto/16 :goto_1

    :cond_45
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_46

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    :cond_46
    const p0, 0x7f0b0ff2

    goto/16 :goto_1

    :cond_47
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_48

    const p0, 0x7f0b0ff0

    goto/16 :goto_1

    :cond_48
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fee

    goto/16 :goto_1

    :cond_49
    const v3, 0x7f0b0ff9

    if-ne p0, v3, :cond_4f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4b

    :cond_4a
    const p0, 0x7f0b0ff8

    goto/16 :goto_1

    :cond_4b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const p0, 0x7f0b0ff6

    goto/16 :goto_1

    :cond_4c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    const p0, 0x7f0b0ff7

    goto/16 :goto_1

    :cond_4d
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const p0, 0x7f0b0ff5

    goto/16 :goto_1

    :cond_4e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ff4

    goto/16 :goto_1

    :cond_4f
    const v3, 0x7f0b0ffd

    if-ne p0, v3, :cond_53

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_51

    :cond_50
    const p0, 0x7f0b0ffc

    goto/16 :goto_1

    :cond_51
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_52

    const p0, 0x7f0b0ffb

    goto/16 :goto_1

    :cond_52
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ffa

    goto/16 :goto_1

    :cond_53
    const v3, 0x7f0b1001

    if-ne p0, v3, :cond_57

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_54

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_54
    const p0, 0x7f0b1000

    goto/16 :goto_1

    :cond_55
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_56

    const p0, 0x7f0b0fff

    goto/16 :goto_1

    :cond_56
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ffe

    goto/16 :goto_1

    :cond_57
    const v3, 0x7f0b1007

    if-ne p0, v3, :cond_5d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const p0, 0x7f0b1005

    goto/16 :goto_1

    :cond_58
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_59

    const p0, 0x7f0b1003

    goto/16 :goto_1

    :cond_59
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    :cond_5a
    const p0, 0x7f0b1006

    goto/16 :goto_1

    :cond_5b
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5c

    const p0, 0x7f0b1004

    goto/16 :goto_1

    :cond_5c
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1002

    goto/16 :goto_1

    :cond_5d
    const v3, 0x7f0b100a

    if-ne p0, v3, :cond_5f

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const p0, 0x7f0b1009

    goto/16 :goto_1

    :cond_5e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1008

    goto/16 :goto_1

    :cond_5f
    const v3, 0x7f0b100d

    if-ne p0, v3, :cond_61

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x7f0b100c

    goto/16 :goto_1

    :cond_60
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b100b

    goto/16 :goto_1

    :cond_61
    const v3, 0x7f0b1010

    if-ne p0, v3, :cond_63

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    const p0, 0x7f0b100f

    goto/16 :goto_1

    :cond_62
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b100e

    goto/16 :goto_1

    :cond_63
    const v3, 0x7f0b1012

    if-ne p0, v3, :cond_64

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1011

    goto/16 :goto_1

    :cond_64
    const v3, 0x7f0b1015

    if-ne p0, v3, :cond_66

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_65

    const p0, 0x7f0b1014

    goto/16 :goto_1

    :cond_65
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1013

    goto/16 :goto_1

    :cond_66
    const v3, 0x7f0b1018

    if-ne p0, v3, :cond_68

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const p0, 0x7f0b1017

    goto/16 :goto_1

    :cond_67
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1016

    goto/16 :goto_1

    :cond_68
    const v3, 0x7f0b101b

    if-ne p0, v3, :cond_6a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    const p0, 0x7f0b101a

    goto/16 :goto_1

    :cond_69
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1019

    goto/16 :goto_1

    :cond_6a
    const v3, 0x7f0b101d

    if-ne p0, v3, :cond_6b

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b101c

    goto/16 :goto_1

    :cond_6b
    const v3, 0x7f0b0f18

    if-ne p0, v3, :cond_72

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6c

    const p0, 0x7f0b0f13

    goto/16 :goto_1

    :cond_6c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6d

    const p0, 0x7f0b0f15

    goto/16 :goto_1

    :cond_6d
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    :cond_6e
    const p0, 0x7f0b0f17

    goto/16 :goto_1

    :cond_6f
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_70

    const p0, 0x7f0b0f16

    goto/16 :goto_1

    :cond_70
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    const p0, 0x7f0b0f14

    goto/16 :goto_1

    :cond_71
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f12

    goto/16 :goto_1

    :cond_72
    const v3, 0x7f0b0fbd

    if-ne p0, v3, :cond_77

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_73

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_74

    :cond_73
    const p0, 0x7f0b0fbc

    goto/16 :goto_1

    :cond_74
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_75

    const p0, 0x7f0b0fba

    goto/16 :goto_1

    :cond_75
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    const p0, 0x7f0b0fbb

    goto/16 :goto_1

    :cond_76
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fb9

    goto/16 :goto_1

    :cond_77
    const v3, 0x7f0b102f

    if-ne p0, v3, :cond_78

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b102e

    goto/16 :goto_1

    :cond_78
    const v3, 0x7f0b0f04

    if-ne p0, v3, :cond_7c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_79

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7a

    :cond_79
    const p0, 0x7f0b0f03

    goto/16 :goto_1

    :cond_7a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7b

    const p0, 0x7f0b0f02

    goto/16 :goto_1

    :cond_7b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f01

    goto/16 :goto_1

    :cond_7c
    const v3, 0x7f0b0f08

    if-ne p0, v3, :cond_80

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7d

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7e

    :cond_7d
    const p0, 0x7f0b0f07

    goto/16 :goto_1

    :cond_7e
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7f

    const p0, 0x7f0b0f06

    goto/16 :goto_1

    :cond_7f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f05

    goto/16 :goto_1

    :cond_80
    const v3, 0x7f0b0f9a

    if-ne p0, v3, :cond_81

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f99

    goto/16 :goto_1

    :cond_81
    const v3, 0x7f0b1037

    if-ne p0, v3, :cond_86

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_82

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_83

    :cond_82
    const p0, 0x7f0b1036

    goto/16 :goto_1

    :cond_83
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_84

    const p0, 0x7f0b1034

    goto/16 :goto_1

    :cond_84
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    const p0, 0x7f0b1035

    goto/16 :goto_1

    :cond_85
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1033

    goto/16 :goto_1

    :cond_86
    const v3, 0x7f0b0ee1

    if-ne p0, v3, :cond_87

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ee0

    goto/16 :goto_1

    :cond_87
    const v3, 0x7f0b0ef0

    if-ne p0, v3, :cond_88

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0eef

    goto/16 :goto_1

    :cond_88
    const v3, 0x7f0b0f46

    if-ne p0, v3, :cond_8c

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_89

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8a

    :cond_89
    const p0, 0x7f0b0f45

    goto/16 :goto_1

    :cond_8a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8b

    const p0, 0x7f0b0f44

    goto/16 :goto_1

    :cond_8b
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f43

    goto/16 :goto_1

    :cond_8c
    const v3, 0x7f0b0f7e

    if-ne p0, v3, :cond_90

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const p0, 0x7f0b0f7b

    goto/16 :goto_1

    :cond_8d
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8e

    const p0, 0x7f0b0f7c

    goto/16 :goto_1

    :cond_8e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const p0, 0x7f0b0f7d

    goto/16 :goto_1

    :cond_8f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f7a

    goto/16 :goto_1

    :cond_90
    const v3, 0x7f0b102d

    if-ne p0, v3, :cond_93

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_91

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_92

    :cond_91
    const p0, 0x7f0b102b

    goto/16 :goto_1

    :cond_92
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b102c

    goto/16 :goto_1

    :cond_93
    const v3, 0x7f0b1021

    if-ne p0, v3, :cond_95

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    const p0, 0x7f0b101f

    goto/16 :goto_1

    :cond_94
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1020

    goto/16 :goto_1

    :cond_95
    const v3, 0x7f0b0fc9

    if-ne p0, v3, :cond_99

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_96

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_97

    :cond_96
    const p0, 0x7f0b0fc8

    goto/16 :goto_1

    :cond_97
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_98

    const p0, 0x7f0b0fc6

    goto/16 :goto_1

    :cond_98
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fc7

    goto/16 :goto_1

    :cond_99
    const v3, 0x7f0b0fd5

    if-ne p0, v3, :cond_9d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9a

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9b

    :cond_9a
    const p0, 0x7f0b0fd4

    goto/16 :goto_1

    :cond_9b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9c

    const p0, 0x7f0b0fd2

    goto/16 :goto_1

    :cond_9c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fd3

    goto/16 :goto_1

    :cond_9d
    const v3, 0x7f0b1023

    if-ne p0, v3, :cond_9e

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1022

    goto/16 :goto_1

    :cond_9e
    const v3, 0x7f0b0ef8

    if-ne p0, v3, :cond_9f

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ef7

    goto/16 :goto_1

    :cond_9f
    const v3, 0x7f0b0efa

    if-ne p0, v3, :cond_a0

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0ef9

    goto/16 :goto_1

    :cond_a0
    const v3, 0x7f0b0f34

    if-ne p0, v3, :cond_a4

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a1

    const p0, 0x7f0b0f30

    goto/16 :goto_1

    :cond_a1
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a2

    const p0, 0x7f0b0f31

    goto/16 :goto_1

    :cond_a2
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const p0, 0x7f0b0f33

    goto/16 :goto_1

    :cond_a3
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f32

    goto/16 :goto_1

    :cond_a4
    const v3, 0x7f0b0f80

    if-ne p0, v3, :cond_a5

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f7f

    goto/16 :goto_1

    :cond_a5
    const v3, 0x7f0b0f82

    if-ne p0, v3, :cond_a6

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f81

    goto/16 :goto_1

    :cond_a6
    const v3, 0x7f0b0f9c

    if-ne p0, v3, :cond_a7

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f9b

    goto/16 :goto_1

    :cond_a7
    const v3, 0x7f0b0f9e

    if-ne p0, v3, :cond_a8

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f9d

    goto/16 :goto_1

    :cond_a8
    const v3, 0x7f0b0fa0

    if-ne p0, v3, :cond_a9

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0f9f

    goto/16 :goto_1

    :cond_a9
    const v3, 0x7f0b0fa7

    if-ne p0, v3, :cond_aa

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fa6

    goto/16 :goto_1

    :cond_aa
    const v3, 0x7f0b0fb2

    if-ne p0, v3, :cond_ab

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fb1

    goto/16 :goto_1

    :cond_ab
    const v3, 0x7f0b0fb4

    if-ne p0, v3, :cond_ac

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0fb3

    goto/16 :goto_1

    :cond_ac
    const v3, 0x7f0b1041

    if-ne p0, v3, :cond_ad

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b1040

    goto/16 :goto_1

    :cond_ad
    const v3, 0x7f0b103c

    if-ne p0, v3, :cond_b2

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_ae

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_af

    :cond_ae
    const p0, 0x7f0b1038

    goto/16 :goto_1

    :cond_af
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b0

    const p0, 0x7f0b1039

    goto/16 :goto_1

    :cond_b0
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    const p0, 0x7f0b103a

    goto/16 :goto_1

    :cond_b1
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b103b

    goto/16 :goto_1

    :cond_b2
    const v3, 0x7f0b0e9a

    if-ne p0, v3, :cond_b4

    const-string/jumbo v3, "DCM"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const p0, 0x7f0b0e99

    goto/16 :goto_1

    :cond_b3
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const p0, 0x7f0b0e98

    goto/16 :goto_1

    :cond_b4
    const v3, 0x7f0b0e69

    if-ne p0, v3, :cond_1

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_b5
    const p0, 0x7f0b0e6a

    goto/16 :goto_1
.end method
