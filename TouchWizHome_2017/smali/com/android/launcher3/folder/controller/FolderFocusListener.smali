.class public Lcom/android/launcher3/folder/controller/FolderFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "FolderFocusListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FolderFocusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/util/focus/FocusListener;->onKeyDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    instance-of v1, p1, Lcom/android/launcher3/common/view/IconView;

    if-eqz v1, :cond_1

    const/16 v1, 0x15

    if-eq p2, v1, :cond_0

    const/16 v1, 0x16

    if-ne p2, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    mul-int v8, v2, v3

    iget v11, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v4, v11, v8

    rem-int v5, v4, v2

    div-int v6, v4, v2

    add-int/lit8 v11, v3, -0x1

    if-ge v6, v11, :cond_0

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/4 v10, 0x1

    goto :goto_0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 19

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move/from16 v17, v0

    if-nez v17, :cond_0

    const/16 v17, 0x0

    :goto_0
    return v17

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move/from16 v17, v0

    if-nez v17, :cond_1

    const/16 v17, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/PagedView;

    move/from16 v17, v0

    if-nez v17, :cond_2

    const/16 v17, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    :cond_3
    const/16 v17, 0x0

    goto :goto_0

    :cond_4
    mul-int v9, v4, v5

    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v17, v0

    rem-int v6, v17, v9

    iget v0, v8, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v17, v0

    div-int v7, v17, v9

    const/4 v11, 0x0

    move v13, v7

    move v15, v7

    :goto_1
    if-ltz v15, :cond_5

    add-int/lit8 v11, v6, -0x1

    if-ltz v11, :cond_6

    :cond_5
    if-gez v13, :cond_8

    const/16 v17, 0x0

    goto :goto_0

    :cond_6
    if-nez v15, :cond_7

    const/16 v17, 0x0

    goto :goto_0

    :cond_7
    add-int/lit8 v17, v15, -0x1

    invoke-virtual/range {v16 .. v17}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v12}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v6

    add-int/lit8 v13, v15, -0x1

    add-int/lit8 v15, v15, -0x1

    goto :goto_1

    :cond_8
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/view/CellLayout;

    rem-int v17, v11, v4

    div-int v18, v11, v4

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v14

    if-nez v14, :cond_9

    const/16 v17, 0x1

    goto/16 :goto_0

    :cond_9
    invoke-virtual {v14}, Landroid/view/View;->requestFocus()Z

    const/16 v17, 0x1

    goto/16 :goto_0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/item/ItemInfo;

    move/from16 v18, v0

    if-nez v18, :cond_0

    const/16 v18, 0x0

    :goto_0
    return v18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move/from16 v18, v0

    if-nez v18, :cond_1

    const/16 v18, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v3}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/android/launcher3/common/base/view/PagedView;

    move/from16 v18, v0

    if-nez v18, :cond_2

    const/16 v18, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v17

    check-cast v17, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v16

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_4

    :cond_3
    const/16 v18, 0x0

    goto :goto_0

    :cond_4
    mul-int v11, v4, v5

    iget v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    rem-int v6, v18, v11

    iget v0, v10, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    move/from16 v18, v0

    div-int v9, v18, v11

    const/4 v13, 0x0

    const/4 v14, 0x0

    move v14, v9

    :goto_1
    move/from16 v0, v16

    if-ge v14, v0, :cond_5

    add-int/lit8 v13, v6, 0x1

    move-object/from16 v0, v17

    invoke-virtual {v0, v9}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v8}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v7

    if-ge v13, v7, :cond_6

    :cond_5
    move/from16 v0, v16

    if-lt v14, v0, :cond_7

    const/16 v18, 0x0

    goto :goto_0

    :cond_6
    const/4 v6, -0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_7
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/CellLayout;

    rem-int v18, v13, v4

    div-int v19, v13, v4

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v12, v0, v1}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v15

    if-nez v15, :cond_8

    const/16 v18, 0x1

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v15}, Landroid/view/View;->requestFocus()Z

    const/16 v18, 0x1

    goto/16 :goto_0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 12

    const/4 v10, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v11, :cond_1

    :cond_0
    :goto_0
    return v10

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    instance-of v11, v11, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-eqz v11, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountY()I

    move-result v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    mul-int v8, v2, v3

    iget v11, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    rem-int v4, v11, v8

    rem-int v5, v4, v2

    div-int v6, v4, v2

    if-lez v6, :cond_0

    add-int/lit8 v11, v6, -0x1

    invoke-virtual {v0, v5, v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/4 v10, 0x1

    goto :goto_0
.end method
