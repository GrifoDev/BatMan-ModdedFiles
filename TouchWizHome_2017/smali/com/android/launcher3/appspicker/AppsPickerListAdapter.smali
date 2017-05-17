.class public Lcom/android/launcher3/appspicker/AppsPickerListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsPickerListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerListAdapter"


# instance fields
.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mContext:Landroid/content/Context;

.field private mIsWhiteBg:Z

.field private mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mItemContainerClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mMaxNumAppsPerRow:I

.field private mNumAppsPerRow:I

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    iput-boolean p3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->setContentColorAndBackground(Z)V

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$1;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter$2;-><init>(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/AppsPickerListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-object v0
.end method

.method private setContentColorAndBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0d0003

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    return-void

    :cond_0
    const v0, 0x7f0d0004

    goto :goto_0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 7

    const/4 v6, 0x0

    const-string v3, "AppsPickerListAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getItem position : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3, p1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v1, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    iget-object v3, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v3}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v3, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAppsMapSize()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :goto_0
    return-wide v2

    :cond_1
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 25

    const/4 v5, 0x0

    if-nez p2, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    invoke-static/range {v21 .. v21}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    const v21, 0x7f03000c

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v21, 0x7f0f002a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    move/from16 v21, v0

    move/from16 v0, v21

    new-array v6, v0, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const/4 v7, 0x0

    :goto_0
    array-length v0, v6

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_1

    const v21, 0x7f03000e

    const/16 v22, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/view/ViewGroup;

    new-instance v21, Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-direct/range {v21 .. v21}, Lcom/android/launcher3/appspicker/AppIconViewHolder;-><init>()V

    aput-object v21, v6, v7

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iput-object v13, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v22, v6, v7

    const v21, 0x7f0f002e

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/ImageView;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v22, v6, v7

    const v21, 0x7f0f002f

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    aget-object v22, v6, v7

    const v21, 0x7f0f0030

    move/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/CheckBox;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    iput-object v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    if-lez v7, :cond_0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v4, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v21, 0x3f800000    # 1.0f

    move/from16 v0, v21

    iput v0, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    aget-object v21, v6, v7

    new-instance v22, Landroid/view/View;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v23, v0

    invoke-direct/range {v22 .. v23}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v12, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v14, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v21, -0x2

    const/16 v22, -0x2

    move/from16 v0, v21

    move/from16 v1, v22

    invoke-direct {v14, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v21, 0x0

    move/from16 v0, v21

    iput v0, v14, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {v12, v13, v14}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    :cond_1
    const v21, 0x7f0f000a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_1
    const-string v20, ""

    const v21, 0x7f0f0009

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    sget-boolean v21, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-nez v21, :cond_4

    const/16 v21, 0x14

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    :goto_2
    const v21, 0x7f0f000b

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/FrameLayout;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    move/from16 v21, v0

    move-object/from16 v0, v17

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getRowItems(I)Ljava/util/List;

    move-result-object v15

    if-nez v15, :cond_5

    const-string v21, "AppsPickerListAdapter"

    const-string v22, "items is null"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object p2

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object/from16 v6, v21

    check-cast v6, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const v21, 0x7f0f000a

    move-object/from16 v0, p2

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    goto :goto_1

    :cond_4
    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x14

    const/16 v24, 0x0

    move/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mMaxNumAppsPerRow:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_2

    const/4 v10, 0x0

    const/16 v18, 0x0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v7, v0, :cond_6

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    if-eqz v21, :cond_6

    const/16 v21, 0x0

    move/from16 v0, v21

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    invoke-interface {v15, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v21

    iget-object v10, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_6
    if-eqz v10, :cond_b

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_b

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iput-object v10, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    aget-object v22, v6, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    aget-object v22, v6, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iput v7, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    aget-object v21, v6, v7

    move/from16 v0, p1

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    if-lez v7, :cond_7

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_7

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    :cond_7
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    aget-object v22, v6, v7

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mIsWhiteBg:Z

    move/from16 v23, v0

    const/16 v24, 0x1

    invoke-static/range {v21 .. v24}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;ZZ)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    iget-object v0, v10, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-object/from16 v21, v0

    if-eqz v21, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-interface {v0, v10}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v11

    :cond_8
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_4
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_9

    if-eqz v18, :cond_9

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v20, v0

    :cond_9
    if-eqz v18, :cond_a

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-lt v0, v1, :cond_a

    move-object/from16 v0, v18

    iget v8, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->position:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v21

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    move-object/from16 v21, v0

    if-eqz v21, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v21

    add-int/lit8 v22, v8, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->sectionName:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_a

    const/16 v21, 0x8

    move/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_a
    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mTextColor:I

    move/from16 v21, v0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_3

    :cond_b
    aget-object v21, v6, v7

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mNumAppsPerRow:I

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v7, v0, :cond_d

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x4

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    :goto_5
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_4

    :cond_d
    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-lez v7, :cond_c

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    if-eqz v21, :cond_c

    aget-object v21, v6, v7

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x8

    invoke-virtual/range {v21 .. v22}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method public setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-void
.end method
