.class public Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;
.super Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
.source "AppsPickerSearchBarController.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "AppsPickerSearchBarController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSearchBarEditView:Landroid/widget/SearchView;

.field private mSearchEditText:Landroid/widget/TextView;

.field private mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

.field private mSearchView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchEditText:Landroid/widget/TextView;

    return-object v0
.end method

.method private setSearchViewContentColor(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V
    .locals 6

    if-eqz p1, :cond_3

    const v3, 0x7f0e0005

    :goto_0
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v4}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02010d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v4, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v4, v0}, Landroid/widget/SearchView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/LightingColorFilter;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_2
    return-void

    :cond_3
    const v3, 0x7f0e0006

    goto :goto_0
.end method


# virtual methods
.method public focusSearchField()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    return-void
.end method

.method public getSearchBarEditView()Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 11

    const/4 v10, 0x0

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v6, 0x7f040012

    invoke-virtual {v0, v6, p1, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchView:Landroid/view/View;

    const v7, 0x7f110048

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setImeOptions(I)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    const/16 v7, 0x2001

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setInputType(I)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->clearFocus()V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    const-string v7, "nm"

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v7}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout;

    invoke-virtual {v6, v10}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android:id/search_voice_btn"

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, v5}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    new-instance v6, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$1;

    invoke-direct {v6, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$1;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V

    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchView:Landroid/view/View;

    new-instance v7, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$2;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android:id/search_src_text"

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchView:Landroid/view/View;

    invoke-virtual {v6, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchEditText:Landroid/widget/TextView;

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;

    invoke-direct {v7, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$3;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const-string v7, "android:id/search_button"

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-static {}, Lcom/android/launcher3/util/WhiteBgManager;->isWhiteBg()Z

    move-result v6

    invoke-direct {p0, v6, v4, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->setSearchViewContentColor(ZLandroid/widget/ImageView;Landroid/widget/ImageView;)V

    iget-object v6, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchView:Landroid/view/View;

    return-object v6
.end method

.method public isSearchFieldFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    return v0
.end method

.method protected onInitialize()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-interface {v0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v0, p1, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onVoiceSearch(Ljava/lang/String;)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    invoke-virtual {p0, p1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->onQueryTextChange(Ljava/lang/String;)Z

    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;

    invoke-direct {v1, p0}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController$4;-><init>(Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public reset()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchManager:Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchAlgorithm;->cancel(Z)V

    iget-object v0, p0, Lcom/android/launcher3/appspicker/controller/AppsPickerSearchBarController;->mSearchBarEditView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public shouldShowPredictionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
