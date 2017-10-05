.class public Lcom/android/launcher3/allapps/controller/CustomNormalizer;
.super Lcom/android/launcher3/allapps/controller/Normalizer;
.source "CustomNormalizer.java"


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

    invoke-static {v6, v7, v8, v9}, Lcom/android/launcher3/allapps/controller/CustomNormalizer;->longCompare(JJ)I

    move-result v2

    if-nez v2, :cond_0

    iget v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget v6, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    invoke-static {v5, v6}, Lcom/android/launcher3/allapps/controller/CustomNormalizer;->integerCompare(II)I

    move-result v2

    :cond_0
    :goto_1
    if-nez v2, :cond_3

    iget-object v5, v0, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/launcher3/common/base/item/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/CustomNormalizer;->mCollator:Ljava/text/Collator;

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

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/CustomNormalizer;->longCompare(JJ)I

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

    invoke-static {v4, v5, v6, v7}, Lcom/android/launcher3/allapps/controller/CustomNormalizer;->longCompare(JJ)I

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

.method protected normalize(Ljava/util/ArrayList;IILjava/util/ArrayList;I)I
    .locals 14
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

    const/4 v9, 0x0

    const/4 v8, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    instance-of v10, v3, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v10, :cond_5

    move-object v2, v3

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    :goto_1
    iget-wide v6, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    move/from16 v0, p2

    if-ne v8, v0, :cond_0

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    :cond_0
    cmp-long v10, v6, v4

    if-eqz v10, :cond_2

    const-wide/16 v12, -0x1

    cmp-long v10, v6, v12

    if-eqz v10, :cond_2

    int-to-long v12, v9

    cmp-long v10, v6, v12

    if-lez v10, :cond_1

    if-eqz v8, :cond_1

    add-int/lit8 v9, v9, 0x1

    const/4 v8, 0x0

    :cond_1
    move-wide v4, v6

    :cond_2
    int-to-long v12, v9

    cmp-long v10, v6, v12

    if-nez v10, :cond_3

    iget v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    if-eq v10, v8, :cond_4

    :cond_3
    if-eqz p4, :cond_6

    instance-of v10, v3, Landroid/view/View;

    if-eqz v10, :cond_6

    move/from16 v0, p5

    if-ne v0, v9, :cond_4

    move-object v10, v3

    check-cast v10, Landroid/view/View;

    move-object/from16 v0, p4

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_2
    if-eqz p4, :cond_7

    instance-of v10, v3, Landroid/view/View;

    if-eqz v10, :cond_7

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    move-object v10, v3

    check-cast v10, Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/item/ItemInfo;

    goto :goto_1

    :cond_6
    const/4 v10, 0x1

    iput-boolean v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->mDirty:Z

    int-to-long v12, v9

    iput-wide v12, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    iput v8, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    goto :goto_2

    :cond_7
    rem-int v10, v8, p3

    iput v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    div-int v10, v8, p3

    iput v10, v2, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_8
    return v9
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "CustomNormalizer"

    return-object v0
.end method
