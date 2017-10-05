.class public Lcom/android/launcher3/home/AutoAlignHelper;
.super Ljava/lang/Object;
.source "AutoAlignHelper.java"


# static fields
.field private static final ALIGN_ANIMATION_DURATION:I = 0xfa

.field private static ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field static ITEM_ALIGN_UPWARD:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/launcher3/home/AutoAlignHelper$1;

    invoke-direct {v0}, Lcom/android/launcher3/home/AutoAlignHelper$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    new-instance v0, Lcom/android/launcher3/home/AutoAlignHelper$2;

    invoke-direct {v0}, Lcom/android/launcher3/home/AutoAlignHelper$2;-><init>()V

    sput-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static autoAlignItems(Lcom/android/launcher3/common/base/view/CellLayout;ZZ)Z
    .locals 7

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v5

    if-eqz v5, :cond_0

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    filled-new-array {v2, v3}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Z

    invoke-static {p0, v1, v4}, Lcom/android/launcher3/home/AutoAlignHelper;->findOneByOneItemsAndOccupiedPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZLjava/util/ArrayList;)V

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v4, p1}, Lcom/android/launcher3/home/AutoAlignHelper;->sortItemsByCellPosition(Ljava/util/List;Z)V

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/launcher3/home/AutoAlignHelper;->findEmptyCellAndAnimateToPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZIILjava/util/ArrayList;ZZ)Z

    move-result v0

    goto :goto_0
.end method

.method private static findEmptyCellAndAnimateToPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZIILjava/util/ArrayList;ZZ)Z
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            "[[ZII",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;ZZ)Z"
        }
    .end annotation

    const/4 v13, 0x0

    const/4 v11, 0x0

    if-eqz p5, :cond_2

    const/16 v16, 0x0

    :goto_0
    if-eqz p5, :cond_3

    const/16 v17, 0x0

    :goto_1
    if-eqz p5, :cond_4

    const/4 v12, 0x1

    :goto_2
    move/from16 v19, v17

    :goto_3
    if-eqz p5, :cond_5

    move/from16 v0, v19

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    :cond_0
    move/from16 v18, v16

    :goto_4
    if-eqz p5, :cond_7

    move/from16 v0, v18

    move/from16 v1, p2

    if-ge v0, v1, :cond_8

    :cond_1
    aget-object v2, p1, v18

    aget-boolean v2, v2, v19

    if-nez v2, :cond_a

    aget-object v2, p1, v18

    const/4 v4, 0x1

    aput-boolean v4, v2, v19

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v13

    :goto_5
    return v2

    :cond_2
    add-int/lit8 v16, p2, -0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v17, p3, -0x1

    goto :goto_1

    :cond_4
    const/4 v12, -0x1

    goto :goto_2

    :cond_5
    if-gez v19, :cond_0

    :cond_6
    move v2, v13

    goto :goto_5

    :cond_7
    if-gez v18, :cond_1

    :cond_8
    add-int v19, v19, v12

    goto :goto_3

    :cond_9
    move-object/from16 v0, p4

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/launcher3/common/base/item/ItemInfo;

    move-object/from16 v0, p4

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v18

    if-ne v0, v2, :cond_b

    iget v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    move/from16 v0, v19

    if-ne v0, v2, :cond_b

    :cond_a
    :goto_6
    add-int v18, v18, v12

    goto :goto_4

    :cond_b
    if-eqz p6, :cond_c

    const/4 v2, 0x1

    goto :goto_5

    :cond_c
    move/from16 v0, v18

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    move/from16 v0, v19

    iput v0, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    invoke-virtual/range {p0 .. p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(Lcom/android/launcher3/common/base/item/ItemInfo;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;

    iget-boolean v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v2, :cond_d

    const/4 v2, 0x0

    iput-boolean v2, v14, Lcom/android/launcher3/common/base/view/CellLayout$LayoutParams;->useTmpCoords:Z

    :cond_d
    iget v4, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v5, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    const/16 v6, 0xfa

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x0

    check-cast v10, [[Z

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v10}, Lcom/android/launcher3/common/base/view/CellLayout;->animateChildToPosition(Landroid/view/View;IIIIZZ[[Z)Z

    :cond_e
    const/4 v2, 0x1

    iput-boolean v2, v15, Lcom/android/launcher3/common/base/item/ItemInfo;->requiresDbUpdate:Z

    const/4 v13, 0x1

    goto :goto_6
.end method

.method private static findOneByOneItemsAndOccupiedPosition(Lcom/android/launcher3/common/base/view/CellLayout;[[ZLjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/common/base/view/CellLayout;",
            "[[Z",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v11, 0x1

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v9

    invoke-virtual {v9, v4}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    instance-of v9, v6, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-eqz v9, :cond_0

    move-object v5, v6

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    if-ne v9, v11, :cond_1

    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    if-ne v9, v11, :cond_1

    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget v7, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    :goto_1
    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellX:I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanX:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_0

    if-ge v7, v2, :cond_0

    iget v8, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    :goto_2
    iget v9, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->cellY:I

    iget v10, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->spanY:I

    add-int/2addr v9, v10

    if-ge v8, v9, :cond_2

    if-ge v8, v3, :cond_2

    aget-object v9, p1, v7

    aput-boolean v11, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private static sortItemsByCellPosition(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/launcher3/common/base/item/ItemInfo;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_UPWARD:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/android/launcher3/home/AutoAlignHelper;->ITEM_ALIGN_DOWNWARD:Ljava/util/Comparator;

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0
.end method
