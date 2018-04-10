.class public Lcom/android/server/SyntheticPasswordCrypto;
.super Ljava/lang/Object;
.source "SyntheticPasswordCrypto.java"


# static fields
.field private static final AES_KEY_LENGTH:I = 0x20

.field private static final APPLICATION_ID_PERSONALIZATION:[B

.field private static final PROFILE_KEY_IV_SIZE:I = 0xc

.field private static final USER_AUTHENTICATION_VALIDITY:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string/jumbo v0, "application-id"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[BJ)[B
    .locals 4

    :try_start_0
    sget-object v2, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v2, p2}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to encrypt blob"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static createBlob(Ljava/lang/String;[B[BJ)[B
    .locals 11

    :try_start_0
    const-string/jumbo v6, "AES"

    invoke-static {v6}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v3

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v3, v6}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/SecureRandom;)V

    invoke-virtual {v3}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v5

    const-string/jumbo v6, "AndroidKeyStore"

    invoke-static {v6}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    new-instance v6, Landroid/security/keystore/KeyProtection$Builder;

    const/4 v7, 0x2

    invoke-direct {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;-><init>(I)V

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "GCM"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/String;

    const-string/jumbo v8, "NoPadding"

    const/4 v9, 0x0

    aput-object v8, v7, v9

    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setCriticalToDeviceEncryption(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v0

    const-wide/16 v6, 0x0

    cmp-long v6, p3, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationRequired(Z)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    invoke-virtual {v6, p3, p4}, Landroid/security/keystore/KeyProtection$Builder;->setBoundToSpecificSecureUserId(J)Landroid/security/keystore/KeyProtection$Builder;

    move-result-object v6

    const/16 v7, 0xf

    invoke-virtual {v6, v7}, Landroid/security/keystore/KeyProtection$Builder;->setUserAuthenticationValidityDurationSeconds(I)Landroid/security/keystore/KeyProtection$Builder;

    :cond_0
    new-instance v6, Ljava/security/KeyStore$SecretKeyEntry;

    invoke-direct {v6, v5}, Ljava/security/KeyStore$SecretKeyEntry;-><init>(Ljavax/crypto/SecretKey;)V

    invoke-virtual {v0}, Landroid/security/keystore/KeyProtection$Builder;->build()Landroid/security/keystore/KeyProtection;

    move-result-object v7

    invoke-virtual {v4, p0, v6, v7}, Ljava/security/KeyStore;->setEntry(Ljava/lang/String;Ljava/security/KeyStore$Entry;Ljava/security/KeyStore$ProtectionParameter;)V

    sget-object v6, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v6, p1}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    return-object v6

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Failed to encrypt blob"

    invoke-direct {v6, v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method private static decrypt(Ljavax/crypto/SecretKey;[B)[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/InvalidAlgorithmParameterException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v3, 0x0

    const/16 v4, 0xc

    if-nez p1, :cond_0

    return-object v3

    :cond_0
    const/4 v3, 0x0

    invoke-static {p1, v3, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v2

    array-length v3, p1

    invoke-static {p1, v4, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    const-string/jumbo v3, "AES/GCM/NoPadding"

    invoke-static {v3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v3, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v4, 0x80

    invoke-direct {v3, v4, v2}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    const/4 v4, 0x2

    invoke-virtual {v0, v4, p0, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    invoke-virtual {v0, v1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v3

    return-object v3
.end method

.method public static decrypt([B[B[B)[B
    .locals 5

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v2

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string/jumbo v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v1, p2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/GeneralSecurityException;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method public static decryptBlob(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .locals 4

    :try_start_0
    invoke-static {p1, p2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v1

    sget-object v2, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v2, v1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to decrypt blob"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decryptBlob(Ljava/lang/String;[B[B)[B
    .locals 6

    :try_start_0
    const-string/jumbo v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    invoke-static {v0, p1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B

    move-result-object v2

    sget-object v4, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Failed to decrypt blob"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static decryptBlobV1(Ljava/lang/String;Ljavax/crypto/SecretKey;[B[B)[B
    .locals 4

    :try_start_0
    sget-object v2, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p3, v2, p2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "Failed to decrypt blob"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static decryptBlobV1(Ljava/lang/String;[B[B)[B
    .locals 6

    :try_start_0
    const-string/jumbo v4, "AndroidKeyStore"

    invoke-static {v4}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v0

    check-cast v0, Ljavax/crypto/SecretKey;

    sget-object v4, Lcom/android/server/SyntheticPasswordCrypto;->APPLICATION_ID_PERSONALIZATION:[B

    invoke-static {p2, v4, p1}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Failed to decrypt blob"

    invoke-direct {v4, v5, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method public static destroyBlobKey(Ljava/lang/String;)V
    .locals 3

    :try_start_0
    const-string/jumbo v2, "AndroidKeyStore"

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    invoke-virtual {v1, p0}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static encrypt(Ljavax/crypto/SecretKey;[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljavax/crypto/NoSuchPaddingException;,
            Ljava/security/InvalidKeyException;,
            Ljavax/crypto/IllegalBlockSizeException;,
            Ljavax/crypto/BadPaddingException;
        }
    .end annotation

    const/4 v4, 0x0

    if-nez p1, :cond_0

    return-object v4

    :cond_0
    const-string/jumbo v4, "AES/GCM/NoPadding"

    invoke-static {v4}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4, p0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v2

    array-length v4, v2

    const/16 v5, 0xc

    if-eq v4, v5, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Invalid iv length: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v3, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4
.end method

.method public static encrypt([B[B[B)[B
    .locals 5

    const/4 v3, 0x1

    new-array v3, v3, [[B

    const/4 v4, 0x0

    aput-object p0, v3, v4

    invoke-static {p1, v3}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v2

    new-instance v1, Ljavax/crypto/spec/SecretKeySpec;

    const/16 v3, 0x20

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v3

    const-string/jumbo v4, "AES"

    invoke-direct {v1, v3, v4}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    :try_start_0
    invoke-static {v1, p2}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt(Ljavax/crypto/SecretKey;[B)[B
    :try_end_0
    .catch Ljava/security/InvalidKeyException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/NoSuchPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/IllegalBlockSizeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/crypto/BadPaddingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v3, 0x0

    return-object v3
.end method

.method protected static varargs personalisedHash([B[[B)[B
    .locals 6

    const/16 v5, 0x80

    const/16 v0, 0x80

    :try_start_0
    const-string/jumbo v4, "SHA-512"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    array-length v4, p0

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Personalisation too long"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "NoSuchAlgorithmException for SHA-512"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    const/16 v4, 0x80

    :try_start_1
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p1, v4

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method

.method protected static varargs personalizedHash([B[[B)[B
    .locals 6

    const/16 v5, 0x40

    const/16 v0, 0x40

    :try_start_0
    const-string/jumbo v4, "SHA-256"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    array-length v4, p0

    if-le v4, v5, :cond_0

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Personalization too long"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "NoSuchAlgorithmException for SHA-256"

    invoke-direct {v4, v5, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_0
    const/16 v4, 0x40

    :try_start_1
    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/security/MessageDigest;->update([B)V

    const/4 v4, 0x0

    array-length v5, p1

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v1, p1, v4

    invoke-virtual {v2, v1}, Ljava/security/MessageDigest;->update([B)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v4

    return-object v4
.end method
