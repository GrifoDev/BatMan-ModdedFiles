.class public Lcom/android/launcher3/appspicker/view/AppsPickerContentView;
.super Landroid/widget/FrameLayout;
.source "AppsPickerContentView.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllListView:Landroid/widget/ListView;

.field private mAllListViewContainer:Landroid/view/ViewGroup;

.field private mBgColor:I

.field private final mCollator:Ljava/text/Collator;

.field private mDefaultSearchViewText:Landroid/widget/TextView;

.field private mEmptyView:Landroid/widget/TextView;

.field private mHeader:Landroid/view/View;

.field private mIndexCharactersPosition:[I

.field private mIsAppsPickerViewTop:Z

.field private mIsParentHome:Z

.field private mNeedToReset:Z

.field private mSearchListView:Landroid/widget/ListView;

.field private mSearchListViewContainer:Landroid/view/ViewGroup;

.field private mSearchResultText:Landroid/widget/TextView;

.field private mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mCollator:Ljava/text/Collator;

    iput-boolean v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsParentHome:Z

    iput-boolean v1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsAppsPickerViewTop:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIndexCharactersPosition:[I

    return-object v0
.end method

.method private initAllListView(Landroid/view/ViewGroup;)V
    .locals 2

    const/4 v1, 0x0

    const v0, 0x7f0f0039

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListView:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setupIndexScrollView(Z)V

    :cond_0
    return-void
.end method

.method private initSearchListView(Landroid/view/ViewGroup;)V
    .locals 9

    const/4 v8, 0x0

    const v4, 0x7f0f0019

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v1}, Landroid/view/View;->getPaddingStart()I

    move-result v6

    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v7

    invoke-virtual {v1, v4, v5, v6, v7}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    const v4, 0x7f0f003b

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    const v4, 0x7f080015

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mDefaultSearchViewText:Landroid/widget/TextView;

    const v4, 0x7f0f003c

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mHeader:Landroid/view/View;

    const v4, 0x7f0f0045

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x7f0f003d

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iput-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    const v4, 0x7f0f0043

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ListView;

    iput-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListView:Landroid/widget/ListView;

    const v4, 0x7f0f0044

    invoke-virtual {p1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v4, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$1;

    invoke-direct {v4, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$1;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v4, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$2;

    invoke-direct {v4, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$2;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListView:Landroid/widget/ListView;

    invoke-virtual {v4, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    return-void
.end method

.method private setupIndexScrollView(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListViewContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_3

    const v2, 0x7f02006f

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v2, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarPressedTextColor(I)V

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    iget v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarTextColor(I)V

    sget-boolean v2, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarGravity(I)V

    :goto_1
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    new-instance v3, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;

    invoke-direct {v3, p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView$3;-><init>(Lcom/android/launcher3/appspicker/view/AppsPickerContentView;)V

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setOnIndexBarEventListener(Lcom/samsung/android/widget/SemIndexScrollView$OnIndexBarEventListener;)V

    :cond_2
    return-void

    :cond_3
    const v2, 0x7f020070

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexBarGravity(I)V

    goto :goto_1
.end method


# virtual methods
.method public getListViewForAllApps()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public getListViewForSearchApps()Landroid/widget/ListView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListView:Landroid/widget/ListView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0f0037

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->initAllListView(Landroid/view/ViewGroup;)V

    const v0, 0x7f0f0038

    invoke-virtual {p0, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListViewContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListViewContainer:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->initSearchListView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/launcher3/util/SIPHelper;->hideInputMethod(Landroid/view/View;Z)V

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method setAppsPickerViewTop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsAppsPickerViewTop:Z

    return-void
.end method

.method public setContentBgColor(IZ)V
    .locals 1

    iput p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->setupIndexScrollView(Z)V

    :cond_0
    return-void
.end method

.method setParentMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsParentHome:Z

    return-void
.end method

.method public setScrollIndexer(Ljava/util/List;Ljava/lang/CharSequence;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    if-eqz v10, :cond_7

    if-eqz p0, :cond_1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getHeight()I

    move-result v10

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    div-int v2, v10, v11

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09001a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    if-le v2, v4, :cond_0

    sub-int v10, v2, v4

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    mul-int v7, v10, v11

    :cond_0
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v12, v7}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexScrollMargin(II)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/locale/LocaleUtils;->isChineseHK()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a000a

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    const-string v10, "&"

    aput-object v10, v8, v12

    array-length v10, v8

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIndexCharactersPosition:[I

    const/4 v3, -0x1

    const/4 v6, 0x1

    :goto_0
    array-length v10, v8

    if-ge v6, v10, :cond_6

    const/4 v9, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_3

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mCollator:Ljava/text/Collator;

    aget-object v11, v8, v6

    const-string v12, "a"

    invoke-virtual {v10, v11, v12}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_4

    iget-object v11, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v12, "a"

    invoke-virtual {v11, v10, v12}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_4

    :try_start_0
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aget-object v11, v8, v6

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    sub-int v3, v10, v11

    :goto_2
    if-gez v3, :cond_2

    if-gez v3, :cond_5

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    if-ne v9, v10, :cond_5

    :cond_2
    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIndexCharactersPosition:[I

    aput v9, v10, v6

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v5

    sget-object v11, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NumberFormatException : "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget-object v12, v8, v6

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, " - "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aget-object v12, v8, v6

    invoke-virtual {v11, v10, v12}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_4
    iget-object v11, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mCollator:Ljava/text/Collator;

    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    aget-object v12, v8, v6

    invoke-virtual {v11, v10, v12}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_2

    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f09015b

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v0, v10

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v8, v0}, Lcom/samsung/android/widget/SemIndexScrollView;->setSimpleIndexScroll([Ljava/lang/String;I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    :goto_3
    return-void

    :catch_1
    move-exception v5

    sget-object v10, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->TAG:Ljava/lang/String;

    const-string v11, "IllegalStateException."

    invoke-static {v10, v11, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    new-instance v1, Lcom/samsung/android/widget/SemArrayIndexer;

    invoke-direct {v1, p1, p2}, Lcom/samsung/android/widget/SemArrayIndexer;-><init>(Ljava/util/List;Ljava/lang/CharSequence;)V

    iget-object v10, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mTwIndexScrollView:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-virtual {v10, v1}, Lcom/samsung/android/widget/SemIndexScrollView;->setIndexer(Lcom/samsung/android/widget/SemAbstractIndexer;)V

    goto :goto_3
.end method

.method public setSearchResultText(I)V
    .locals 8

    const v7, 0x7f080015

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    if-eqz v3, :cond_1

    if-ltz p1, :cond_2

    iget-boolean v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mNeedToReset:Z

    if-eqz v3, :cond_0

    iput-boolean v6, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mNeedToReset:Z

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mDefaultSearchViewText:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x11

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :cond_0
    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mDefaultSearchViewText:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mHeader:Landroid/view/View;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mBgColor:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mDefaultSearchViewText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchResultText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher3/appspicker/view/AppsPickerMsgHelper;->getBody()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v3, 0x31

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput-boolean v5, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mNeedToReset:Z

    goto :goto_0
.end method

.method public showAllListView()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->TAG:Ljava/lang/String;

    const-string v1, "showAllListView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsAppsPickerViewTop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsParentHome:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method

.method public showSearchListView()V
    .locals 2

    sget-object v0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->TAG:Ljava/lang/String;

    const-string v1, "showSearchListView()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mSearchListViewContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mAllListViewContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsAppsPickerViewTop:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/launcher3/appspicker/view/AppsPickerContentView;->mIsParentHome:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstance()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getTopViewChangedMessageHandler()Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/launcher3/proxy/LauncherTopViewChangedMessageHandler;->sendMessage(I)V

    goto :goto_0
.end method
