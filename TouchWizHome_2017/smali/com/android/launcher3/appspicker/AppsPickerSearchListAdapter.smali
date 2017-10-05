.class public Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;
.super Landroid/widget/BaseAdapter;
.source "AppsPickerSearchListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerSearchListAdapter"


# instance fields
.field private mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

.field private mContext:Landroid/content/Context;

.field private mHighlightTextColor:I

.field private mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

.field private mIsWhiteBg:Z

.field private mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

.field private mItemContainerClickListener:Landroid/view/View$OnClickListener;

.field private mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

.field private mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

.field private mMaxNumAppsPerRow:I

.field private mNumAppsPerRow:I

.field private mScreenMode:I

.field private mSearchText:Ljava/lang/String;

.field private mTextColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;Z)V
    .locals 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mScreenMode:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0008

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setContentColorAndBackground(Z)V

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-direct {v0}, Lcom/android/launcher3/appspicker/AppsPickerFocusListener;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$1;-><init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter$2;-><init>(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;)Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-object v0
.end method

.method private createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;
    .locals 9

    const/4 v8, -0x2

    iget v5, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    new-array v1, v5, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const/4 v2, 0x0

    :goto_0
    array-length v5, v1

    if-ge v2, v5, :cond_1

    const v5, 0x7f040011

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    new-instance v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;

    invoke-direct {v5}, Lcom/android/launcher3/appspicker/AppIconViewHolder;-><init>()V

    aput-object v5, v1, v2

    aget-object v5, v1, v2

    iput-object v3, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v6, v1, v2

    const v5, 0x7f110044

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    aget-object v6, v1, v2

    const v5, 0x7f110045

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    aget-object v6, v1, v2

    const v5, 0x7f110046

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/CheckBox;

    iput-object v5, v6, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v5, v1, v2

    iget v6, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mScreenMode:I

    iput v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    if-lez v2, :cond_0

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v5, 0x3f800000    # 1.0f

    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    aget-object v5, v1, v2

    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v6, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    aget-object v5, v1, v2

    iget-object v5, v5, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    invoke-virtual {p2, v5, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 v5, 0x0

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p2, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 8

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v4, Landroid/text/SpannableString;

    invoke-direct {v4, p2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->queryForIndia(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChinesePinyinSearching()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;-><init>(I)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlighterForHans:Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lcom/android/launcher3/util/locale/hanzi/PrefixHighlighter;->apply(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_1
    if-eqz v7, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V

    goto :goto_0
.end method

.method private queryForIndia(Landroid/widget/TextView;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v1, p2, v2}, Landroid/text/TextUtils;->semGetPrefixCharForSpan(Landroid/text/TextPaint;Ljava/lang/CharSequence;[C)[C

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method private setContentColorAndBackground(Z)V
    .locals 3

    if-eqz p1, :cond_0

    const v0, 0x7f0e0005

    :goto_0
    iget-object v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iput v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mTextColor:I

    return-void

    :cond_0
    const v0, 0x7f0e0006

    goto :goto_0
.end method

.method private setTextHighLight(Landroid/widget/TextView;ILjava/lang/String;Landroid/text/Spannable;I)V
    .locals 3

    add-int v0, p2, p5

    if-gt p2, v0, :cond_0

    const/4 v0, -0x1

    if-le p2, v0, :cond_0

    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mHighlightTextColor:I

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    add-int v1, p2, p5

    const/4 v2, 0x0

    invoke-interface {p4, v0, p2, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 2

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumFilteredApps()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    div-int/2addr v0, v1

    return v0
.end method

.method public getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;
    .locals 3

    const-string v0, "AppsPickerSearchListAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getItem position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    mul-int/2addr v1, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 4

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->getItem(I)Lcom/android/launcher3/common/base/item/IconInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-wide v2, v0, Lcom/android/launcher3/common/base/item/IconInfo;->id:J

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, -0x1

    goto :goto_0
.end method

.method public getSearchText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    if-nez p2, :cond_5

    const v8, 0x7f040014

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v8, 0x7f110040

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v6, p2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    :goto_0
    iget v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    mul-int v7, p1, v8

    const/4 v2, 0x0

    :goto_1
    iget v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mMaxNumAppsPerRow:I

    if-ge v2, v8, :cond_a

    add-int v0, v7, v2

    const/4 v4, 0x0

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_1

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v8}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget-object v4, v8, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    :cond_1
    if-eqz v4, :cond_7

    iget v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    if-ge v2, v8, :cond_7

    aget-object v8, v1, v2

    iput-object v4, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemContainerClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    aget-object v9, v1, v2

    iget-object v9, v9, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    aget-object v9, v1, v2

    iget-object v9, v9, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v8, v1, v2

    iput v2, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->colIndex:I

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    iget-object v9, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mKeyListener:Lcom/android/launcher3/appspicker/AppsPickerFocusListener;

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    aget-object v8, v1, v2

    iput p1, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->rowIndex:I

    if-lez v2, :cond_2

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v8, :cond_2

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v4, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    aget-object v9, v1, v2

    iget-object v9, v9, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-boolean v10, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mIsWhiteBg:Z

    invoke-static {v8, v9, v10}, Lcom/android/launcher3/util/WhiteBgManager;->changeTextColorForBg(Landroid/content/Context;Landroid/widget/TextView;Z)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v9, v4, Lcom/android/launcher3/common/base/item/IconInfo;->mIcon:Landroid/graphics/Bitmap;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v5, 0x0

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    invoke-interface {v8, v4}, Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;->isCheckedItem(Lcom/android/launcher3/common/base/item/IconInfo;)Z

    move-result v5

    :cond_3
    if-eqz v5, :cond_6

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v2

    iget-object v10, v10, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0900af

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_2
    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    invoke-virtual {v8, v5}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemCheckBoxClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_4

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    iget-object v9, v4, Lcom/android/launcher3/common/base/item/IconInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->displayHighlightedName(Landroid/widget/TextView;Ljava/lang/String;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_1

    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-object v1, v8

    check-cast v1, [Lcom/android/launcher3/appspicker/AppIconViewHolder;

    const/4 v8, 0x0

    aget-object v8, v1, v8

    iget v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->screenMode:I

    iget v9, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mScreenMode:I

    if-eq v8, v9, :cond_0

    const/4 p2, 0x0

    const v8, 0x7f040014

    const/4 v9, 0x0

    invoke-virtual {v3, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    const v8, 0x7f110040

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, v6, p2}, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->createHolders(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;Landroid/view/View;)[Lcom/android/launcher3/appspicker/AppIconViewHolder;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_6
    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v10, v1, v2

    iget-object v10, v10, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09007b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    :cond_7
    aget-object v8, v1, v2

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->iconInfo:Lcom/android/launcher3/common/base/item/IconInfo;

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setFocusable(Z)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v8, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    if-ge v2, v8, :cond_9

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x4

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-lez v2, :cond_8

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v8, :cond_8

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    :goto_4
    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->checkBox:Landroid/widget/CheckBox;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->title:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto/16 :goto_3

    :cond_9
    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->container:Landroid/view/ViewGroup;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-lez v2, :cond_8

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    if-eqz v8, :cond_8

    aget-object v8, v1, v2

    iget-object v8, v8, Lcom/android/launcher3/appspicker/AppIconViewHolder;->leftGap:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    :cond_a
    return-object p2
.end method

.method public notifyDataSetChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mAppsList:Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/appspicker/AppsPickerAlphabeticalAppsList;->getNumAppsPerRow()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mNumAppsPerRow:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mScreenMode:I

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public setToSelectedListener(Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/appspicker/AppsPickerSearchListAdapter;->mItemSelectedListener:Lcom/android/launcher3/appspicker/AppsPickerInfoInterface;

    return-void
.end method
