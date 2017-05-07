.class public Lcom/samsung/android/mateservice/executable/ExecStringCrypto;
.super Ljava/lang/Object;
.source "ExecStringCrypto.java"

# interfaces
.implements Lcom/samsung/android/mateservice/action/ActionExecutable;


# static fields
.field private static final TAG:Ljava/lang/String; = "StringCrypto"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    const-string/jumbo v6, "decryptResult"

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->decryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    :cond_2
    const-string/jumbo v5, "decryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    const-string/jumbo v6, "decryptResult"

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->decryption([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    goto :goto_0
.end method

.method private getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 8

    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string/jumbo v5, "dataType"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    const-string/jumbo v6, "encryptResult"

    invoke-static {v0}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->encryption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->build()Landroid/os/Bundle;

    move-result-object v4

    :cond_1
    return-object v4

    :cond_2
    const-string/jumbo v5, "encryptData"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->get()Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v5

    const-string/jumbo v6, "encryptResult"

    invoke-static {v1}, Lcom/samsung/android/mateservice/util/UtilStringCrypto;->encryption([B)[B

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/samsung/android/mateservice/common/BundleArgs$Builder;->put(Ljava/lang/String;[B)Lcom/samsung/android/mateservice/common/BundleArgs$Builder;

    move-result-object v3

    goto :goto_0
.end method


# virtual methods
.method public execute(Landroid/os/Bundle;II)Landroid/os/Bundle;
    .locals 4

    const/4 v3, 0x0

    const-string/jumbo v0, "StringCrypto"

    const-string/jumbo v1, "ActionSecurityUtil"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/mateservice/util/UtilLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    if-eqz p1, :cond_0

    packed-switch p3, :pswitch_data_0

    :cond_0
    return-object v3

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;->getEncryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/samsung/android/mateservice/executable/ExecStringCrypto;->getDecryptedData(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x120003
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
