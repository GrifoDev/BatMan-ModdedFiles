.class public Lcom/samsung/android/mateservice/common/BundleArgs;
.super Ljava/lang/Object;
.source "BundleArgs.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/mateservice/common/BundleArgs$Builder;
    }
.end annotation


# static fields
.field public static final ACCESSORY_LIST:Ljava/lang/String; = "accessoryList"

.field public static final ATTACHED:Ljava/lang/String; = "attached"

.field public static final CLIENT_STATE_ACTION:Ljava/lang/String; = "clientStateAction"

.field public static final CLIENT_STATE_BUNDLE:Ljava/lang/String; = "clientStateBundle"

.field public static final DATA:Ljava/lang/String; = "data"

.field public static final EXTRA_DATA:Ljava/lang/String; = "extraData"

.field public static final KEEP_CONNECTION_STATE:Ljava/lang/String; = "keepConnectionState"

.field private static final RESULT_BOOLEAN:Ljava/lang/String; = "resultBoolean"

.field public static final SECURITY_DATA_TYPE:Ljava/lang/String; = "dataType"

.field public static final SECURITY_DECRYPT_DATA:Ljava/lang/String; = "decryptData"

.field public static final SECURITY_DECRYPT_RESULT:Ljava/lang/String; = "decryptResult"

.field public static final SECURITY_ENCRYPT_DATA:Ljava/lang/String; = "encryptData"

.field public static final SECURITY_ENCRYPT_RESULT:Ljava/lang/String; = "encryptResult"

.field public static final STATE_ID:Ljava/lang/String; = "stateId"

.field public static final TIMESTAMP:Ljava/lang/String; = "timeStamp"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteArray(Landroid/os/Bundle;Ljava/lang/String;)[B
    .locals 1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public static getResultBoolean(Landroid/os/Bundle;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo v1, "resultBoolean"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static getResultBundle(Z)Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "resultBoolean"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
