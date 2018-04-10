.class Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
.super Ljava/lang/Object;
.source "SyntheticPasswordManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SyntheticPasswordManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AuthenticationToken"
.end annotation


# instance fields
.field private E0:[B

.field private P1:[B

.field private syntheticPassword:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object p1
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static create()Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;
    .locals 3

    const/16 v2, 0x20

    new-instance v0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;

    invoke-direct {v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;-><init>()V

    invoke-static {v2}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v1

    invoke-static {v2}, Lcom/android/server/SyntheticPasswordManager;->secureRandom(I)[B

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-object v0
.end method

.method private initialize([B[B)V
    .locals 3

    iput-object p2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get5()[B

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Llibcore/util/HexEncoding;->encode([B)[C

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/android/server/SyntheticPasswordCrypto;->encrypt([B[B[B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    return-void
.end method


# virtual methods
.method public computeP0()[B
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get0()[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->E0:[B

    invoke-static {v0, v1, v2}, Lcom/android/server/SyntheticPasswordCrypto;->decrypt([B[B[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveDiskEncryptionKey()[B
    .locals 4

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get1()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveGkPassword()[B
    .locals 4

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get4()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public deriveKeyStorePassword()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get2()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalisedHash([B[[B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/SyntheticPasswordManager;->bytesToHex([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public deriveSdpMasterKey()[B
    .locals 4

    invoke-static {}, Lcom/android/server/SyntheticPasswordManager;->-get3()[B

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [[B

    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/android/server/SyntheticPasswordCrypto;->personalizedHash([B[[B)[B

    move-result-object v0

    return-object v0
.end method

.method public destroy()V
    .locals 0

    return-void
.end method

.method public dump(Lcom/samsung/android/iccc/IntegrityControlCheckCenter;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const v2, -0xdfffff

    :try_start_0
    invoke-virtual {p1, v2}, Lcom/samsung/android/iccc/IntegrityControlCheckCenter;->getSecureData(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Make sure to call through system process"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Device seems to be compormised!"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-string/jumbo v2, "eng"

    const-string/jumbo v3, "ro.build.type"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "Available only for engineering mode"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    iget-object v2, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->syntheticPassword:Ljava/lang/String;

    return-object v2
.end method

.method public recreate([B)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->P1:[B

    invoke-direct {p0, p1, v0}, Lcom/android/server/SyntheticPasswordManager$AuthenticationToken;->initialize([B[B)V

    return-void
.end method
