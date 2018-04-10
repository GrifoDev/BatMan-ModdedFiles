.class public Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;
.super Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;
.source "SchemaDOM.java"


# static fields
.field static final relationsColResizeFactor:I = 0xa

.field static final relationsRowResizeFactor:I = 0xf


# instance fields
.field currLoc:I

.field private fAnnotationBuffer:Ljava/lang/StringBuffer;

.field hidden:Z

.field inCDATA:Z

.field nextFreeLoc:I

.field parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

.field relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/DefaultDocument;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->reset()V

    return-void
.end method

.method private static escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v4, 0x0

    invoke-virtual {p0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v1, p1

    :goto_0
    if-ge v1, v2, :cond_6

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x22

    if-eq v0, v4, :cond_0

    const/16 v4, 0x3c

    if-eq v0, v4, :cond_1

    const/16 v4, 0x26

    if-eq v0, v4, :cond_2

    const/16 v4, 0x9

    if-eq v0, v4, :cond_3

    const/16 v4, 0xa

    if-eq v0, v4, :cond_4

    const/16 v4, 0xd

    if-eq v0, v4, :cond_5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const-string/jumbo v4, "&quot;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    const-string/jumbo v4, "&lt;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_2
    const-string/jumbo v4, "&amp;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v4, "&#x9;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string/jumbo v4, "&#xA;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "&#xD;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static indent(I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static processAttValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x22

    if-ne v0, v3, :cond_1

    :cond_0
    invoke-static {p0, v1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->escapeAttValue(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const/16 v3, 0x3c

    if-eq v0, v3, :cond_0

    const/16 v3, 0x26

    if-eq v0, v3, :cond_0

    const/16 v3, 0x9

    if-eq v0, v3, :cond_0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    const/16 v3, 0xd

    if-eq v0, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method

.method private processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V
    .locals 11

    const/4 v10, 0x0

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->prefix:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->localpart:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->rawname:Ljava/lang/String;

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iput-object v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->uri:Ljava/lang/String;

    iput-object p0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->schemaDOM:Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;

    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    new-array v7, v0, [Lmf/org/w3c/dom/Attr;

    const/4 v9, 0x0

    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v0

    if-ge v9, v0, :cond_0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/AttrImpl;

    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2, v9}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v0 .. v6}, Lmf/org/apache/xerces/impl/xs/opti/AttrImpl;-><init>(Lmf/org/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    iput-object v7, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->attrs:[Lmf/org/w3c/dom/Attr;

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v1, v1

    if-eq v0, v1, :cond_1

    :goto_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aget-object v0, v0, v10

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    if-ne v0, v1, :cond_2

    :goto_2
    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v9, 0x1

    :goto_3
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v9, v0, :cond_4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aget-object v0, v0, v9

    if-eqz v0, :cond_3

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_1
    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->resizeRelations()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    aget-object v0, v0, v1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    aput-object v1, v0, v10

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    goto :goto_2

    :cond_3
    const/4 v8, 0x1

    :cond_4
    if-eqz v8, :cond_5

    :goto_4
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    aput-object p3, v0, v9

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->parentRow:I

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    iput v0, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    iput v9, p3, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->col:I

    return-void

    :cond_5
    iget v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->resizeRelations(I)V

    goto :goto_4
.end method

.method private resizeRelations()V
    .locals 5

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v2, v2

    add-int/lit8 v2, v2, 0xf

    new-array v1, v2, [[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v3, v3

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v0, v2

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    const/16 v2, 0xa

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    return-void
.end method

.method private resizeRelations(I)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v1, v1, p1

    array-length v1, v1

    add-int/lit8 v1, v1, 0xa

    new-array v0, v1, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v1, v1, p1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, p1

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v0, v1, p1

    return-void
.end method

.method public static traverse(Lmf/org/w3c/dom/Node;I)V
    .locals 6

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->indent(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "<"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->hasAttributes()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-nez v3, :cond_2

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, "/>"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getAttributes()Lmf/org/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v2, 0x0

    :goto_1
    invoke-interface {v0}, Lmf/org/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "  "

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    invoke-interface {v3}, Lmf/org/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "=\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0, v2}, Lmf/org/w3c/dom/NamedNodeMap;->item(I)Lmf/org/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lmf/org/w3c/dom/Attr;

    invoke-interface {v3}, Lmf/org/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, "\""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v4, ">"

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    add-int/lit8 p1, p1, 0x4

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_3

    invoke-static {v1, p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->traverse(Lmf/org/w3c/dom/Node;I)V

    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, -0x4

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->indent(I)V

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "</"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p0}, Lmf/org/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ">"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0
.end method


# virtual methods
.method characters(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 7

    iget-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v5, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v6, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v3, v4, v5, v6}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v4, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    add-int/2addr v3, v4

    if-ge v2, v3, :cond_0

    iget-object v3, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v3, v2

    const/16 v3, 0x26

    if-eq v1, v3, :cond_2

    const/16 v3, 0x3c

    if-eq v1, v3, :cond_3

    const/16 v3, 0x3e

    if-eq v1, v3, :cond_4

    const/16 v3, 0xd

    if-eq v1, v3, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-string/jumbo v3, "&amp;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "&lt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "&gt;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "&#xD;"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method charactersRaw(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method comment(Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<!--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "-->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    iget-object v1, p1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p1, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p1, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;II)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public emptyElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    return-object v0
.end method

.method endAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fAnnotation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    return-void
.end method

.method endAnnotationCDATA()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "]]>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    return-void
.end method

.method endAnnotationElement(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method endAnnotationElement(Lmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endAnnotationElement(Ljava/lang/String;)V

    return-void
.end method

.method public endElement()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->row:I

    iput v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v0, v0, v1

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-void
.end method

.method endSyntheticAnnotationElement(Ljava/lang/String;Z)V
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "\n</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string/jumbo v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->fSyntheticAnnotation:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method endSyntheticAnnotationElement(Lmf/org/apache/xerces/xni/QName;Z)V
    .locals 1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->endSyntheticAnnotationElement(Ljava/lang/String;Z)V

    return-void
.end method

.method public getDocumentElement()Lmf/org/w3c/dom/Element;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const/4 v1, 0x1

    aget-object v0, v0, v1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-object v0
.end method

.method public getImplementation()Lmf/org/w3c/dom/DOMImplementation;
    .locals 1

    invoke-static {}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOMImplementation;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    return-object v0
.end method

.method public printDOM()V
    .locals 0

    return-void
.end method

.method processingInstruction(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLString;)V
    .locals 4

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v0, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    if-gtz v0, :cond_0

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "?>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p2, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    iget v2, p2, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget v3, p2, Lmf/org/apache/xerces/xni/XMLString;->length:I

    invoke-virtual {v0, v1, v2, v3}, Ljava/lang/StringBuffer;->append([CII)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public reset()V
    .locals 6

    const/4 v3, 0x0

    const/16 v5, 0xf

    const/4 v4, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    if-nez v2, :cond_1

    :cond_0
    new-array v2, v5, [[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v2, v4, v4, v4}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    const-string/jumbo v3, "DOCUMENT_NODE"

    iput-object v3, v2, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;->rawname:Ljava/lang/String;

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    const/4 v2, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->nextFreeLoc:I

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v5, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    const/16 v3, 0xa

    new-array v3, v3, [Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    const/4 v1, 0x0

    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    aget-object v2, v2, v0

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->relations:[[Lmf/org/apache/xerces/impl/xs/opti/NodeImpl;

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->currLoc:I

    aget-object v2, v2, v3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    aput-object v3, v2, v4

    return-void
.end method

.method startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 10

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    if-eqz v8, :cond_1

    :goto_0
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v9, "<"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_1
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v8

    if-ge v4, v8, :cond_4

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getPrefix(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v1

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-ne v0, v8, :cond_2

    :cond_0
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v0, v8, :cond_3

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_2
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuffer;

    const/16 v9, 0x100

    invoke-direct {v8, v9}, Ljava/lang/StringBuffer;-><init>(I)V

    iput-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_2
    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    if-eq v1, v8, :cond_0

    goto :goto_3

    :cond_3
    invoke-interface {p2, v4}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    :cond_4
    invoke-interface {p3}, Lmf/org/apache/xerces/xni/NamespaceContext;->getAllPrefixes()Ljava/util/Enumeration;

    move-result-object v3

    :cond_5
    :goto_4
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {p3, v6}, Lmf/org/apache/xerces/xni/NamespaceContext;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_6

    :goto_5
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    sget-object v8, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    if-eq v6, v8, :cond_7

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v9, "xmlns:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_6
    sget-object v7, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    goto :goto_5

    :cond_7
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "=\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-static {v7}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string/jumbo v9, "\" "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_8
    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v9, ">\n"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method startAnnotation(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V
    .locals 1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2, p3}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotation(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/xni/NamespaceContext;)V

    return-void
.end method

.method startAnnotationCDATA()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->inCDATA:Z

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v1, "<![CDATA["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v3, "<"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Lmf/org/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-interface {p2, v1}, Lmf/org/apache/xerces/xni/XMLAttributes;->getQName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "=\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-static {v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processAttValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->fAnnotationBuffer:Ljava/lang/StringBuffer;

    const-string/jumbo v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-void
.end method

.method startAnnotationElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;)V
    .locals 1

    iget-object v0, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v0, p2}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startAnnotationElement(Ljava/lang/String;Lmf/org/apache/xerces/xni/XMLAttributes;)V

    return-void
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;II)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 6

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    move-result-object v0

    return-object v0
.end method

.method public startElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;III)Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    invoke-direct {v0, p3, p4, p5}, Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;-><init>(III)V

    invoke-direct {p0, p1, p2, v0}, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->processElement(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/xni/XMLAttributes;Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;)V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/opti/SchemaDOM;->parent:Lmf/org/apache/xerces/impl/xs/opti/ElementImpl;

    return-object v0
.end method
