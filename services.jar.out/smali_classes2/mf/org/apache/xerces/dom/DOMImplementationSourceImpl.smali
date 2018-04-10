.class public Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;
.super Ljava/lang/Object;
.source "DOMImplementationSourceImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/DOMImplementationSource;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 2

    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    return-object v1

    :cond_0
    return-object v0

    :cond_1
    return-object v0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 3

    invoke-static {}, Lmf/org/apache/xerces/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMImplementationImpl;->getDOMImplementation()Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lmf/org/apache/xerces/dom/DOMImplementationSourceImpl;->testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    :goto_1
    new-instance v2, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;

    invoke-direct {v2, v1}, Lmf/org/apache/xerces/dom/DOMImplementationListImpl;-><init>(Ljava/util/ArrayList;)V

    return-object v2

    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method testImpl(Lmf/org/w3c/dom/DOMImplementation;Ljava/lang/String;)Z
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x0

    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_0

    :goto_0
    if-eqz v1, :cond_6

    const/4 v2, 0x0

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v4, 0x0

    :goto_1
    if-nez v2, :cond_2

    invoke-interface {p1, v1, v7}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v1, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/String;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-interface {p1, v1, v4}, Lmf/org/w3c/dom/DOMImplementation;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    return v6

    :cond_4
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    return v6

    :cond_6
    const/4 v5, 0x1

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
