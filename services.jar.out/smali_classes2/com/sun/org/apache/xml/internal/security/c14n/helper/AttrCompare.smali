.class public Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# static fields
.field private static final XMLNS:Ljava/lang/String; = "http://www.w3.org/2000/xmlns/"


# instance fields
.field private final ATTR0_BEFORE_ATTR1:I

.field private final ATTR1_BEFORE_ATTR0:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;->ATTR0_BEFORE_ATTR1:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/org/apache/xml/internal/security/c14n/helper/AttrCompare;->ATTR1_BEFORE_ATTR0:I

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    const/4 v11, 0x1

    const/4 v10, -0x1

    move-object v1, p1

    check-cast v1, Lorg/w3c/dom/Attr;

    move-object v2, p2

    check-cast v2, Lorg/w3c/dom/Attr;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const-string/jumbo v9, "http://www.w3.org/2000/xmlns/"

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v5, :cond_0

    if-nez v6, :cond_4

    if-eqz v3, :cond_5

    if-eqz v4, :cond_7

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_8

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    return v9

    :cond_0
    if-nez v6, :cond_1

    return v10

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v9, "xmlns"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    :goto_0
    const-string/jumbo v9, "xmlns"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    :goto_1
    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    return v9

    :cond_2
    const-string/jumbo v8, ""

    goto :goto_0

    :cond_3
    const-string/jumbo v0, ""

    goto :goto_1

    :cond_4
    return v11

    :cond_5
    if-eqz v4, :cond_6

    return v10

    :cond_6
    invoke-interface {v1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v9

    return v9

    :cond_7
    return v11

    :cond_8
    return v7
.end method
