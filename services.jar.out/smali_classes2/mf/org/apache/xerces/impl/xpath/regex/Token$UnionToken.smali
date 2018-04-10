.class Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;
.super Lmf/org/apache/xerces/impl/xpath/regex/Token;
.source "Token.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/regex/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UnionToken"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x23a65df5641dc4c5L


# instance fields
.field children:Ljava/util/Vector;


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;-><init>(I)V

    return-void
.end method


# virtual methods
.method addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V
    .locals 11

    const/high16 v10, 0x10000

    const/16 v9, 0xa

    const/4 v8, 0x0

    const/4 v3, 0x2

    if-eqz p1, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-eqz v6, :cond_3

    :goto_0
    iget v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-eq v6, v3, :cond_4

    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_8

    :cond_0
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-nez v6, :cond_a

    :goto_1
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    :cond_1
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_b

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v3

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eqz v6, :cond_d

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_3
    check-cast v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    iput-object v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;->string:Ljava/lang/String;

    return-void

    :cond_2
    return-void

    :cond_3
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    goto :goto_0

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_5
    const/4 v2, 0x0

    :goto_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->size()I

    move-result v6

    if-ge v2, v6, :cond_6

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->addChild(Lmf/org/apache/xerces/impl/xpath/regex/Token;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_6
    return-void

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_8
    iget v6, v4, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-eq v6, v9, :cond_0

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v6, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_a
    iget v6, p1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v6, v9, :cond_9

    goto :goto_1

    :cond_b
    new-instance v0, Ljava/lang/StringBuffer;

    add-int/lit8 v6, v3, 0x2

    invoke-direct {v0, v6}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    if-ge v1, v10, :cond_c

    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_5
    invoke-static {v8}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->createString(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/Token$StringToken;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v4, v7}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_c
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_d
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChar()I

    move-result v1

    if-ge v1, v10, :cond_e

    int-to-char v6, v1

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3

    :cond_e
    invoke-static {v1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->decomposeToSurrogates(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    return-object v0
.end method

.method size()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString(I)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x7

    const/4 v8, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    iget v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->type:I

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v5, v8, :cond_9

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v5, v8, :cond_a

    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v2, 0x1

    :goto_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_b

    const/16 v5, 0x7c

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-eq v5, v8, :cond_3

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    if-ge v2, v5, :cond_8

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->children:Ljava/util/Vector;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;

    invoke-virtual {v5, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v0

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v1

    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_6

    :cond_4
    iget v5, v1, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    const/16 v6, 0x9

    if-eq v5, v6, :cond_7

    :cond_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_2
    return-object v3

    :cond_6
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    if-ne v5, v0, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_7
    invoke-virtual {v1, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    if-ne v5, v0, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "+?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_8
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto :goto_2

    :cond_9
    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    iget v5, v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v5, v9, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_3
    return-object v3

    :cond_a
    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v5

    iget v5, v5, Lmf/org/apache/xerces/impl/xpath/regex/Token;->type:I

    if-ne v5, v9, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/impl/xpath/regex/Token$UnionToken;->getChild(I)Lmf/org/apache/xerces/impl/xpath/regex/Token;

    move-result-object v6

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/impl/xpath/regex/Token;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "??"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_b
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>(Ljava/lang/StringBuffer;)V

    goto :goto_3
.end method
