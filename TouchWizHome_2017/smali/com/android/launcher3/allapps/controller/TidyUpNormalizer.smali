.class public Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;
.super Lcom/android/launcher3/allapps/controller/Normalizer;
.source "TidyUpNormalizer.java"


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


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 12

    const-wide/16 v10, -0x1

    const/4 v3, 0x1

    const/4 v4, -0x1

    instance-of v5, p1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v5, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object v1, p2

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    :goto_0
    const/4 v2, 0x0

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-eqz v5, :cond_5

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    if-nez v2, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->integerCompare(II)I

    move-result v2

    :cond_0
    :goto_1
    if-nez v2, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->mCollator:Ljava/text/Collator;

    iget-object v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    :cond_1
    :goto_2
    if-nez v2, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v5, :cond_9

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    if-nez v2, :cond_2

    iget-object v3, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v2

    :cond_2
    :goto_3
    if-nez v2, :cond_3

    iget-wide v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    iget-wide v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->id:J

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/TidyUpNormalizer;->longCompare(JJ)I

    move-result v2

    :cond_3
    return v2

    :cond_4
    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_0

    :cond_5
    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iget-wide v8, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    iget-wide v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    cmp-long v5, v6, v10

    if-nez v5, :cond_6

    move v2, v3

    :goto_4
    goto :goto_1

    :cond_6
    move v2, v4

    goto :goto_4

    :cond_7
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eq v5, v6, :cond_1

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v5, :cond_8

    move v2, v4

    :goto_5
    goto :goto_2

    :cond_8
    move v2, v3

    goto :goto_5

    :cond_9
    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-eq v5, v6, :cond_2

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->componentName:Landroid/content/ComponentName;

    if-nez v5, :cond_a

    move v2, v4

    :goto_6
    goto :goto_3

    :cond_a
    move v2, v3

    goto :goto_6
.end method

.method public normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .locals 10
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

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v6, :cond_3

    move-object v0, v1

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    :goto_1
    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    if-ne v4, p2, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v4, 0x0

    :cond_0
    int-to-long v8, v5

    cmp-long v6, v2, v8

    if-nez v6, :cond_1

    iget v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eq v6, v4, :cond_2

    :cond_1
    if-eqz p4, :cond_4

    instance-of v6, v1, Landroid/view/View;

    if-eqz v6, :cond_4

    if-ne p5, v5, :cond_2

    check-cast v1, Landroid/view/View;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    move-object v6, v1

    check-cast v6, Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_1

    :cond_4
    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    int-to-long v8, v5

    iput-wide v8, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput v4, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v6, v4, p3

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    div-int v6, v4, p3

    iput v6, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    goto :goto_2

    :cond_5
    return v5
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "MenuAppModel.MENU_CUSTOM_TIDE_UP_NORMALIZER"

    return-object v0
.end method
