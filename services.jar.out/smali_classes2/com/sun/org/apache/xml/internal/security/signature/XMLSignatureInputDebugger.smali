.class public Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;
.super Ljava/lang/Object;


# static fields
.field static final ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

.field static final HTMLExcludePrefix:Ljava/lang/String; = "<span class=\"EXCLUDED\">"

.field static final HTMLExcludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLExcludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLExcludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludePrefix:Ljava/lang/String; = "<span class=\"INCLUDED\">"

.field static final HTMLIncludeSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLIncludedInclusiveNamespacePrefix:Ljava/lang/String; = "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

.field static final HTMLIncludedInclusiveNamespaceSuffix:Ljava/lang/String; = "</span>"

.field static final HTMLPrefix:Ljava/lang/String; = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

.field static final HTMLSuffix:Ljava/lang/String; = "</pre></body></html>"

.field private static final NODE_AFTER_DOCUMENT_ELEMENT:I = 0x1

.field private static final NODE_BEFORE_DOCUMENT_ELEMENT:I = -0x1

.field private static final NODE_NOT_BEFORE_OR_AFTER_DOCUMENT_ELEMENT:I


# instance fields
.field private _doc:Lorg/w3c/dom/Document;

.field private _inclusiveNamespaces:Ljava/util/Set;

.field private _writer:Ljava/io/Writer;

.field private _xpathNodeSet:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    invoke-direct {v0}, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->isNodeSet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;->_inputNodeSet:Ljava/util/Set;

    iput-object v0, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    goto :goto_0
.end method

.method public constructor <init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;Ljava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;-><init>(Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInput;)V

    iput-object p2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_inclusiveNamespaces:Ljava/util/Set;

    return-void
.end method

.method private canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v6

    packed-switch v6, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v17, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v18, "empty"

    invoke-direct/range {v17 .. v18}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;)V

    throw v17

    :pswitch_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v8

    :goto_1
    if-nez v8, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</pre></body></html>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v8

    goto :goto_1

    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_2
    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_2

    :goto_3
    move-object/from16 v17, p1

    check-cast v17, Lorg/w3c/dom/Comment;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputCommentToWriter(Lorg/w3c/dom/Comment;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_3

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_5
    invoke-direct/range {p0 .. p1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I

    move-result v7

    const/16 v17, 0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_6

    :goto_6
    move-object/from16 v17, p1

    check-cast v17, Lorg/w3c/dom/ProcessingInstruction;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v7, v0, :cond_7

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_6

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_7

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_8
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputTextToWriter(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    :goto_9
    if-nez v9, :cond_a

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_8

    :cond_a
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x3

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_c

    :cond_b
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputTextToWriter(Ljava/lang/String;)V

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v9

    goto :goto_9

    :cond_c
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v17

    const/16 v18, 0x4

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_b

    goto :goto_a

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_6
    move-object/from16 v9, p1

    check-cast v9, Lorg/w3c/dom/Element;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "&lt;"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_c
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    new-array v12, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    :goto_d
    if-lt v13, v11, :cond_10

    sget-object v17, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->ATTR_COMPARE:Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;

    move-object/from16 v0, v17

    invoke-static {v12, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    move-object v14, v12

    const/4 v15, 0x0

    :goto_e
    if-lt v15, v11, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "&gt;"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_10
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v16

    :goto_11
    if-nez v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "&lt;/"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "&gt;"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_b

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_10
    invoke-interface {v10, v13}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v17

    aput-object v17, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_d

    :cond_11
    aget-object v3, v12, v15

    check-cast v3, Lorg/w3c/dom/Attr;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_inclusiveNamespaces:Ljava/util/Set;

    move-object/from16 v17, v0

    invoke-interface {v3}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v4, :cond_12

    if-nez v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_13
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v17

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v4, :cond_15

    if-nez v5, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    :goto_14
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_e

    :cond_12
    if-nez v5, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_13

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_13

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"EXCLUDEDINCLUSIVENAMESPACE\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_13

    :cond_15
    if-nez v5, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_14

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_14

    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_14

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_f

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_10

    :cond_1a
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    invoke-interface/range {v16 .. v16}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v16

    goto/16 :goto_11

    :cond_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "<span class=\"INCLUDED\">"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_12

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    move-object/from16 v17, v0

    const-string/jumbo v18, "</span>"

    invoke-virtual/range {v17 .. v18}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_1
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private getPositionRelativeToDocumentElement(Lorg/w3c/dom/Node;)I
    .locals 4

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-ne v2, v0, :cond_1

    invoke-interface {v0}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v1

    if-eqz v1, :cond_2

    if-eq v1, p1, :cond_3

    :goto_0
    if-nez p1, :cond_4

    const/4 v2, 0x1

    return v2

    :cond_0
    return v3

    :cond_1
    return v3

    :cond_2
    return v3

    :cond_3
    return v3

    :cond_4
    if-eq p1, v1, :cond_5

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_5
    const/4 v2, -0x1

    return v2
.end method

.method private outputAttrToWriter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "=\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;amp;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;lt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;quot;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;#x9;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;#xA;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xd -> :sswitch_5
        0x22 -> :sswitch_2
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
    .end sparse-switch
.end method

.method private outputCommentToWriter(Lorg/w3c/dom/Comment;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v5, "&lt;!--"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_1

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v5, "--&gt;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v4, v3}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v5, "&amp;#xD;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v5, "&middot;"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v5, "&para;\n"

    invoke-virtual {v4, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch
.end method

.method private outputPItoWriter(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "&lt;?"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v3, :cond_3

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "?&gt;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    sparse-switch v4, :sswitch_data_0

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v4}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "&amp;#xD;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "&middot;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "&para;\n"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-lez v1, :cond_0

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v1, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v6, v5}, Ljava/io/Writer;->write(I)V

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :pswitch_0
    iget-object v6, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v7, "&amp;#xD;"

    invoke-virtual {v6, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_2
        0xd -> :sswitch_0
        0x20 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_0
    .end packed-switch
.end method

.method private outputTextToWriter(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_0

    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v3, v2}, Ljava/io/Writer;->write(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :sswitch_0
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;amp;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;lt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_2
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;gt;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_3
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&amp;#xD;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_4
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&middot;"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_5
    iget-object v3, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    const-string/jumbo v4, "&para;\n"

    invoke-virtual {v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_5
        0xd -> :sswitch_3
        0x20 -> :sswitch_4
        0x26 -> :sswitch_0
        0x3c -> :sswitch_1
        0x3e -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public getHTMLRepresentation()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    if-nez v2, :cond_1

    :cond_0
    const-string/jumbo v2, "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\n<html>\n<head>\n<title>Caninical XML node set</title>\n<style type=\"text/css\">\n<!-- \n.INCLUDED { \n   color: #000000; \n   background-color: \n   #FFFFFF; \n   font-weight: bold; } \n.EXCLUDED { \n   color: #666666; \n   background-color: \n   #999999; } \n.INCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #FFFFFF; \n   font-weight: bold; \n   font-style: italic; } \n.EXCLUDEDINCLUSIVENAMESPACE { \n   color: #0000FF; \n   background-color: #999999; \n   font-style: italic; } \n--> \n</style> \n</head>\n<body bgcolor=\"#999999\">\n<h1>Explanation of the output</h1>\n<p>The following text contains the nodeset of the given Reference before it is canonicalized. There exist four different styles to indicate how a given node is treated.</p>\n<ul>\n<li class=\"INCLUDED\">A node which is in the node set is labeled using the INCLUDED style.</li>\n<li class=\"EXCLUDED\">A node which is <em>NOT</em> in the node set is labeled EXCLUDED style.</li>\n<li class=\"INCLUDEDINCLUSIVENAMESPACE\">A namespace which is in the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n<li class=\"EXCLUDEDINCLUSIVENAMESPACE\">A namespace which is in NOT the node set AND in the InclusiveNamespaces PrefixList is labeled using the INCLUDEDINCLUSIVENAMESPACE style.</li>\n</ul>\n<h1>Output</h1>\n<pre>\n<blink>no node set, sorry</blink></pre></body></html>"

    return-object v2

    :cond_1
    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/security/utils/XMLUtils;->getOwnerDocument(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Document;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    :try_start_0
    new-instance v2, Ljava/io/StringWriter;

    invoke-direct {v2}, Ljava/io/StringWriter;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    invoke-direct {p0, v2}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->canonicalizeXPathNodeSet(Lorg/w3c/dom/Node;)V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/io/Writer;->close()V

    iget-object v2, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;

    const-string/jumbo v3, "empty"

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_xpathNodeSet:Ljava/util/Set;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_doc:Lorg/w3c/dom/Document;

    iput-object v4, p0, Lcom/sun/org/apache/xml/internal/security/signature/XMLSignatureInputDebugger;->_writer:Ljava/io/Writer;

    throw v1
.end method
