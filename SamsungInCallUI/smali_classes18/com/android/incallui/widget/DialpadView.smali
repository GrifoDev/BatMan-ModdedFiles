.class public Lcom/android/incallui/widget/DialpadView;
.super Lcom/android/phone/common/dialpad/DialpadView;
.source "DialpadView.java"


# instance fields
.field private hebrew:Ljava/lang/String;

.field private final mButtonIds:[I

.field private mDelete:Landroid/widget/ImageButton;

.field private mDigits:Landroid/widget/EditText;

.field private mOverflowMenuButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100112
        0x7f10010e
        0x7f100104
        0x7f100105
        0x7f100106
        0x7f100107
        0x7f100108
        0x7f100109
        0x7f10010a
        0x7f10010b
        0x7f100111
        0x7f100110
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100112
        0x7f10010e
        0x7f100104
        0x7f100105
        0x7f100106
        0x7f100107
        0x7f100108
        0x7f100109
        0x7f10010a
        0x7f10010b
        0x7f100111
        0x7f100110
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/phone/common/dialpad/DialpadView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "iw_IL"

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f100112
        0x7f10010e
        0x7f100104
        0x7f100105
        0x7f100106
        0x7f100107
        0x7f100108
        0x7f100109
        0x7f10010a
        0x7f10010b
        0x7f100111
        0x7f100110
    .end array-data
.end method

.method private setupKeypad()V
    .locals 28

    const/16 v24, 0xc

    move/from16 v0, v24

    new-array v15, v0, [I

    fill-array-data v15, :array_0

    const/16 v24, 0xc

    move/from16 v0, v24

    new-array v9, v0, [I

    fill-array-data v9, :array_1

    const/16 v24, 0xc

    move/from16 v0, v24

    new-array v0, v0, [I

    move-object/from16 v19, v0

    fill-array-data v19, :array_2

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getContext()Landroid/content/Context;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const/4 v5, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->hebrew:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const/4 v7, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-ge v7, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/incallui/widget/DialpadView;->mButtonIds:[I

    move-object/from16 v24, v0

    aget v24, v24, v7

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/phone/common/dialpad/DialpadKeyButton;

    if-eqz v5, :cond_0

    const v24, 0x7f10010c

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const v24, 0x7f10010d

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v24, 0x7f100291

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    :cond_0
    if-nez v8, :cond_7

    if-eqz v21, :cond_7

    const/16 v24, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    :goto_1
    aget v24, v15, v7

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v24, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setElegantTextHeight(Z)V

    :cond_2
    if-eqz v5, :cond_4

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    const-string v24, "\u2217"

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_3

    const-string v24, "*"

    move-object/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_3
    const-string v24, "support_folder_single_lcd"

    invoke-static/range {v24 .. v24}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_4

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v5, v0}, Lcom/android/phone/common/dialpad/DialpadKeyButton;->setFocusable(Z)V

    :cond_4
    if-eqz v12, :cond_5

    aget v24, v9, v7

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    if-eqz v21, :cond_6

    aget v24, v19, v7

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_7
    if-eqz v8, :cond_1

    if-eqz v12, :cond_1

    if-eqz v21, :cond_1

    if-eqz v7, :cond_1

    const/16 v24, 0xa

    move/from16 v0, v24

    if-eq v7, v0, :cond_1

    const/16 v24, 0xb

    move/from16 v0, v24

    if-eq v7, v0, :cond_1

    const/16 v24, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0509

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a009d

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a012f

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05b9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v11, v0

    invoke-static {}, Lcom/android/incallui/UiAdapter;->getInstance()Lcom/android/incallui/UiAdapter;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Lcom/android/incallui/UiAdapter;->isShowMultiWindowMode()Z

    move-result v24

    if-nez v24, :cond_8

    invoke-static {}, Lcom/android/incallui/util/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v24

    if-eqz v24, :cond_e

    :cond_8
    const/4 v14, 0x1

    :goto_2
    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v24

    if-eqz v24, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a02e2

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a023b

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0239

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_9
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05bb

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v23, v0

    invoke-static {}, Lcom/android/incallui/util/PhoneModeUtils;->isOneHandModeOn()Z

    move-result v24

    if-eqz v24, :cond_f

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05d5

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05d4

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05d3

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v11, v0

    :cond_a
    :goto_3
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eqz v17, :cond_c

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    if-nez v14, :cond_b

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v23

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    const/16 v24, 0x0

    const/16 v25, 0x2

    const/16 v26, 0x0

    const/16 v27, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-virtual {v12, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_b
    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_c
    invoke-static {}, Lcom/android/incallui/InCallUIFeature;->isTablet()Z

    move-result v24

    if-eqz v24, :cond_d

    if-eqz v12, :cond_d

    if-eqz v17, :cond_d

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    iput v6, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    move/from16 v4, v27

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v13}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a02f5

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v20, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v24

    move/from16 v2, v20

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_d
    invoke-static {}, Lcom/android/incallui/util/CallTypeUtils;->isVideoCall()Z

    move-result v24

    if-eqz v24, :cond_1

    invoke-virtual {v12}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v24

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v10, v0, v11, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v12, v10}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_1

    :cond_e
    const/4 v14, 0x0

    goto/16 :goto_2

    :cond_f
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05b9

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v11, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a0343

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/widget/DialpadView;->getResources()Landroid/content/res/Resources;

    move-result-object v24

    const v25, 0x7f0a05ba

    invoke-virtual/range {v24 .. v25}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v24

    move/from16 v0, v24

    float-to-int v6, v0

    goto/16 :goto_3

    :cond_10
    return-void

    :array_0
    .array-data 4
        0x7f0904a8
        0x7f0904ab
        0x7f0904ae
        0x7f0904b0
        0x7f0904b2
        0x7f0904b4
        0x7f0904b6
        0x7f0904b8
        0x7f0904ba
        0x7f0904bc
        0x7f0904c2
        0x7f0904bf
    .end array-data

    :array_1
    .array-data 4
        0x7f0904a7
        0x7f0904aa
        0x7f0904ad
        0x7f0904af
        0x7f0904b1
        0x7f0904b3
        0x7f0904b5
        0x7f0904b7
        0x7f0904b9
        0x7f0904bb
        0x7f0904c1
        0x7f0904be
    .end array-data

    :array_2
    .array-data 4
        0x7f0904a9
        0x7f0904ac
        0x7f0900f7
        0x7f0900f8
        0x7f0900f9
        0x7f0900fa
        0x7f0900fb
        0x7f0900fc
        0x7f0900fd
        0x7f0900fe
        0x7f0904c3
        0x7f0904c0
    .end array-data
.end method


# virtual methods
.method public getDeleteButton()Landroid/widget/ImageButton;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getDigits()Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    return-object v0
.end method

.method public getOverflowMenuButton()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/phone/common/dialpad/DialpadView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-direct {p0}, Lcom/android/incallui/widget/DialpadView;->setupKeypad()V

    const v0, 0x7f10011b

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDigits:Landroid/widget/EditText;

    const v0, 0x7f10011c

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mDelete:Landroid/widget/ImageButton;

    const v0, 0x7f10011a

    invoke-virtual {p0, v0}, Lcom/android/incallui/widget/DialpadView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/widget/DialpadView;->mOverflowMenuButton:Landroid/view/View;

    invoke-super {p0}, Lcom/android/phone/common/dialpad/DialpadView;->onFinishInflate()V

    return-void
.end method
