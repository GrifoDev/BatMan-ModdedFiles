.class public Lcom/android/launcher3/allapps/controller/AppsFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsFocusListener.java"


# instance fields
.field TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    const-string v0, "AppsFocusListener"

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onFocusIn(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusIn: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFocusOut(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onFocusOut: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onKeyPressDown: default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v13, :cond_0

    const/4 v13, 0x0

    :goto_0
    return v13

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v3, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v14, v5, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v4, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v13, :cond_1

    const/4 v13, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    instance-of v13, v13, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v13, :cond_2

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v12

    check-cast v12, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v13, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    move v8, v4

    move v10, v4

    :goto_1
    if-ltz v10, :cond_4

    add-int/lit8 v7, v3, -0x1

    if-ltz v7, :cond_5

    :cond_4
    if-gez v10, :cond_7

    const/4 v13, 0x1

    goto :goto_0

    :cond_5
    if-nez v10, :cond_6

    const/4 v13, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v13, v10, -0x1

    invoke-virtual {v12, v13}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v11}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v3

    add-int/lit8 v8, v10, -0x1

    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    :cond_7
    invoke-virtual {v12, v8}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/common/base/view/CellLayout;

    rem-int v13, v7, v2

    div-int v14, v7, v2

    invoke-virtual {v6, v13, v14}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v9

    if-nez v9, :cond_8

    const/4 v13, 0x1

    goto :goto_0

    :cond_8
    invoke-virtual {v9}, Landroid/view/View;->requestFocus()Z

    const/4 v13, 0x1

    goto :goto_0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 16

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/item/ItemInfo;

    if-nez v14, :cond_0

    const/4 v14, 0x0

    :goto_0
    return v14

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/common/base/item/ItemInfo;

    iget v3, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->rank:I

    iget-wide v14, v7, Lcom/android/launcher3/common/base/item/ItemInfo;->screenId:J

    long-to-int v6, v14

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    if-nez v14, :cond_1

    const/4 v14, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    invoke-virtual {v1}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v14

    instance-of v14, v14, Lcom/android/launcher3/common/base/view/PagedView;

    if-nez v14, :cond_2

    const/4 v14, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v13

    check-cast v13, Lcom/android/launcher3/common/base/view/PagedView;

    invoke-virtual {v13}, Lcom/android/launcher3/common/base/view/PagedView;->getPageCount()I

    move-result v12

    invoke-virtual {v0}, Lcom/android/launcher3/common/base/view/CellLayout;->getCountX()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v14, 0x0

    goto :goto_0

    :cond_3
    const/4 v9, 0x0

    const/4 v10, 0x0

    move v10, v6

    :goto_1
    if-ge v10, v12, :cond_4

    add-int/lit8 v9, v3, 0x1

    invoke-virtual {v13, v6}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/common/base/view/CellLayout;

    invoke-virtual {v5}, Lcom/android/launcher3/common/base/view/CellLayout;->getCellLayoutChildren()Lcom/android/launcher3/common/base/view/CellLayoutChildren;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/launcher3/common/base/view/CellLayoutChildren;->getChildCount()I

    move-result v4

    if-ge v9, v4, :cond_5

    :cond_4
    if-lt v10, v12, :cond_6

    const/4 v14, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, -0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v13, v10}, Lcom/android/launcher3/common/base/view/PagedView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/common/base/view/CellLayout;

    rem-int v14, v9, v2

    div-int v15, v9, v2

    invoke-virtual {v8, v14, v15}, Lcom/android/launcher3/common/base/view/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v11

    if-nez v11, :cond_7

    const/4 v14, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v11}, Landroid/view/View;->requestFocus()Z

    const/4 v14, 0x1

    goto :goto_0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/AppsFocusListener;->TAG:Ljava/lang/String;

    const-string v1, "onKeyPressUp: default"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method
