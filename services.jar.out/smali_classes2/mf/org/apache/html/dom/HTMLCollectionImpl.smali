.class Lmf/org/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;
.source "HTMLCollectionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLCollection;
.implements Ljava/io/Serializable;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lmf/org/w3c/dom/Element;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/html/HTMLElement;S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    iput-object p1, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    int-to-short v0, p2

    iput-short v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getLength(Lmf/org/w3c/dom/Element;)I
    .locals 6

    move-object v1, p1

    monitor-enter p1

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v3

    :goto_0
    if-eqz v3, :cond_3

    instance-of v4, v3, Lmf/org/w3c/dom/Element;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v3}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v3

    goto :goto_0

    :cond_1
    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v3

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    invoke-direct {p0, v4}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v4

    add-int/2addr v2, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    monitor-exit p1

    return v2

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;
    .locals 7

    const/4 v6, 0x0

    move-object v1, p1

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_4

    instance-of v4, v2, Lmf/org/w3c/dom/Element;

    if-nez v4, :cond_1

    :cond_0
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    invoke-direct {p0, v4, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    monitor-exit p1

    return-object v3

    :cond_2
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->isZero()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->decrement()V

    goto :goto_1

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    :cond_3
    :try_start_1
    monitor-exit p1

    return-object v2

    :cond_4
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v6
.end method

.method private namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 5

    move-object v1, p1

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    instance-of v4, v2, Lmf/org/w3c/dom/Element;

    if-nez v4, :cond_1

    :cond_0
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_1
    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    invoke-virtual {p0, v4, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v4, v0

    invoke-direct {p0, v4, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    monitor-exit p1

    return-object v3

    :cond_2
    monitor-exit p1

    return-object v2

    :cond_3
    monitor-exit p1

    return-object v2

    :catchall_0
    move-exception v4

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method


# virtual methods
.method protected collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v0, p1

    monitor-enter p1

    const/4 v1, 0x0

    :try_start_0
    iget-short v4, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    packed-switch v4, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-nez v1, :cond_c

    :cond_0
    :goto_1
    monitor-exit p1

    return v1

    :pswitch_1
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-nez v4, :cond_2

    :cond_1
    move v1, v3

    :goto_2
    goto :goto_0

    :cond_2
    const-string/jumbo v4, "name"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    move v1, v2

    goto :goto_2

    :pswitch_2
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLFormElement;

    goto :goto_0

    :pswitch_3
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLImageElement;

    goto :goto_0

    :pswitch_4
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLAppletElement;

    if-eqz v4, :cond_4

    :cond_3
    :goto_3
    move v1, v2

    :goto_4
    goto :goto_0

    :cond_4
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLObjectElement;

    if-nez v4, :cond_6

    :cond_5
    move v1, v3

    goto :goto_4

    :cond_6
    const-string/jumbo v4, "codetype"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "application/java"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    const-string/jumbo v4, "classid"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "java:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    :pswitch_5
    instance-of v1, p1, Lmf/org/apache/html/dom/HTMLFormControl;

    goto :goto_0

    :pswitch_6
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v4, :cond_8

    :cond_7
    const-string/jumbo v4, "href"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-gtz v4, :cond_9

    :goto_5
    move v1, v3

    :goto_6
    goto :goto_0

    :cond_8
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_9
    move v1, v2

    goto :goto_6

    :pswitch_7
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    goto :goto_0

    :pswitch_8
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLOptionElement;

    goto :goto_0

    :pswitch_9
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    goto :goto_0

    :pswitch_a
    instance-of v4, p1, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-nez v4, :cond_b

    :cond_a
    move v1, v3

    :goto_7
    goto :goto_0

    :cond_b
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "TBODY"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    move v1, v2

    goto :goto_7

    :pswitch_b
    instance-of v1, p1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    goto/16 :goto_0

    :cond_c
    if-eqz p2, :cond_0

    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-nez v3, :cond_e

    :cond_d
    const-string/jumbo v2, "id"

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_1

    :cond_e
    const-string/jumbo v3, "name"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    monitor-exit p1

    return v2

    :catchall_0
    move-exception v2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public final getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v0

    return v0
.end method

.method public final item(I)Lmf/org/w3c/dom/Node;
    .locals 2

    if-ltz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    new-instance v1, Lmf/org/apache/html/dom/CollectionIndex;

    invoke-direct {v1, p1}, Lmf/org/apache/html/dom/CollectionIndex;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "HTM012 Argument \'index\' is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final namedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "HTM013 Argument \'name\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected recurse()Z
    .locals 2

    const/4 v1, 0x0

    iget-short v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
