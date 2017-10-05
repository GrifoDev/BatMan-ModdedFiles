.class public final Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;
.super Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;
.source "DefaultAppSearchController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;
    }
.end annotation


# static fields
.field private static final ALLOW_SINGLE_APP_LAUNCH:Z = true

.field public static final APPS_QUERY_TIME:I = 0x7d0

.field private static final FADE_IN_DURATION:I = 0xaf

.field private static final FADE_OUT_DURATION:I = 0x64

.field public static final KEY_TO_STATE:Ljava/lang/String; = "KEY_TO_STATE"

.field private static final SEARCH_TRANSLATION_X_DP:I = 0x12

.field private static sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

.field private mCancelBtn:Landroid/widget/ImageView;

.field private mContainerView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

.field private final mContext:Landroid/content/Context;

.field private mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSearchBarContainerView:Landroid/view/View;

.field private mSearchBarEditView:Landroid/widget/SearchView;

.field private mSearchBarEditViewBg:Landroid/view/View;

.field private mSearchBtn:Landroid/widget/ImageView;

.field private mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

.field mSearchText:Ljava/lang/String;

.field private mSearchView:Landroid/view/View;

.field private mVoiceBtn:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0e003f

    const v4, 0x7f0e002f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    sput-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    new-instance v1, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;)V

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e003e

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->textColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->iconColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->backgroundColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e0031

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->dividerColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    new-instance v1, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;)V

    aput-object v1, v0, v3

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->textColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->iconColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0030

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->backgroundColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->sStyles:[Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0032

    iput v1, v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$Style;->dividerColorId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/launcher3/allapps/view/AppsSearchContainerView;Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController;-><init>()V

    new-instance v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$1;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mFocusRecyclerViewRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$7;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContainerView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    iput-object p3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    iput-object p4, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/view/AppsSearchContainerView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContainerView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method private hideSearchField(ZLjava/lang/Runnable;)V
    .locals 0

    return-void
.end method

.method private setupAppsOptionsMenu(Landroid/view/Menu;)Z
    .locals 11

    const/4 v9, 0x0

    const/4 v10, 0x1

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->getState()I

    move-result v5

    const v8, 0x7f110120

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    const v8, 0x7f110124

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v8, 0x7f110121

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v8, 0x7f110125

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v8, 0x7f110126

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v8, 0x7f110122

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v8, 0x7f110123

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    if-nez v5, :cond_1

    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v3, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v8

    sget-object v9, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v8, v9, :cond_0

    invoke-interface {v6, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    :goto_0
    return v10

    :cond_1
    const/4 v8, 0x3

    if-ne v5, v8, :cond_0

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isVZWModel()Z

    move-result v8

    if-nez v8, :cond_2

    invoke-interface {v4, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v8, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContainerView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v8}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getRecentAppListSize()I

    move-result v8

    if-lez v8, :cond_3

    invoke-interface {v0, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    :cond_3
    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method private showSearchField()V
    .locals 4

    const/4 v3, 0x0

    const/high16 v1, 0x41900000    # 18.0f

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->pxFromDp(FLandroid/util/DisplayMetrics;)I

    move-result v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    int-to-float v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;

    invoke-direct {v2, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$9;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v2}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x1e

    invoke-static {v2, v3}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->cancel(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-interface {v1}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->cancel(Z)V

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public changeSearchBarColor()V
    .locals 11

    const/4 v10, 0x0

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v8, 0x0

    const v1, 0x7f0e000a

    const v9, 0x7f0200f8

    invoke-virtual {v4, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    new-instance v2, Landroid/graphics/LightingColorFilter;

    const/4 v9, 0x0

    invoke-direct {v2, v0, v9}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mVoiceBtn:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBtn:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCancelBtn:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v9

    if-nez v9, :cond_0

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v9}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v9

    invoke-virtual {v9, v0}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    :cond_0
    const-string v9, "android:id/search_src_text"

    invoke-virtual {v4, v9, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    iget-object v9, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v9, v7}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/AutoCompleteTextView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v0}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    :cond_1
    return-void
.end method

.method public focusSearchField()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->requestFocus()Z

    invoke-direct {p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->showSearchField()V

    return-void
.end method

.method public getSearchBarEditView()Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    return-object v0
.end method

.method public getView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    const/4 v9, 0x0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v2, 0x0

    const v6, 0x7f040017

    invoke-virtual {v3, v6, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    invoke-virtual {v6, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    const v7, 0x7f110053

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v7, 0x7f110055

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/SearchView;

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewCollapsed()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setImeOptions(I)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    const/16 v7, 0x2001

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setInputType(I)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->onActionViewExpanded()V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v6

    if-nez v6, :cond_0

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    const-string v7, "nm"

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setPrivateImeOptions(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v7}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v7

    const/16 v8, 0x1e

    invoke-static {v7, v8}, Lcom/android/launcher3/Utilities;->getEditTextMaxLengthFilter(Landroid/content/Context;I)[Landroid/text/InputFilter;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, p0}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->getContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/Launcher;

    iget-object v7, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, v7}, Lcom/android/launcher3/Launcher;->enableVoiceSearch(Landroid/widget/SearchView;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v7, 0x7f110054

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditViewBg:Landroid/view/View;

    const-string v6, ""

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchText:Ljava/lang/String;

    :try_start_0
    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mVoiceButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mVoiceBtn:Landroid/widget/ImageView;

    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mSearchButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    const/4 v6, 0x1

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v4, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBtn:Landroid/widget/ImageView;

    const-class v6, Landroid/widget/SearchView;

    const-string v7, "mCloseButton"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCancelBtn:Landroid/widget/ImageView;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    const v7, 0x7f1100c2

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageButton;

    iput-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$2;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$2;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->changeSearchBarColor()V

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarContainerView:Landroid/view/View;

    new-instance v7, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$3;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$4;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_1
    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v6

    if-nez v6, :cond_2

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v6}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v6

    new-instance v7, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$5;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$5;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v6, v7}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    :cond_2
    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchView:Landroid/view/View;

    return-object v6

    :catch_0
    move-exception v1

    const-string v6, "SearchView"

    invoke-virtual {v1}, Ljava/lang/NoSuchFieldException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "SearchView"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public hidePopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    :cond_0
    return-void
.end method

.method public isSearchFieldFocused()Z
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchBarEditView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->isFocused()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x3

    if-eq p2, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getNumFilteredApps()I

    move-result v5

    if-gt v5, v4, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v5}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;

    iget v5, v1, Lcom/android/launcher3/allapps/AlphabeticalAppsList$AdapterItem;->viewType:I

    sparse-switch v5, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mAppsRecyclerView:Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;

    invoke-virtual {v5, v0}, Lcom/android/launcher3/allapps/view/AppsSearchRecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->performClick()Z

    iget-object v5, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v6, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContainerView:Lcom/android/launcher3/allapps/view/AppsSearchContainerView;

    invoke-virtual {v6}, Lcom/android/launcher3/allapps/view/AppsSearchContainerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v5, v6, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    move v3, v4

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onInitialize()V
    .locals 2

    new-instance v0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getApps()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->cancel(Z)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-interface {v3}, Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;->clearSearchResult()V

    :goto_0
    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;

    invoke-direct {v3, p0, v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$8;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;Ljava/lang/String;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return v6

    :cond_1
    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    invoke-virtual {v3, v6}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->cancel(Z)V

    iget-object v3, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    iget-object v4, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v3, v2, v4}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->doSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->cancel(Z)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->supportGalaxyAppsSearch()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchManager:Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mCb:Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;

    invoke-virtual {v1, v0, v2}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchAlgorithm;->doGalaxyAppsSearch(Ljava/lang/String;Lcom/android/launcher3/allapps/controller/AllAppsSearchBarController$Callbacks;)V

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setSearchText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method public shouldShowPredictionBar()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public showPopupMenu()Z
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    :cond_0
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mMoreButton:Landroid/widget/ImageButton;

    invoke-direct {v0, v1, v2}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    iget-object v2, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->setupAppsOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$6;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController$6;-><init>(Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/controller/DefaultAppSearchController;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    const/4 v0, 0x1

    return v0
.end method
