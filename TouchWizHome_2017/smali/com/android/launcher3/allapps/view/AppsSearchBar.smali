.class public Lcom/android/launcher3/allapps/view/AppsSearchBar;
.super Landroid/widget/LinearLayout;
.source "AppsSearchBar.java"

# interfaces
.implements Lcom/android/launcher3/allapps/view/AppsSearchWrapper;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;
    }
.end annotation


# static fields
.field private static final EXTRA_MODE_KEY:Ljava/lang/String; = "launch_mode"

.field private static final EXTRA_MODE_TEXT_INPUT:Ljava/lang/String; = "text_input"

.field private static final EXTRA_MODE_VOICE_INPUT:Ljava/lang/String; = "voice_input"

.field private static final SFINDER_CLS_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

.field private static final SFINDER_PKG_NAME:Ljava/lang/String; = "com.samsung.android.app.galaxyfinder"

.field public static final TAG:Ljava/lang/String; = "AppsSearchBar"

.field private static sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;


# instance fields
.field private mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

.field private mAppsScreenIDForSALog:Ljava/lang/String;

.field private mDivider:Landroid/view/View;

.field private mMagIcon:Landroid/widget/ImageView;

.field private mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

.field private mMoreButton:Landroid/widget/ImageButton;

.field private mMoreButtonContainer:Landroid/view/View;

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mSamsungMembersEnabled:Z

.field private mSearchBarContainerView:Landroid/view/View;

.field private mSearchView:Landroid/widget/SearchView;

.field mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

.field mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

.field private mSearchVoiceButton:Landroid/widget/ImageView;

.field private mSearchbarWrapper:Landroid/widget/LinearLayout;

.field mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private mWhiteWallpaper:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x0

    const v5, 0x7f0e003f

    const v4, 0x7f0e002f

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    sput-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v2

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e003e

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    iput v4, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v2

    const v1, 0x7f0e0031

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    invoke-direct {v1, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar$1;)V

    aput-object v1, v0, v3

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    iput v5, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0030

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    sget-object v0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v0, v0, v3

    const v1, 0x7f0e0032

    iput v1, v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$3;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$4;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$5;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;

    invoke-direct {v0, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$6;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0901a9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$100(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Landroid/widget/SearchView;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/launcher3/allapps/view/AppsSearchBar;Landroid/widget/PopupMenu;)Landroid/widget/PopupMenu;
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/launcher3/allapps/view/AppsSearchBar;)Lcom/android/launcher3/allapps/controller/AppsController;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-object v0
.end method

.method private setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-void
.end method

.method private setupAppsOptionsMenu(Landroid/view/Menu;)Z
    .locals 10

    const/4 v8, 0x0

    const/4 v9, 0x1

    const v7, 0x7f110120

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f110124

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v7, 0x7f110121

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    const v7, 0x7f110125

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    const v7, 0x7f110126

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v7, 0x7f110122

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    const v7, 0x7f110123

    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-boolean v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSamsungMembersEnabled:Z

    if-eqz v7, :cond_1

    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    invoke-interface {v3, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v7}, Lcom/android/launcher3/allapps/controller/AppsController;->getViewType()Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    move-result-object v7

    sget-object v8, Lcom/android/launcher3/allapps/controller/AppsController$ViewType;->CUSTOM_GRID:Lcom/android/launcher3/allapps/controller/AppsController$ViewType;

    if-ne v7, v8, :cond_0

    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    return v9

    :cond_1
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public changeColorAndBackground(Z)V
    .locals 12

    const/4 v11, 0x0

    const/4 v10, 0x0

    if-eqz p1, :cond_1

    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    const/4 v9, 0x1

    aget-object v6, v8, v9

    :goto_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->iconColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    new-instance v4, Landroid/graphics/LightingColorFilter;

    invoke-direct {v4, v5, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-boolean v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    if-ne v8, p1, :cond_2

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->textColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v7

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setTextColor(I)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v8}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v8, Lcom/android/launcher3/allapps/view/AppsSearchBar;->sStyles:[Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;

    aget-object v6, v8, v10

    goto :goto_0

    :cond_2
    iget-object v9, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    sget-boolean v8, Lcom/android/launcher3/Utilities;->sIsRtl:Z

    if-eqz v8, :cond_3

    const/high16 v8, 0x43340000    # 180.0f

    :goto_2
    invoke-virtual {v9, v8}, Landroid/view/View;->setRotation(F)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v8}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v4}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->backgroundColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    new-instance v1, Landroid/graphics/LightingColorFilter;

    invoke-direct {v1, v0, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v8}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v1}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget v9, v6, Lcom/android/launcher3/allapps/view/AppsSearchBar$Style;->dividerColorId:I

    invoke-virtual {v8, v9, v11}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    new-instance v3, Landroid/graphics/LightingColorFilter;

    invoke-direct {v3, v2, v10}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iget-object v8, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-direct {p0, v8, v3}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setColorFilterToDrawable(Landroid/graphics/drawable/Drawable;Landroid/graphics/ColorFilter;)V

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mWhiteWallpaper:Z

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    goto :goto_2
.end method

.method public getAppsSearchBarView()Landroid/view/View;
    .locals 1

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContainerView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getContainerView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public getSearchBarContainerView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    return-object v0
.end method

.method public hidePopupMenu()V
    .locals 1

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    :cond_0
    return-void
.end method

.method public launchSfinder()Z
    .locals 8

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "com.samsung.android.app.galaxyfinder"

    invoke-static {v1, v2}, Lcom/android/launcher3/Utilities;->isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v6

    :cond_0
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.android.app.galaxyfinder"

    const-string v3, "com.samsung.android.app.galaxyfinder.GalaxyFinderActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v1, "launch_mode"

    const-string v2, "text_input"

    invoke-virtual {v7, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    invoke-static {}, Lcom/android/launcher3/util/logging/GSIMLogging;->getInstance()Lcom/android/launcher3/util/logging/GSIMLogging;

    move-result-object v1

    const-string v2, "APSC"

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/util/logging/GSIMLogging;->insertLogging(Ljava/lang/String;Ljava/lang/String;JZ)V

    const/4 v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AppsSearchBar"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start S Finder.  intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onConfigurationChangedIfNeeded()V
    .locals 8

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0084

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    invoke-virtual {v0, v7, v4, v7, v7}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a00a6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0086

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0a0085

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {v5, v2, v3, v2, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 13

    const v12, 0x7f1100c3

    const v11, 0x7f110059

    const/4 v10, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v5, 0x7f110054

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    const v5, 0x7f110055

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/SearchView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->onActionViewExpanded()V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setBackgroundColor(I)V

    const v5, 0x7f1100f7

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    const v5, 0x7f110056

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/Launcher;

    invoke-virtual {v5}, Lcom/android/launcher3/Launcher;->hasVoiceSearch()Z

    move-result v5

    if-eqz v5, :cond_3

    move v5, v6

    :goto_0
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v6}, Landroid/widget/SearchView;->setInputType(I)V

    invoke-static {}, Lcom/android/launcher3/LauncherFeature;->isTablet()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090019

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    :cond_0
    const v5, 0x7f110057

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mDivider:Landroid/view/View;

    const v5, 0x7f110053

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v8, "com.samsung.android.app.galaxyfinder"

    invoke-static {v5, v8}, Lcom/android/launcher3/Utilities;->isPackageExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const v5, 0x7f110058

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    const v5, 0x7f1100c2

    invoke-virtual {p0, v5}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0, v12}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v5, "android:id/search_src_text"

    invoke-virtual {v0, v5, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v1}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setLongClickable(Z)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v2, v5}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    invoke-static {}, Lcom/android/launcher3/util/TestHelper;->isRoboUnitTest()Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->semSetDirectPenInputEnabled(Z)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5}, Landroid/widget/SearchView;->semGetAutoCompleteView()Landroid/widget/AutoCompleteTextView;

    move-result-object v5

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchViewTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v5, v7}, Landroid/widget/AutoCompleteTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_2
    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchVoiceButton:Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mVoiceBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    new-instance v7, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;

    invoke-direct {v7, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$1;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v7, "android:id/search_mag_icon"

    invoke-virtual {v5, v7, v10, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v5, v3}, Landroid/widget/SearchView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMagIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, v6}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->changeColorAndBackground(Z)V

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/launcher3/Utilities;->isSamsungMembersEnabled(Landroid/content/Context;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSamsungMembersEnabled:Z

    return-void

    :cond_3
    move v5, v7

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0, v11}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {p0, v12}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageButton;

    iput-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchbarWrapper:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButtonContainer:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMoreButton:Landroid/widget/ImageButton;

    invoke-virtual {v5}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1
.end method

.method public resume()V
    .locals 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0}, Landroid/widget/SearchView;->clearFocus()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method public setController(Lcom/android/launcher3/allapps/controller/AppsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    return-void
.end method

.method public showPopupMenu()V
    .locals 4

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->initBounceAnimation()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsController:Lcom/android/launcher3/allapps/controller/AppsController;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/controller/AppsController;->isAppsLoading()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    :cond_2
    new-instance v0, Landroid/widget/PopupMenu;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mSearchBarContainerView:Landroid/view/View;

    const v3, 0x800005

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    iput-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f120000

    iget-object v2, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mMenuItemClickListener:Landroid/widget/PopupMenu$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->setupAppsOptionsMenu(Landroid/view/Menu;)Z

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    new-instance v1, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;

    invoke-direct {v1, p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar$2;-><init>(Lcom/android/launcher3/allapps/view/AppsSearchBar;)V

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->show()V

    iget-object v0, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/launcher3/util/logging/SALogging;->getInstance()Lcom/android/launcher3/util/logging/SALogging;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/allapps/view/AppsSearchBar;->mAppsScreenIDForSALog:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher3/util/logging/SALogging;->insertEventLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public stageExit(Lcom/android/launcher3/common/stage/StageEntry;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/view/AppsSearchBar;->hidePopupMenu()V

    return-void
.end method

.method public switchInternalState(Lcom/android/launcher3/allapps/AppsTransitionAnimation;Lcom/android/launcher3/common/stage/StageEntry;)Landroid/animation/Animator;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public updateRecentApp(Lcom/android/launcher3/common/base/item/IconInfo;)V
    .locals 0

    return-void
.end method
