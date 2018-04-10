.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;
.super Ljava/lang/Object;
.source "XMLValidation.java"


# instance fields
.field context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    return-void
.end method

.method private schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    iget-object v4, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string/jumbo v4, "XMLValidation::schemaValidation: XML is Valid."

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const/4 v4, 0x1

    return v4

    :catch_0
    move-exception v0

    const-string/jumbo v4, "XMLValidation::schemaValidation: unable to open xsd"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return v5

    :cond_0
    const-string/jumbo v4, "XMLValidation::schemaValidation: resources not found"

    invoke-static {v4}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    return v5
.end method


# virtual methods
.method public isDskppValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->context:Landroid/content/Context;

    const-string/jumbo v1, "pskc_schema.xsd"

    invoke-direct {p0, p2, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->schemaValidation(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
