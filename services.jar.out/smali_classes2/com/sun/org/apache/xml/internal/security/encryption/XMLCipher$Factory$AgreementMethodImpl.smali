.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/org/apache/xml/internal/security/encryption/AgreementMethod;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AgreementMethodImpl"
.end annotation


# instance fields
.field private agreementMethodInformation:Ljava/util/List;

.field private algorithmURI:Ljava/lang/String;

.field private kaNonce:[B

.field private originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

.field private final synthetic this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->kaNonce:[B

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->algorithmURI:Ljava/lang/String;

    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v1, p2}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->algorithmURI:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public addAgreementMethodInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getAgreementMethodInformation()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->algorithmURI:Ljava/lang/String;

    return-object v0
.end method

.method public getKANonce()[B
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->kaNonce:[B

    return-object v0
.end method

.method public getOriginatorKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public getRecipientKeyInfo()Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-object v0
.end method

.method public revoveAgreementMethodInformation(Lorg/w3c/dom/Element;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/URI;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xml/internal/utils/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/utils/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xml/internal/utils/URI;->toString()Ljava/lang/String;

    return-void

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public setKANonce([B)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->kaNonce:[B

    return-void
.end method

.method public setOriginatorKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method public setRecipientKeyInfo(Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    return-void
.end method

.method toElement()Lorg/w3c/dom/Element;
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v4, "AgreementMethod"

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->algorithmURI:Ljava/lang/String;

    const-string/jumbo v3, "Algorithm"

    invoke-interface {v0, v5, v3, v2}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->kaNonce:[B

    if-nez v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    if-nez v2, :cond_4

    :goto_2
    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v2

    const-string/jumbo v3, "http://www.w3.org/2001/04/xmlenc#"

    const-string/jumbo v4, "KA-Nonce"

    invoke-static {v2, v3, v4}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->createElementForFamily(Lorg/w3c/dom/Document;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->this$1:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;->access$400(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory;)Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v3

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->kaNonce:[B

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>([B)V

    invoke-interface {v3, v4}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->agreementMethodInformation:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_3
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->originatorKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Factory$AgreementMethodImpl;->recipientKeyInfo:Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2
.end method
