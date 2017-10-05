.class public Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;
.super Lcom/android/launcher3/allapps/controller/Normalizer;
.source "AlphabetNormalizer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher3/allapps/controller/Normalizer",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/Normalizer;-><init>()V

    return-void
.end method

.method private compareChineseTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I
    .locals 7

    const/4 v6, 0x1

    iget-object v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, p2, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v3, v0

    :goto_0
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5, v3, v4}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    invoke-virtual {v5, v0, v1}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v5

    invoke-virtual {v5, v0, v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->getInstance()Lcom/android/launcher3/util/locale/LocaleUtils;

    move-result-object v5

    invoke-virtual {v5, v1, v6}, Lcom/android/launcher3/util/locale/LocaleUtils;->makeSectionString(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 6

    instance-of v3, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    :goto_0
    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    iget v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    if-eq v3, v4, :cond_2

    iget v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->itemType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v2, -0x1

    :goto_1
    return v2

    :cond_0
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSortingOnApps()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->compareChineseTitle(Lcom/android/launcher3/common/base/item/ItemInfo;Lcom/android/launcher3/common/base/item/ItemInfo;)I

    move-result v2

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/AlphabetNormalizer;->mCollator:Ljava/text/Collator;

    iget-object v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_1
.end method

.method protected normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<*>;II",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;I)I"
        }
    .end annotation

    invoke-static {p1, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v4, :cond_2

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    :goto_1
    if-ne v2, p2, :cond_0

    add-int/lit8 v3, v3, 0x1

    const/4 v2, 0x0

    :cond_0
    if-eqz p4, :cond_3

    instance-of v4, v1, Landroid/view/View;

    if-eqz v4, :cond_3

    if-ne p5, v3, :cond_1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v4, v1

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_1

    :cond_3
    int-to-long v6, v3

    iput-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v4, v2, p3

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    div-int v4, v2, p3

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MENU_ALPHA_NORMALIZER"

    return-object v0
.end method
