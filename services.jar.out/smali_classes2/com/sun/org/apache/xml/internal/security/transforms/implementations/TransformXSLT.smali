.class public Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXSLT;
.super Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;


# static fields
.field static final XSLTSTYLESHEET:Ljava/lang/String; = "stylesheet"

.field static final XSLTSpecNS:Ljava/lang/String; = "http://www.w3.org/1999/XSL/Transform"

.field static final defaultXSLTSpecNSprefix:Ljava/lang/String; = "xslt"

.field public static final implementedTransformURI:Ljava/lang/String; = "http://www.w3.org/TR/1999/REC-xslt-19991116"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;-><init>()V

    return-void
.end method


# virtual methods
.method protected engineGetURI()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/TR/1999/REC-xslt-19991116"

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xml/internal/security/transforms/implementations/TransformXSLT;->enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    move-result-object v0

    return-object v0
.end method

.method protected enginePerformTransform(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/io/OutputStream;)Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;
        }
    .end annotation

    :try_start_0
    iget-object v9, p0, Lcom/sun/org/apache/xml/internal/security/transforms/TransformSpi;->_transformObject:Lcom/sun/org/apache/xml/internal/security/transforms/Transform;

    invoke-virtual {v9}, Lcom/sun/org/apache/xml/internal/security/utils/ElementProxy;->getElement()Lorg/w3c/dom/Element;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v9

    const-string/jumbo v10, "http://www.w3.org/1999/XSL/Transform"

    const-string/jumbo v11, "stylesheet"

    const/4 v12, 0x0

    invoke-static {v9, v10, v11, v12}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->selectNode(Lorg/w3c/dom/Node;Ljava/lang/String;Ljava/lang/String;I)Lorg/w3c/dom/Element;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v4

    new-instance v5, Ljavax/xml/transform/stream/StreamSource;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->getBytes()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v5, v9}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-virtual {v4}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v8

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v0, v3}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v7}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v8, v0, v1}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v6, Ljavax/xml/transform/stream/StreamSource;

    new-instance v9, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v6, v9}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v4, v6}, Ljavax/xml/transform/TransformerFactory;->newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;

    move-result-object v7

    if-eqz p2, :cond_1

    new-instance v8, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v8, p2}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v5, v8}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    const/4 v9, 0x0

    check-cast v9, [B

    invoke-direct {v0, v9}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->setOutputStream(Ljava/io/OutputStream;)V

    return-object v0

    :cond_0
    const/4 v9, 0x2

    new-array v4, v9, [Ljava/lang/Object;

    const-string/jumbo v9, "xslt:stylesheet"

    const/4 v10, 0x0

    aput-object v9, v4, v10

    const-string/jumbo v9, "Transform"

    const/4 v10, 0x1

    aput-object v9, v4, v10

    new-instance v9, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v10, "xml.WrongContent"

    invoke-direct {v9, v10, v4}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v9
    :try_end_0
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_2

    :catch_0
    move-exception v2

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v3, v10

    new-instance v9, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v10, "generic.EmptyMessage"

    invoke-direct {v9, v10, v3, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v9

    :cond_1
    :try_start_1
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0, v8}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v7, v5, v0}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    new-instance v9, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;

    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;-><init>([B)V
    :try_end_1
    .catch Lcom/sun/org/apache/xml/internal/security/exceptions/XMLSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_2

    return-object v9

    :catch_1
    move-exception v2

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v3, v10

    new-instance v9, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v10, "generic.EmptyMessage"

    invoke-direct {v9, v10, v3, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v9

    :catch_2
    move-exception v2

    const/4 v9, 0x1

    new-array v3, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    aput-object v9, v3, v10

    new-instance v9, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;

    const-string/jumbo v10, "generic.EmptyMessage"

    invoke-direct {v9, v10, v3, v2}, Lcom/sun/org/apache/xml/internal/security/transforms/TransformationException;-><init>(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    throw v9
.end method
