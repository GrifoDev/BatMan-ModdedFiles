.class Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Serializer"
.end annotation


# instance fields
.field private final synthetic this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;


# direct methods
.method constructor <init>(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    return-void
.end method


# virtual methods
.method canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->setWriter(Ljava/io/OutputStream;)V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->notReset()V

    iget-object v1, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string/jumbo v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method deserialize(Ljava/lang/String;Lorg/w3c/dom/Node;)Lorg/w3c/dom/DocumentFragment;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;
        }
    .end annotation

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v14, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><fragment"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-object/from16 v8, p2

    :goto_0
    if-nez v8, :cond_0

    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "</"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "fragment"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, ">"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    const/4 v14, 0x1

    invoke-virtual {v11, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    sget-object v14, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string/jumbo v15, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v11, v15, v14}, Ljavax/xml/parsers/DocumentBuilderFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v13

    new-instance v14, Lorg/xml/sax/InputSource;

    new-instance v15, Ljava/io/StringReader;

    invoke-direct {v15, v9}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v14, v15}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v13, v14}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v14}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v14

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v15

    const/16 v16, 0x1

    invoke-interface/range {v14 .. v16}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v14}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$200(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lorg/w3c/dom/Document;

    move-result-object v14

    invoke-interface {v14}, Lorg/w3c/dom/Document;->createDocumentFragment()Lorg/w3c/dom/DocumentFragment;

    move-result-object v6

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    :goto_1
    if-nez v4, :cond_9

    return-object v6

    :cond_0
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    if-nez v9, :cond_1

    const/4 v10, 0x0

    :goto_2
    const/4 v12, 0x0

    :goto_3
    if-lt v12, v10, :cond_2

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v8

    goto/16 :goto_0

    :cond_1
    invoke-interface {v9}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v10

    goto :goto_2

    :cond_2
    invoke-interface {v9, v12}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "xmlns:"

    invoke-virtual {v14, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_4

    :cond_3
    move-object/from16 v2, p2

    const/4 v3, 0x0

    :goto_4
    if-ne v2, v8, :cond_5

    :goto_5
    if-eqz v3, :cond_8

    :goto_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "xmlns"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    goto :goto_6

    :cond_5
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v5

    if-nez v5, :cond_7

    :cond_6
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    goto :goto_4

    :cond_7
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v5, v14}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v14

    if-eqz v14, :cond_6

    const/4 v3, 0x1

    goto :goto_5

    :cond_8
    new-instance v14, Ljava/lang/StringBuffer;

    invoke-direct {v14}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "=\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    const-string/jumbo v15, "\""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v7, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_6

    :cond_9
    :try_start_1
    invoke-interface {v2, v4}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v6, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v4

    goto/16 :goto_1

    :catch_0
    move-exception v11

    new-instance v14, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v15, "empty"

    invoke-direct {v14, v15, v11}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    :catch_1
    move-exception v11

    new-instance v14, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v15, "empty"

    invoke-direct {v14, v15, v11}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14

    :catch_2
    move-exception v11

    new-instance v14, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;

    const-string/jumbo v15, "empty"

    invoke-direct {v14, v15, v11}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLEncryptionException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v14
.end method

.method serialize(Lorg/w3c/dom/Document;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method serialize(Lorg/w3c/dom/Element;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->canonSerialize(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method serialize(Lorg/w3c/dom/NodeList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->setWriter(Ljava/io/OutputStream;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->notReset()V

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-lt v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    const-string/jumbo v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher$Serializer;->this$0:Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;

    invoke-static {v2}, Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;->access$100(Lcom/sun/org/apache/xml/internal/security/encryption/XMLCipher;)Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;

    move-result-object v2

    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xml/internal/security/c14n/Canonicalizer;->canonicalizeSubtree(Lorg/w3c/dom/Node;)[B

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
