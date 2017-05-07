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
    .locals 21

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    move-object/from16 v0, v19

    instance-of v0, v0, Landroid/widget/LinearLayout;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v17, v19

    check-cast v17, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    if-eqz v9, :cond_0

    invoke-virtual {v9}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v19

    if-nez v19, :cond_2

    :cond_0
    const/16 v18, 0x0

    :goto_1
    return v18

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v20, 0x7f0a0000

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v10

    const/16 v19, 0x0

    aget-object v19, v17, v19

    move-object/from16 v0, v19

    iget v15, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v10, :cond_4

    aget-object v19, v17, v5

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_3

    aget-object v19, v17, v5

    move-object/from16 v0, v19

    iget v6, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    const/16 v19, 0x1

    move/from16 v0, v19

    if-eq v2, v0, :cond_5

    const/4 v4, 0x1

    :goto_3
    const/16 v18, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-eqz v4, :cond_9

    if-lez v15, :cond_e

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_6

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v18, 0x1

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    goto :goto_3

    :cond_6
    add-int/lit8 v19, v3, 0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_7

    add-int/lit8 v19, v15, -0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_7
    add-int/lit8 v19, v15, -0x1

    sub-int v19, v19, v3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    if-nez v13, :cond_8

    const-string v19, "AppsPickerFocusListener"

    const-string v20, "preRowView is not visible yet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_8
    invoke-virtual {v13}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v14, v19

    check-cast v14, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_a

    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v19, v14, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_9
    :goto_4
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-ge v8, v10, :cond_b

    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_d

    add-int/lit8 v8, v8, -0x1

    :cond_b
    if-ne v8, v10, :cond_c

    add-int/lit8 v8, v8, -0x1

    :cond_c
    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v19, v14, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_4

    :cond_d
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_e
    aget-object v19, v17, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->clearFocus()V

    goto :goto_4

    :pswitch_1
    if-eqz v4, :cond_12

    invoke-virtual {v9}, Landroid/widget/ListView;->getCount()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    move/from16 v0, v19

    if-ge v15, v0, :cond_12

    invoke-virtual {v9}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v3

    invoke-virtual {v9}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v7

    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-le v15, v0, :cond_f

    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_f
    add-int/lit8 v19, v7, -0x1

    move/from16 v0, v19

    if-ne v15, v0, :cond_10

    add-int/lit8 v19, v15, 0x1

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_10
    add-int/lit8 v19, v15, 0x1

    sub-int v19, v19, v3

    move/from16 v0, v19

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/LinearLayout;

    if-nez v11, :cond_11

    const-string v19, "AppsPickerFocusListener"

    const-string v20, "nextRowView is not visible yet"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_11
    invoke-virtual {v11}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v12, v19

    check-cast v12, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-eqz v19, :cond_13

    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v19, v12, v6

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    :cond_12
    :goto_6
    const/16 v18, 0x1

    goto/16 :goto_1

    :cond_13
    const/4 v8, 0x0

    :goto_7
    if-ge v8, v6, :cond_14

    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v19

    if-nez v19, :cond_16

    add-int/lit8 v8, v8, -0x1

    :cond_14
    if-ne v8, v6, :cond_15

    add-int/lit8 v8, v8, -0x1

    :cond_15
    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/view/ViewGroup;->requestFocus()Z

    aget-object v19, v12, v8

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/view/ViewGroup;->playSoundEffect(I)V

    goto :goto_6

    :cond_16
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
