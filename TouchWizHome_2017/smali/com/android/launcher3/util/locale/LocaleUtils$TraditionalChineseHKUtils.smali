.class Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;
.super Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;
.source "LocaleUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/util/locale/LocaleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TraditionalChineseHKUtils"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;-><init>()V

    return-void
.end method

.method private getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v11, 0x1e

    if-le v7, v11, :cond_0

    const/16 v7, 0x1e

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {p1, v12, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-nez v10, :cond_1

    const/4 v11, 0x0

    :goto_0
    return-object v11

    :cond_1
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v0, v9, -0x1

    :goto_1
    if-ltz v0, :cond_a

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    const/4 v11, 0x2

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v11, v12, :cond_4

    if-nez v0, :cond_3

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :goto_3
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_4
    const/4 v11, 0x1

    iget v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v11, v12, :cond_8

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_5

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v11

    if-lez v11, :cond_6

    const/4 v11, 0x0

    const/16 v12, 0x20

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    :cond_6
    if-nez v0, :cond_7

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_4
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_7
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->makeActionCodeHKTW(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    :cond_9
    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Lcom/android/launcher3/util/locale/hanzi/KeypadNumberUtils;->convertTraditionalChineseKeypadLettersToDigits(C)C

    move-result v12

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    iget-object v12, v8, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-virtual {v5, v11, v12}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_a
    invoke-virtual {v6}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    goto/16 :goto_0
.end method


# virtual methods
.method public getConsistKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 10

    const/4 v9, 0x0

    const/16 v7, 0xa0

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character$UnicodeBlock;->of(C)Ljava/lang/Character$UnicodeBlock;

    move-result-object v6

    invoke-static {v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->access$800(Ljava/lang/Character$UnicodeBlock;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x1

    invoke-virtual {v5, v9, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    const/4 v7, 0x2

    iget v8, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v7, v8, :cond_0

    iget-object v7, v3, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getConsistKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Iterator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$TraditionalChineseHKUtils;->getStrokeNameLookupKeys(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public getSortKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    move-object v1, p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-static {}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->getIntance()Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke;->get(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;

    const/4 v5, 0x2

    iget v6, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->type:I

    if-ne v5, v6, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v5, 0xa4

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->source:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/launcher3/util/locale/hanzi/HanziToStroke$Token;->target:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_1
    return-object v4

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    invoke-super {p0, p1}, Lcom/android/launcher3/util/locale/LocaleUtils$SimplifiedChineseUtils;->getSortKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method
