.class public Lcom/android/launcher3/appspicker/AppsPickerFocusListener;
.super Lcom/android/launcher3/util/focus/FocusListener;
.source "AppsPickerFocusListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerFocusListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/util/focus/FocusListener;-><init>()V

    return-void
.end method

.method private static handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    move-object/from16 v0, v23

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v23, v0

    if-eqz v23, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    invoke-interface/range {v23 .. v23}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v21, v23

    check-cast v21, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-virtual/range {v18 .. v18}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f11003b

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/FrameLayout;

    const v23, 0x7f110048

    move-object/from16 v0, v19

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/SearchView;

    if-eqz v11, :cond_0

    invoke-virtual {v11}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v23

    if-nez v23, :cond_2

    :cond_0
    const/16 v22, 0x0

    :goto_1
    return v22

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v18

    check-cast v18, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f0b000f

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    const/16 v23, 0x0

    aget-object v23, v21, v23

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    move/from16 v17, v0

    const/4 v7, 0x0

    :goto_2
    if-ge v7, v12, :cond_4

    aget-object v23, v21, v7

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    if-ne v0, v1, :cond_3

    aget-object v23, v21, v7

    move-object/from16 v0, v23

    iget v8, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v23, 0x1

    move/from16 v0, v23

    if-eq v2, v0, :cond_5

    const/4 v6, 0x1

    :goto_3
    const/16 v22, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    if-eqz v6, :cond_b

    if-lez v17, :cond_11

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_8

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    goto :goto_1

    :cond_5
    const/4 v6, 0x0

    goto :goto_3

    :sswitch_1
    if-eqz v6, :cond_6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f11003a

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v23

    const v24, 0x7f110039

    invoke-virtual/range {v23 .. v24}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v23

    if-nez v23, :cond_7

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->playSoundEffect(I)V

    :cond_6
    :goto_4
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_7
    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->playSoundEffect(I)V

    goto :goto_4

    :cond_8
    add-int/lit8 v23, v5, 0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_9

    add-int/lit8 v23, v17, -0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_9
    add-int/lit8 v23, v17, -0x1

    sub-int v23, v23, v5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/LinearLayout;

    if-nez v15, :cond_a

    const-string v23, "AppsPickerFocusListener"

    const-string v24, "preRowView is not visible yet"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_a
    invoke-virtual {v15}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v16, v23

    check-cast v16, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_c

    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-nez v23, :cond_c

    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v23, v16, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_b
    :goto_5
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_c
    const/4 v10, 0x0

    :goto_6
    if-ge v10, v12, :cond_e

    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_d

    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_10

    :cond_d
    add-int/lit8 v10, v10, -0x1

    :cond_e
    if-ne v10, v12, :cond_f

    add-int/lit8 v10, v10, -0x1

    :cond_f
    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v23, v16, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_5

    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_11
    aget-object v23, v21, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->clearFocus()V

    invoke-virtual/range {v20 .. v20}, Landroid/widget/SearchView;->requestFocus()Z

    const/16 v22, 0x1

    goto/16 :goto_1

    :sswitch_2
    if-eqz v6, :cond_15

    invoke-virtual {v11}, Landroid/widget/ListView;->getCount()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ge v0, v1, :cond_15

    invoke-virtual {v11}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    invoke-virtual {v11}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v9

    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-le v0, v1, :cond_12

    add-int/lit8 v23, v17, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_12
    add-int/lit8 v23, v9, -0x1

    move/from16 v0, v17

    move/from16 v1, v23

    if-ne v0, v1, :cond_13

    add-int/lit8 v23, v17, 0x1

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_13
    add-int/lit8 v23, v17, 0x1

    sub-int v23, v23, v5

    move/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    if-nez v13, :cond_14

    const-string v23, "AppsPickerFocusListener"

    const-string v24, "nextRowView is not visible yet"

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_14
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v14, v23

    check-cast v14, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_16

    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-nez v23, :cond_16

    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v23, v14, v8

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_15
    :goto_7
    const/16 v22, 0x1

    goto/16 :goto_1

    :cond_16
    const/4 v10, 0x0

    :goto_8
    if-ge v10, v8, :cond_18

    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v23

    if-eqz v23, :cond_17

    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v23

    if-eqz v23, :cond_1a

    :cond_17
    add-int/lit8 v10, v10, -0x1

    :cond_18
    if-ne v10, v8, :cond_19

    add-int/lit8 v10, v10, -0x1

    :cond_19
    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v23, v14, v10

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    invoke-virtual/range {v23 .. v24}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_7

    :cond_1a
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_2
        0x3d -> :sswitch_1
    .end sparse-switch
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

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressDown(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressLeft(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressRight(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyPressUp(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;->handleAppListIconKeyEvent(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method
