.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/CipherData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CipherDataImpl"
.end annotation


# static fields
.field private static final referenceMessage:Ljava/lang/String; = "Data type is value type."

.field private static final valueMessage:Ljava/lang/String; = "Data type is reference type."


# instance fields
.field private cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

.field private cipherType:I

.field private cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    iput p2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    return-void
.end method


# virtual methods
.method public getCipherReference()Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    return-object v0
.end method

.method public getCipherValue()Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    return-object v0
.end method

.method public getDataType()I
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    return v0
.end method

.method public setCipherReference(Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Data type is value type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "empty"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public setCipherValue(Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    return-void

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "Data type is reference type."

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "empty"

    invoke-direct {v0, v2, v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 4

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string/jumbo v2, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v3, "CipherData"

    invoke-static {v1, v2, v3}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherType:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherValue:Lcom/sun/org/apache/xml/internal/security/encryption/CipherValue;

    check-cast v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherValueImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherDataImpl;->cipherReference:Lcom/sun/org/apache/xml/internal/security/encryption/CipherReference;

    check-cast v1, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$CipherReferenceImpl;->toElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method
