.class public Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;
.super Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;


# static fields
.field static _alreadyInitialized:Z

.field static synthetic class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

.field static log:Ljava/util/logging/Logger;


# instance fields
.field _internalKeyResolvers:Ljava/util/List;

.field _storageResolvers:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_alreadyInitialized:Z

    return-void

    :cond_0
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.KeyInfo"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Document;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_internalKeyResolvers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xml/internal/security/utils/SignatureElementProxy;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_internalKeyResolvers:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    return-void
.end method

.method static synthetic class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static init()V
    .locals 3

    sget-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_alreadyInitialized:Z

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    if-eqz v0, :cond_1

    :goto_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_alreadyInitialized:Z

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string/jumbo v2, "Had to assign log in the init() function"

    invoke-virtual {v0, v1, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string/jumbo v0, "com.sun.org.apache.xml.internal.security.keys.KeyInfo"

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->class$com$sun$org$apache$xml$internal$security$keys$KeyInfo:Ljava/lang/Class;

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    iget v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->martial(Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;)Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;)V
    .locals 2

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/DSAKeyValue;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public add(Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lcom/sun/org/apache/xml/internal/security/keys/content/keyvalues/RSAKeyValue;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public add(Ljava/security/PublicKey;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Ljava/security/PublicKey;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addKeyName(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;)V

    return-void
.end method

.method public addKeyValue(Ljava/security/PublicKey;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Ljava/security/PublicKey;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addKeyValue(Lorg/w3c/dom/Element;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Element;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;)V

    return-void
.end method

.method public addMgmtData(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1}, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;)V

    return-void
.end method

.method public addRetrievalMethod(Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Document;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/transforms/Transforms;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->add(Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;)V

    return-void
.end method

.method public addStorageResolver(Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)V
    .locals 1

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public addUnknownElement(Lorg/w3c/dom/Element;)V
    .locals 1

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->addReturnToElement(Lorg/w3c/dom/Element;)V

    goto :goto_0
.end method

.method public containsKeyName()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthKeyName()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsKeyValue()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthKeyValue()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsMgmtData()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthMgmtData()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsPGPData()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthPGPData()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsRetrievalMethod()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthRetrievalMethod()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsSPKIData()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthSPKIData()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsUnknownElement()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthUnknownElement()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public containsX509Data()Z
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthX509Data()I

    move-result v1

    if-gtz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getBaseLocalName()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "KeyInfo"

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const/4 v1, 0x0

    const-string/jumbo v2, "Id"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getPublicKeyFromInternalResolvers()Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getPublicKeyFromStaticResolvers()Ljava/security/PublicKey;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return-object v4

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getPublicKeyFromInternalResolvers()Ljava/security/PublicKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthInternalKeyResolver()I

    move-result v7

    if-lt v0, v7, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v1

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v5

    if-eqz v5, :cond_3

    return-object v5

    :cond_7
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v6

    if-eqz v6, :cond_5

    return-object v6
.end method

.method getPublicKeyFromStaticResolvers()Ljava/security/PublicKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v7

    if-lt v0, v7, :cond_0

    return-object v9

    :cond_0
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_6
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolvePublicKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/PublicKey;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6
.end method

.method public getSecretKey()Ljavax/crypto/SecretKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKeyFromInternalResolvers()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getSecretKeyFromStaticResolvers()Ljavax/crypto/SecretKey;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return-object v4

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a secret key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a secret key using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a secret key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a secret key using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getSecretKeyFromInternalResolvers()Ljavax/crypto/SecretKey;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v11, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthInternalKeyResolver()I

    move-result v7

    if-lt v0, v7, :cond_0

    return-object v11

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v1

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_1

    :goto_1
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v5

    if-eqz v5, :cond_3

    return-object v5

    :cond_7
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v6

    if-eqz v6, :cond_5

    return-object v6
.end method

.method getSecretKeyFromStaticResolvers()Ljavax/crypto/SecretKey;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v9, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v7

    if-lt v0, v7, :cond_0

    return-object v9

    :cond_0
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_1
    if-nez v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_3

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_5

    const/4 v3, 0x0

    :goto_2
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_2

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_2

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v5

    if-eqz v5, :cond_2

    return-object v5

    :cond_6
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveSecretKey(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljavax/crypto/SecretKey;

    move-result-object v6

    if-eqz v6, :cond_4

    return-object v6
.end method

.method getStorageResolvers()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    return-object v0
.end method

.method public getX509Certificate()Ljava/security/cert/X509Certificate;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getX509CertificateFromInternalResolvers()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_2

    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->getX509CertificateFromStaticResolvers()Ljava/security/cert/X509Certificate;

    move-result-object v0

    if-nez v0, :cond_3

    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_5

    :goto_1
    return-object v4

    :cond_0
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_2
    return-object v0

    :cond_1
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a X509Certificate using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a X509Certificate using the per-KeyInfo key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-nez v1, :cond_4

    :goto_3
    return-object v0

    :cond_4
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I could find a X509Certificate using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    sget-object v1, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string/jumbo v3, "I couldn\'t find a X509Certificate using the system-wide key resolvers"

    invoke-virtual {v1, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1
.end method

.method getX509CertificateFromInternalResolvers()Ljava/security/cert/X509Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v11, 0x0

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthInternalKeyResolver()I

    move-result v7

    if-lt v0, v7, :cond_1

    return-object v11

    :cond_0
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Start getX509CertificateFromInternalResolvers() with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->lengthInternalKeyResolver()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, " resolvers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    move-result-object v1

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_2

    :goto_2
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_3
    if-nez v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Try "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_5

    :cond_4
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_3

    :cond_5
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_7

    const/4 v3, 0x0

    :goto_4
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_4

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineCanResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_4

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_4

    return-object v5

    :cond_8
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;->engineResolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_6

    return-object v6
.end method

.method getX509CertificateFromStaticResolvers()Ljava/security/cert/X509Certificate;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverException;
        }
    .end annotation

    const/4 v11, 0x0

    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v7, v8}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v7

    if-nez v7, :cond_0

    :goto_0
    const/4 v0, 0x0

    :goto_1
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v7

    if-lt v0, v7, :cond_1

    return-object v11

    :cond_0
    sget-object v7, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->log:Ljava/util/logging/Logger;

    sget-object v8, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v10, "Start getX509CertificateFromStaticResolvers() with "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string/jumbo v10, " resolvers"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->item(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;

    move-result-object v1

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    :goto_2
    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v3, 0x0

    :goto_3
    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v3, v7, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_storageResolvers:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-nez v7, :cond_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->canResolve(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v4}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v5

    if-eqz v5, :cond_3

    return-object v5

    :cond_7
    move-object v7, v2

    check-cast v7, Lorg/w3c/dom/Element;

    invoke-virtual {p0}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getBaseURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v7, v8, v5}, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolver;->resolveX509Certificate(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/sun/org/apache/xml/internal/security/keys/storage/StorageResolver;)Ljava/security/cert/X509Certificate;

    move-result-object v6

    if-eqz v6, :cond_5

    return-object v6
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public itemEncryptedKey(I)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v2

    const-string/jumbo v3, "EncryptedKey"

    invoke-static {v2, v3, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectXencNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v4

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->getInstance()Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2, v4}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->init(ILjava/security/Key;)V

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->loadEncryptedKey(Lorg/w3c/dom/Element;)Lcom/sun/org/apache/xml/internal/security/encryption/EncryptedKey;

    move-result-object v2

    return-object v2
.end method

.method itemInternalKeyResolver(I)Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;

    return-object v0
.end method

.method public itemKeyName(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "KeyName"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyName;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemKeyValue(I)Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "KeyValue"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/KeyValue;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemMgmtData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "MgmtData"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/MgmtData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemPGPData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "PGPData"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/PGPData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemRetrievalMethod(I)Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "RetrievalMethod"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/RetrievalMethod;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemSPKIData(I)Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "SPKIData"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/SPKIData;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method public itemUnknownElement(I)Lorg/w3c/dom/Element;
    .locals 6

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_0

    const/4 v4, 0x0

    return-object v4

    :cond_0
    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    if-ne v1, p1, :cond_1

    check-cast v3, Lorg/w3c/dom/Element;

    return-object v3
.end method

.method public itemX509Data(I)Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    const-string/jumbo v2, "X509Data"

    invoke-static {v1, v2, p1}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectDsNode(Lorg/w3c/dom/Node;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    new-instance v1, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_baseURI:Ljava/lang/String;

    invoke-direct {v1, v0, v2}, Lcom/sun/org/apache/xml/internal/security/keys/content/X509Data;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    return-object v1
.end method

.method lengthInternalKeyResolver()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public lengthKeyName()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "KeyName"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthKeyValue()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "KeyValue"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthMgmtData()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "MgmtData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthPGPData()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "PGPData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthRetrievalMethod()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "RetrievalMethod"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthSPKIData()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "SPKIData"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public lengthUnknownElement()I
    .locals 6

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lt v2, v4, :cond_0

    return v0

    :cond_0
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "http://www.w3.org/2000/09/xmldsig#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public lengthX509Data()I
    .locals 2

    const-string/jumbo v0, "http://www.w3.org/2000/09/xmldsig#"

    const-string/jumbo v1, "X509Data"

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->length(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public registerInternalKeyResolver(Lcom/sun/org/apache/xml/internal/security/keys/keyresolver/KeyResolverSpi;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/keys/KeyInfo;->_internalKeyResolvers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_state:I

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    const-string/jumbo v1, "Id"

    invoke-interface {v0, v2, v1, p1}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->_constructionElement:Lorg/w3c/dom/Element;

    invoke-static {v0, p1}, Lcom/sun/org/apache/xml/internal/security/utils/IdResolver;->registerElementById(Lorg/w3c/dom/Element;Ljava/lang/String;)V

    goto :goto_0
.end method
