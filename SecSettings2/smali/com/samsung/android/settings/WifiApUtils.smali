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

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    const-string/jumbo v3, "ril.official_cscver"

    const-string/jumbo v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "ro.build.characteristics"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "default"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "OYN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    :goto_1
    if-nez v3, :cond_3

    return p0

    :cond_1
    sput-object v1, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    const v3, 0x7f0b0e1e

    if-ne p0, v3, :cond_a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const p0, 0x7f0b0e1a

    :cond_4
    :goto_2
    return p0

    :cond_5
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const p0, 0x7f0b0e1c

    goto :goto_2

    :cond_6
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const p0, 0x7f0b0e1b

    goto :goto_2

    :cond_7
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const p0, 0x7f0b0e19

    goto :goto_2

    :cond_8
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const p0, 0x7f0b0e1d

    goto :goto_2

    :cond_9
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e18

    goto :goto_2

    :cond_a
    const v3, 0x7f0b0f3b

    if-ne p0, v3, :cond_10

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const p0, 0x7f0b0f36

    goto :goto_2

    :cond_b
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const p0, 0x7f0b0f37

    goto :goto_2

    :cond_c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const p0, 0x7f0b0f38

    goto :goto_2

    :cond_d
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const p0, 0x7f0b0f35

    goto/16 :goto_2

    :cond_e
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const p0, 0x7f0b0f3a

    goto/16 :goto_2

    :cond_f
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f34

    goto/16 :goto_2

    :cond_10
    const v3, 0x7f0b0e50

    if-ne p0, v3, :cond_15

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const p0, 0x7f0b0e4d

    goto/16 :goto_2

    :cond_11
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    :cond_12
    const p0, 0x7f0b0e4f

    goto/16 :goto_2

    :cond_13
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    const p0, 0x7f0b0e4e

    goto/16 :goto_2

    :cond_14
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e4c

    goto/16 :goto_2

    :cond_15
    const v3, 0x7f0b0e8f

    if-ne p0, v3, :cond_17

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_16
    const p0, 0x7f0b0e8e

    goto/16 :goto_2

    :cond_17
    const v3, 0x7f0b0e97

    if-ne p0, v3, :cond_1e

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    :cond_18
    const p0, 0x7f0b0e95

    goto/16 :goto_2

    :cond_19
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1a

    const p0, 0x7f0b0e93

    goto/16 :goto_2

    :cond_1a
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1b

    const p0, 0x7f0b0e96

    goto/16 :goto_2

    :cond_1b
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const p0, 0x7f0b0e92

    goto/16 :goto_2

    :cond_1c
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const p0, 0x7f0b0e91

    goto/16 :goto_2

    :cond_1d
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e94

    goto/16 :goto_2

    :cond_1e
    const v3, 0x7f0b0e99

    if-ne p0, v3, :cond_1f

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e98

    goto/16 :goto_2

    :cond_1f
    const v3, 0x7f0b0eaa

    if-ne p0, v3, :cond_23

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const p0, 0x7f0b0ea8

    goto/16 :goto_2

    :cond_20
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const p0, 0x7f0b0ea7

    goto/16 :goto_2

    :cond_21
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const p0, 0x7f0b0ea6

    goto/16 :goto_2

    :cond_22
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ea9

    goto/16 :goto_2

    :cond_23
    const v3, 0x7f0b0ec4

    if-ne p0, v3, :cond_29

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const p0, 0x7f0b0ec2

    goto/16 :goto_2

    :cond_24
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const p0, 0x7f0b0ec0

    goto/16 :goto_2

    :cond_25
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_26

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    :cond_26
    const p0, 0x7f0b0ec3

    goto/16 :goto_2

    :cond_27
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const p0, 0x7f0b0ec1

    goto/16 :goto_2

    :cond_28
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ebf

    goto/16 :goto_2

    :cond_29
    const v3, 0x7f0b0eca

    if-ne p0, v3, :cond_2f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    :cond_2a
    const p0, 0x7f0b0ec9

    goto/16 :goto_2

    :cond_2b
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2c

    const p0, 0x7f0b0ec7

    goto/16 :goto_2

    :cond_2c
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2d

    const p0, 0x7f0b0ec8

    goto/16 :goto_2

    :cond_2d
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const p0, 0x7f0b0ec6

    goto/16 :goto_2

    :cond_2e
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ec5

    goto/16 :goto_2

    :cond_2f
    const v3, 0x7f0b0eda

    if-ne p0, v3, :cond_32

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    const p0, 0x7f0b0ed9

    goto/16 :goto_2

    :cond_30
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const p0, 0x7f0b0ed7

    goto/16 :goto_2

    :cond_31
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ed8

    goto/16 :goto_2

    :cond_32
    const v3, 0x7f0b0eff

    if-ne p0, v3, :cond_37

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_33

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_34

    :cond_33
    const p0, 0x7f0b0efc

    goto/16 :goto_2

    :cond_34
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_35

    const p0, 0x7f0b0efd

    goto/16 :goto_2

    :cond_35
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    const p0, 0x7f0b0efb

    goto/16 :goto_2

    :cond_36
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0efe

    goto/16 :goto_2

    :cond_37
    const v3, 0x7f0b0f4f

    if-ne p0, v3, :cond_3d

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_38

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_39

    :cond_38
    const p0, 0x7f0b0f4e

    goto/16 :goto_2

    :cond_39
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3a

    const p0, 0x7f0b0f4c

    goto/16 :goto_2

    :cond_3a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const p0, 0x7f0b0f4d

    goto/16 :goto_2

    :cond_3b
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3c

    const p0, 0x7f0b0f4b

    goto/16 :goto_2

    :cond_3c
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f4a

    goto/16 :goto_2

    :cond_3d
    const v3, 0x7f0b0f53

    if-ne p0, v3, :cond_41

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3e

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3f

    :cond_3e
    const p0, 0x7f0b0f52

    goto/16 :goto_2

    :cond_3f
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_40

    const p0, 0x7f0b0f51

    goto/16 :goto_2

    :cond_40
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f50

    goto/16 :goto_2

    :cond_41
    const v3, 0x7f0b0f57

    if-ne p0, v3, :cond_45

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_42

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_43

    :cond_42
    const p0, 0x7f0b0f56

    goto/16 :goto_2

    :cond_43
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_44

    const p0, 0x7f0b0f55

    goto/16 :goto_2

    :cond_44
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f54

    goto/16 :goto_2

    :cond_45
    const v3, 0x7f0b0f5d

    if-ne p0, v3, :cond_4b

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_46

    const p0, 0x7f0b0f5b

    goto/16 :goto_2

    :cond_46
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const p0, 0x7f0b0f59

    goto/16 :goto_2

    :cond_47
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_48

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_49

    :cond_48
    const p0, 0x7f0b0f5c

    goto/16 :goto_2

    :cond_49
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    const p0, 0x7f0b0f5a

    goto/16 :goto_2

    :cond_4a
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f58

    goto/16 :goto_2

    :cond_4b
    const v3, 0x7f0b0f63

    if-ne p0, v3, :cond_51

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    :cond_4c
    const p0, 0x7f0b0f62

    goto/16 :goto_2

    :cond_4d
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4e

    const p0, 0x7f0b0f60

    goto/16 :goto_2

    :cond_4e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4f

    const p0, 0x7f0b0f61

    goto/16 :goto_2

    :cond_4f
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_50

    const p0, 0x7f0b0f5f

    goto/16 :goto_2

    :cond_50
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f5e

    goto/16 :goto_2

    :cond_51
    const v3, 0x7f0b0f67

    if-ne p0, v3, :cond_55

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_52

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_53

    :cond_52
    const p0, 0x7f0b0f66

    goto/16 :goto_2

    :cond_53
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    const p0, 0x7f0b0f65

    goto/16 :goto_2

    :cond_54
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f64

    goto/16 :goto_2

    :cond_55
    const v3, 0x7f0b0f6b

    if-ne p0, v3, :cond_59

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_57

    :cond_56
    const p0, 0x7f0b0f6a

    goto/16 :goto_2

    :cond_57
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_58

    const p0, 0x7f0b0f69

    goto/16 :goto_2

    :cond_58
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f68

    goto/16 :goto_2

    :cond_59
    const v3, 0x7f0b0f71

    if-ne p0, v3, :cond_5f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5a

    const p0, 0x7f0b0f6f

    goto/16 :goto_2

    :cond_5a
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5b

    const p0, 0x7f0b0f6d

    goto/16 :goto_2

    :cond_5b
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5c

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    :cond_5c
    const p0, 0x7f0b0f70

    goto/16 :goto_2

    :cond_5d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5e

    const p0, 0x7f0b0f6e

    goto/16 :goto_2

    :cond_5e
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f6c

    goto/16 :goto_2

    :cond_5f
    const v3, 0x7f0b0f74

    if-ne p0, v3, :cond_61

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60

    const p0, 0x7f0b0f73

    goto/16 :goto_2

    :cond_60
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f72

    goto/16 :goto_2

    :cond_61
    const v3, 0x7f0b0f77

    if-ne p0, v3, :cond_63

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_62

    const p0, 0x7f0b0f76

    goto/16 :goto_2

    :cond_62
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f75

    goto/16 :goto_2

    :cond_63
    const v3, 0x7f0b0f7a

    if-ne p0, v3, :cond_65

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_64

    const p0, 0x7f0b0f79

    goto/16 :goto_2

    :cond_64
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f78

    goto/16 :goto_2

    :cond_65
    const v3, 0x7f0b0f7c

    if-ne p0, v3, :cond_66

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f7b

    goto/16 :goto_2

    :cond_66
    const v3, 0x7f0b0f7f

    if-ne p0, v3, :cond_68

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_67

    const p0, 0x7f0b0f7e

    goto/16 :goto_2

    :cond_67
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f7d

    goto/16 :goto_2

    :cond_68
    const v3, 0x7f0b0f82

    if-ne p0, v3, :cond_6a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_69

    const p0, 0x7f0b0f81

    goto/16 :goto_2

    :cond_69
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f80

    goto/16 :goto_2

    :cond_6a
    const v3, 0x7f0b0f85

    if-ne p0, v3, :cond_6c

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6b

    const p0, 0x7f0b0f84

    goto/16 :goto_2

    :cond_6b
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f83

    goto/16 :goto_2

    :cond_6c
    const v3, 0x7f0b0f87

    if-ne p0, v3, :cond_6d

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f86

    goto/16 :goto_2

    :cond_6d
    const v3, 0x7f0b0e82

    if-ne p0, v3, :cond_74

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6e

    const p0, 0x7f0b0e7d

    goto/16 :goto_2

    :cond_6e
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6f

    const p0, 0x7f0b0e7f

    goto/16 :goto_2

    :cond_6f
    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_70

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_71

    :cond_70
    const p0, 0x7f0b0e81

    goto/16 :goto_2

    :cond_71
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_72

    const p0, 0x7f0b0e80

    goto/16 :goto_2

    :cond_72
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_73

    const p0, 0x7f0b0e7e

    goto/16 :goto_2

    :cond_73
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e7c

    goto/16 :goto_2

    :cond_74
    const v3, 0x7f0b0f27

    if-ne p0, v3, :cond_79

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_75

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_76

    :cond_75
    const p0, 0x7f0b0f26

    goto/16 :goto_2

    :cond_76
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    const p0, 0x7f0b0f24

    goto/16 :goto_2

    :cond_77
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_78

    const p0, 0x7f0b0f25

    goto/16 :goto_2

    :cond_78
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f23

    goto/16 :goto_2

    :cond_79
    const v3, 0x7f0b0f99

    if-ne p0, v3, :cond_7a

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f98

    goto/16 :goto_2

    :cond_7a
    const v3, 0x7f0b0e6e

    if-ne p0, v3, :cond_7e

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7b

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7c

    :cond_7b
    const p0, 0x7f0b0e6d

    goto/16 :goto_2

    :cond_7c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7d

    const p0, 0x7f0b0e6c

    goto/16 :goto_2

    :cond_7d
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e6b

    goto/16 :goto_2

    :cond_7e
    const v3, 0x7f0b0e72

    if-ne p0, v3, :cond_82

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7f

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_80

    :cond_7f
    const p0, 0x7f0b0e71

    goto/16 :goto_2

    :cond_80
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_81

    const p0, 0x7f0b0e70

    goto/16 :goto_2

    :cond_81
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e6f

    goto/16 :goto_2

    :cond_82
    const v3, 0x7f0b0f04

    if-ne p0, v3, :cond_83

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f03

    goto/16 :goto_2

    :cond_83
    const v3, 0x7f0b0fa1

    if-ne p0, v3, :cond_88

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_84

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_85

    :cond_84
    const p0, 0x7f0b0fa0

    goto/16 :goto_2

    :cond_85
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_86

    const p0, 0x7f0b0f9e

    goto/16 :goto_2

    :cond_86
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_87

    const p0, 0x7f0b0f9f

    goto/16 :goto_2

    :cond_87
    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f9d

    goto/16 :goto_2

    :cond_88
    const v3, 0x7f0b0e4b

    if-ne p0, v3, :cond_89

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e4a

    goto/16 :goto_2

    :cond_89
    const v3, 0x7f0b0e5a

    if-ne p0, v3, :cond_8a

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e59

    goto/16 :goto_2

    :cond_8a
    const v3, 0x7f0b0eb0

    if-ne p0, v3, :cond_8e

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8b

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8c

    :cond_8b
    const p0, 0x7f0b0eaf

    goto/16 :goto_2

    :cond_8c
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8d

    const p0, 0x7f0b0eae

    goto/16 :goto_2

    :cond_8d
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ead

    goto/16 :goto_2

    :cond_8e
    const v3, 0x7f0b0ee8

    if-ne p0, v3, :cond_92

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8f

    const p0, 0x7f0b0ee5

    goto/16 :goto_2

    :cond_8f
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_90

    const p0, 0x7f0b0ee6

    goto/16 :goto_2

    :cond_90
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_91

    const p0, 0x7f0b0ee7

    goto/16 :goto_2

    :cond_91
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ee4

    goto/16 :goto_2

    :cond_92
    const v3, 0x7f0b0f97

    if-ne p0, v3, :cond_95

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_93

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_94

    :cond_93
    const p0, 0x7f0b0f95

    goto/16 :goto_2

    :cond_94
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f96

    goto/16 :goto_2

    :cond_95
    const v3, 0x7f0b0f8b

    if-ne p0, v3, :cond_97

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_96

    const p0, 0x7f0b0f89

    goto/16 :goto_2

    :cond_96
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f8a

    goto/16 :goto_2

    :cond_97
    const v3, 0x7f0b0f33

    if-ne p0, v3, :cond_9b

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_98

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_99

    :cond_98
    const p0, 0x7f0b0f32

    goto/16 :goto_2

    :cond_99
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9a

    const p0, 0x7f0b0f30

    goto/16 :goto_2

    :cond_9a
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f31

    goto/16 :goto_2

    :cond_9b
    const v3, 0x7f0b0f3f

    if-ne p0, v3, :cond_9f

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9c

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9d

    :cond_9c
    const p0, 0x7f0b0f3e

    goto/16 :goto_2

    :cond_9d
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9e

    const p0, 0x7f0b0f3c

    goto/16 :goto_2

    :cond_9e
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f3d

    goto/16 :goto_2

    :cond_9f
    const v3, 0x7f0b0f8d

    if-ne p0, v3, :cond_a0

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f8c

    goto/16 :goto_2

    :cond_a0
    const v3, 0x7f0b0e62

    if-ne p0, v3, :cond_a1

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e61

    goto/16 :goto_2

    :cond_a1
    const v3, 0x7f0b0e64

    if-ne p0, v3, :cond_a2

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e63

    goto/16 :goto_2

    :cond_a2
    const v3, 0x7f0b0e9e

    if-ne p0, v3, :cond_a6

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a3

    const p0, 0x7f0b0e9a

    goto/16 :goto_2

    :cond_a3
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a4

    const p0, 0x7f0b0e9b

    goto/16 :goto_2

    :cond_a4
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a5

    const p0, 0x7f0b0e9d

    goto/16 :goto_2

    :cond_a5
    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e9c

    goto/16 :goto_2

    :cond_a6
    const v3, 0x7f0b0eea

    if-ne p0, v3, :cond_a7

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0ee9

    goto/16 :goto_2

    :cond_a7
    const v3, 0x7f0b0eec

    if-ne p0, v3, :cond_a8

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0eeb

    goto/16 :goto_2

    :cond_a8
    const v3, 0x7f0b0f06

    if-ne p0, v3, :cond_a9

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f05

    goto/16 :goto_2

    :cond_a9
    const v3, 0x7f0b0f08

    if-ne p0, v3, :cond_aa

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f07

    goto/16 :goto_2

    :cond_aa
    const v3, 0x7f0b0f0a

    if-ne p0, v3, :cond_ab

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f09

    goto/16 :goto_2

    :cond_ab
    const v3, 0x7f0b0f11

    if-ne p0, v3, :cond_ac

    const-string/jumbo v3, "CMCC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f10

    goto/16 :goto_2

    :cond_ac
    const v3, 0x7f0b0f1c

    if-ne p0, v3, :cond_ad

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f1b

    goto/16 :goto_2

    :cond_ad
    const v3, 0x7f0b0f1e

    if-ne p0, v3, :cond_ae

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0f1d

    goto/16 :goto_2

    :cond_ae
    const v3, 0x7f0b0fab

    if-ne p0, v3, :cond_af

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0faa

    goto/16 :goto_2

    :cond_af
    const v3, 0x7f0b0fa6

    if-ne p0, v3, :cond_b4

    const-string/jumbo v3, "VZW"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b0

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b1

    :cond_b0
    const p0, 0x7f0b0fa2

    goto/16 :goto_2

    :cond_b1
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b2

    const p0, 0x7f0b0fa3

    goto/16 :goto_2

    :cond_b2
    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b3

    const p0, 0x7f0b0fa4

    goto/16 :goto_2

    :cond_b3
    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0fa5

    goto/16 :goto_2

    :cond_b4
    const v3, 0x7f0b0e06

    if-ne p0, v3, :cond_b6

    const-string/jumbo v3, "DCM"

    sget-object v4, Lcom/android/settings/Utils;->CONFIG_OP_BRANDING:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b5

    const p0, 0x7f0b0e05

    goto/16 :goto_2

    :cond_b5
    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const p0, 0x7f0b0e04

    goto/16 :goto_2

    :cond_b6
    const v3, 0x7f0b0dd5

    if-ne p0, v3, :cond_4

    const-string/jumbo v3, "TMO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    const-string/jumbo v3, "SPRINT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    const-string/jumbo v3, "NEWCO"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    const-string/jumbo v3, "ATT"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b7

    const-string/jumbo v3, "USC"

    sget-object v4, Lcom/samsung/android/settings/WifiApUtils;->mMHSCustomer:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_b7
    const p0, 0x7f0b0dd6

    goto/16 :goto_2
.end method
