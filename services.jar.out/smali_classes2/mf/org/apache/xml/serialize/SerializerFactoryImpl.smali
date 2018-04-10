.class final Lmf/org/apache/xml/serialize/SerializerFactoryImpl;
.super Lmf/org/apache/xml/serialize/SerializerFactory;
.source "SerializerFactoryImpl.java"


# instance fields
.field private _method:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 4

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v3

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "MethodNotSupported"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "xml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "html"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "xhtml"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    aput-object v2, v1, v3

    const-string/jumbo v2, "http://apache.org/xml/serializer"

    const-string/jumbo v3, "MethodNotSupported"

    invoke-static {v2, v3, v1}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    new-instance v1, Lmf/org/apache/xml/serialize/XMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/XMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v1

    :cond_1
    new-instance v1, Lmf/org/apache/xml/serialize/HTMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v1

    :cond_2
    new-instance v1, Lmf/org/apache/xml/serialize/XHTMLSerializer;

    invoke-direct {v1, p1}, Lmf/org/apache/xml/serialize/XHTMLSerializer;-><init>(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v1

    :cond_3
    new-instance v1, Lmf/org/apache/xml/serialize/TextSerializer;

    invoke-direct {v1}, Lmf/org/apache/xml/serialize/TextSerializer;-><init>()V

    return-object v1
.end method


# virtual methods
.method protected getSupportedMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->_method:Ljava/lang/String;

    return-object v0
.end method

.method public makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1

    invoke-direct {p0, p2}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-object v0
.end method

.method public makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .locals 1

    invoke-direct {p0, p1}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;->getSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;

    move-result-object v0

    invoke-interface {v0, p1}, Lmf/org/apache/xml/serialize/Serializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-object v0
.end method
